require 'sequel'
Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://my.db')

Dir.glob(File.join(File.dirname(__FILE__), 'models/*.rb')).each {|r| require r }
