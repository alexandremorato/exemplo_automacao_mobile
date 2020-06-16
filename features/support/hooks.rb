Before do |scenario|
  @driver.start_driver
end

After do
  @driver.driver_quit
end

After do |scenario|
  if scenario.failed?
    unless File.directory?("report/screenshots/")
      FileUtils.mkdir_p("report/screenshots/")
    end
    time_stamp = Time.now.strftime("%d-%m-%Y_%H.%M.%S")
    screenshot_name = "#{time_stamp}.png"
    screenshot_file = File.join("report/screenshots/", screenshot_name)
    @driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
  end
end