Feature: Users account access and other scenarios

  @chrome
  Scenario: Admin should be able to login success fully

    Given Admin logs into the panel with valid credentails
    Then the login should be successful

