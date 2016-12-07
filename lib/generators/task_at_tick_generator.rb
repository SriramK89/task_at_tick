module TaskAtTick
  class InstallGenerator < Rails::Generators::Base
    def create_initializer_file
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      def copy_migrations
        copy_migration 'create_tasks'
      end

      protected
        def copy_migration file_name
          if self.class.migration_exists?("db/migrate", "#{file_name}")
            say_status("skipped", "Migration #{file_name}.rb already exists")
          else
            migration_template "migrations/#{file_name}.rb", "db/migrate/#{file_name}.rb"
          end
        end
      end
    end
  end
end