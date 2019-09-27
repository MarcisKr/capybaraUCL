Feature: Login
   
   Scenario: User can login with Smart-ID
      Given I am in EAPP login page
      And I fill in person code field with "00000000000"
      When I select NEXT button
      Then I am logged in EAPP

   Scenario: Smart-ID person code required error
      Given I am in EAPP login page
      And I fill in person code field with "0"
      When I clear person code field
      Then I see "Person Code is required" error

   Scenario: Smart-ID Invalid Personal Code format error
      Given I am in EAPP login page
      When I fill in person code field with "123"
      Then I see "Invalid Personal Code format" error

   Scenario: Smart-ID user can't log in with empty field
      Given I am in EAPP login page
      When I select NEXT button disabled
      And I submit person code with enter
      Then I am still in login page

   Scenario: User can login with Mobile-ID
      Given I am in EAPP login page
      And I am in Mobile-ID tab
      When I fill in mobile phone field with "000000076"
      And I fill in person code field with "00000000000"
      And I select NEXT button
      Then I am logged in EAPP

   Scenario: Mobile-ID person code required error
      Given I am in EAPP login page
      And I am in Mobile-ID tab
      And I fill in person code field with "0"
      When I clear person code field
      Then I see "Person Code is required" error

   Scenario: Mobile-ID Invalid Personal Code format error
      Given I am in EAPP login page
      And I am in Mobile-ID tab
      And I fill in person code field with "123"
      Then I see "Invalid Personal Code format" error

   Scenario: Mobile-ID phone number format error
      Given I am in EAPP login page
      And I am in Mobile-ID tab
      And I fill in mobile phone field with "abcdefgh"
      Then I see "The Mobile phone number format is invalid." phone error

   Scenario: Mobile-ID phone number length error
      Given I am in EAPP login page
      And I am in Mobile-ID tab
      And I fill in mobile phone field with "13"
      Then I see "The Mobile phone number field must be between 7 and 10." phone error
   
   Scenario: Mobile-ID user can't log in with empty fields
      Given I am in EAPP login page
      And I am in Mobile-ID tab
      When I select NEXT button disabled
      And I submit person code with enter
      And I submit phone number with enter
      Then I am still in login page