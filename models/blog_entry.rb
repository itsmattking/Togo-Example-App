class BlogEntry

  include DataMapper::Resource
  include Togo::DataMapper::Model

  property :id, Serial
  property :title, String, :length => 255
  property :date, DateTime, :default => DateTime.now
  property :body, Text
  property :tags, String, :length => 255
  property :enabled, Boolean, :default => false
  property :category_id, Integer

  belongs_to :category
  has n, :comments

  list_properties :title, :date, :category_name
  form_properties :title, :date, :body, :tags, :category, :enabled

  configure_property :title, :label => "Title (keep it short and sweet)"
  configure_property :body, :template => File.join(SITE_ROOT, 'views', 'body.erb')
  configure_property :category_list, :label => 'Categories'

  def category_name
    category.name rescue '-'
  end

end
