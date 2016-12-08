require 'rails/generators/base'
require 'rails/generators/migration'
require 'rails/generators/active_record'
require 'generators/next_migration_version'


class TaskAtTickGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  extend NextMigrationVersion

  source_paths << File.join(File.dirname(__FILE__), 'templates')

  def create_migration_file
    if self.class.migration_exists?('db/migrate', 'create_tasks')
      say_status('skipped', 'Migration CreateTasks already exists')
    else
      migration_template 'create_tasks.rb', 'db/migrate/create_tasks.rb'
    end
  end

  def self.next_migration_number(dirname)
    ActiveRecord::Generators::Base.next_migration_number dirname
  end
end