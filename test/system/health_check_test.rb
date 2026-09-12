require "application_system_test_case"

class HealthCheckTest < ApplicationSystemTestCase
  test "app boots and health check responds" do
    visit "/up"

    assert_no_text "error"
  end
end
