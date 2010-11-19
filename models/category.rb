class Category

  include DataMapper::Resource
  include Togo::DataMapper::Model
  
  property :id, Serial
  property :name, String, :length => 255
  
  has n, :blog_entries

  list_properties :name, :blog_entry_count

  def blog_entry_count
    blog_entries.count
  end

end
