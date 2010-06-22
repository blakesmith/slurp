require File.join(File.dirname(__FILE__), 'helper')

DB.create_table :links do
  primary_key :id
  DateTime :date_added
  String :url
  String :user
  String :message
  String :title
end

