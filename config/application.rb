require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module VcTrackerApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    ['company_mutations', 'venture_capitalist_mutations', 'notable_investment_mutations', 'note_mutations'].each do |folder|
      config.autoload_paths << Rails.root.join("app/graphql/mutations/#{folder}")
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
