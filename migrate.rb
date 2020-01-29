require 'active_record'

configs = YAML.load(File.read('./config/database.yml'))

ActiveRecord::Tasks::DatabaseTasks.create(configs['development'])

ActiveRecord::Base.configurations = configs

ActiveRecord::Base.establish_connection(:development)

class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    unless ActiveRecord::Base.connection.table_exists?(:users)
      create_table :users
    end
  end
end

CreateUserTable.migrate(:up)
