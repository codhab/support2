module Support
  class Engine < ::Rails::Engine
    isolate_namespace Support

    config.before_initialize do
      config.i18n.load_path += Dir["#{config.root}/config/locales/**/*.yml"]
    end

    initializer :append_migrations do |app|
      config.paths['db/migrate'].expanded.each do |expanded_path|
        app.config.paths['db/migrate'] << expanded_path
        ActiveRecord::Migrator.migrations_paths << expanded_path
      end

      config.i18n.default_locale = :'pt-BR'
    end
  end
end
