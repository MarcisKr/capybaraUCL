require 'report_builder'

time = Time.now.getutc

if ARGV[1] == "chrome=true"
    browser = "Chrome"
elsif ARGV[1] == "firefox=true"
    browser = "Firefox"
elsif ARGV[1] == "safari=true"
    browser = "Safari"
end

ReportBuilder.configure do |config|
 config.json_path = 'report.json'
 config.report_path = 'cucumber_web_report'
 config.report_types = [:html]
 config.report_tabs = %w[Overview Features Scenarios Errors]
 config.report_title = 'Cucumber web automation test results'
 config.compress_images = false
 config.additional_info = { 'Project name' => 'UniCredit Leasing', 'Browser' => browser, 'Platform' => 'Test', 'Report generated' => time }
end

ReportBuilder.build_report