require 'init'

config = {:site_title => "Togo Example App"}

# Uncomment to add Authentication
#config.merge!({:auth_model => User, :sessions => true})

Togo::Admin.configure(config)
