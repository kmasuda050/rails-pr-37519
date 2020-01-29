require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)

configs = YAML.load(File.read('./config/database.yml'))

ActiveRecord::Base.configurations = configs

class User < ActiveRecord::Base
  establish_connection :development
end

User.create # => success

user = User.new
User.insert_all [user.attributes] # => failure
