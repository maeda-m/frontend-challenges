require 'capybara/rspec'
require 'capybara-playwright-driver'

# See: https://playwright-ruby-client.vercel.app/docs/article/guides/playwright_on_alpine_linux
module CapybaraPlaywrightDriverPatch
  def playwright_execution
    @playwright_execution ||= ::Playwright.connect_to_playwright_server('ws://playwright:4545/ws')
  end
end
Capybara::Playwright::Driver.prepend(CapybaraPlaywrightDriverPatch)

# See: https://github.com/YusukeIwaki/capybara-playwright-driver
Capybara.register_driver(:playwright) do |app|
  Capybara::Playwright::Driver.new(app, browser_type: :firefox, headless: true)
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
