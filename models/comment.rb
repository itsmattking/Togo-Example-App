class Comment

  include DataMapper::Resource
  include Togo::DataMapper::Model
  
  property :id, Serial
  property :name, String, :length => 255
  property :body, String, :length => 255
  property :email, String, :length => 255
  property :blog_entry_id, Integer

  belongs_to :blog_entry

  list_properties :name, :blog_entry_count

  def blog_entry_count
    blog_entries.count
  end

end
