# frozen_string_literal: true

require 'factory_bot_rails'
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
RSpec.configure do |config|
  config.after do
    FactoryBot.rewind_sequences
  end
end
