desc "creates the schema"
task :create_schema do
  require File.join(File.dirname(__FILE__), 'db/create_schema')
end

desc "drop the table"
task :drop_table do
  require File.join(File.dirname(__FILE__), 'db/drop_table')
end

desc "recreate the table"
task :recreate_table => [:drop_table, :create_schema]
