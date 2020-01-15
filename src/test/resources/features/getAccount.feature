@BasicSteps
Feature: Testing out the basic step definitions for JSON

  Scenario: Test sending headers with stepdef (HS1)
    Given I am a JSON API consumer
    And I am executing test "GA1"
    When I request GET "accounts/8e79edcf-01e7-2fa0-890e-243baa82c7fb"
    And I provide the header "x-lbg-brand" with a value of "IF"
    And I provide the header "x-lbg-txn-correlation-id" with a value of "1111111111"
    And I provide the header "Authorization" with a value of "Bearer 6L5UQiZ4NgNt2OgGq8qxHZxJ3uNb"
    And I provide the header "Content-Type" with a value of "application/json"
    Then I should get a status code of 200