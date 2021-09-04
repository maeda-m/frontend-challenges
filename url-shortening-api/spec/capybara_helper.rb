require 'capybara/rspec'
require 'capybara-playwright-driver'

# See: https://github.com/YusukeIwaki/capybara-playwright-driver/issues/43
Capybara.register_driver(:playwright) do |app|
  Capybara::Playwright::Driver.new(app,
    playwright_server_endpoint_url: 'ws://playwright:4545/ws',
    browser_type: :firefox,
    headless: true
  )
end

Capybara.default_max_wait_time = 5
Capybara.default_driver = :playwright
Capybara.save_path = 'tmp/capybara'

Capybara.configure do |config|
  config.default_driver = :playwright
  config.javascript_driver = :playwright
end
Capybara.app_host = 'http://rails:3000'

RSpec.configure do |config|
  config.after :example do
    page.save_screenshot
  end
end
