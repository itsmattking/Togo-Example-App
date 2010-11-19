SITE_ROOT = File.dirname(File.expand_path(__FILE__))
%w(dm-core dm-migrations togo).each{|l| require l}
Dir.glob(File.join(SITE_ROOT,'models','*.rb')).each{|f| require f}
DataMapper::Logger.new(STDOUT, :debug)
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/example.db")
DataMapper.auto_upgrade!
