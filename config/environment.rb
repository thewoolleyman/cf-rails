dir = File.dirname(__FILE__)

require File.join(File.dirname(__FILE__), 'boot')
POST_LOAD_BLOCKS = [] unless Object.const_defined?("POST_LOAD_BLOCKS")

Rails::Initializer.run do |config|
  config.frameworks -= [:action_web_service]

  config.active_record.pluralize_table_names = false
  config.active_record.default_timezone = :utc
  config.action_controller.perform_caching = false
  config.active_record.observers = []
  config.time_zone = "UTC"
  config.action_controller.session = { :key => "t_session", :secret => "so secret even I don't know it"}
  config.action_controller.ip_spoofing_check = false

  config.after_initialize do
    ActionController::Base.session_options[:secure] = true
  end
end

POST_LOAD_BLOCKS.each { |proc| proc.call }
