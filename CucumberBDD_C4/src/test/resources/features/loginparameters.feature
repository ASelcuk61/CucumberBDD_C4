@web
  Feature: Login Admin Feature

    Background:
      Given I am on admin panel page

      @parameters
      Scenario Outline: Verify invalid login for multiple users
        When I enter <username> into username text fields on admin login page
        And I enter <password> into password text fields on admin login page
        And I click on login button on admin login page
        Then I verify that I used invalid credentials

        Examples:

        | username            | password |
        | bob@gmail.com       | test123  |
        | jimil@yhaoo.com     |  243red  |
        | liz@gmail.com       | 123Test  |