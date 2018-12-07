Feature: Super admin create users
    Super admin needs to be able to create user accounts for each role in the facility

  Background:
    Given I am signed in to Kolibri as Super admin
      And I am on *Facility > Users* page

  Scenario: Create facility coach user account
    When I click on *New user* button
    Then I see *Create new user* modal
    When I enter user's full name <full_name>
      And I enter the username <username>
      And I enter the password <password>
      And I re-enter the password <password>
      And I select *Coach* for the *User type*
    Then I see the coach type options appear bellow
    When I select *Facility coach* option
      And I click *Save* button
    Then the modal closes
      And I see the new user on the *Facility > Users* page
      And I see the *Facility coach* label besides their name

  Scenario: Create class coach user account
    When I click on *New user* button
    Then I see *Create new user* modal
    When I enter user's full name <full_name>
      And I enter the username <username>
      And I enter the password <password>
      And I re-enter the password <password>
      And I select *Coach* for the *User type*
    Then I see the coach type options appear bellow
    When I select *Class coach* option
      And I click *Save* button
    Then the modal closes
      And I see the new user on the *Facility > Users* page
      And I see the *Class coach* label besides their name

  Scenario: Create learner user account
    When I click on *New user* button
    Then I see *Create new user* modal
    When I enter user's full name <full_name>
      And I enter the username <username>
      And I enter the password <password>
      And I re-enter the password <password>
      And I select *Learner* for the *User type*
      And I click *Save* button
    Then the modal closes
      And I see the new learner user on the *Facility > Users* page

  Scenario: Create facility admin user account
    When I click on *Add new* button
    Then I see *Add new account* modal
    When I enter user's full name <full_name>
      And I enter the username <username>
      And I enter the password <password>
      And I re-enter the password <password>
      And I select *Admin* for the *User type*
      And I click *Create account* button
    Then the modal closes
      And I see the new user on the *Facility > Users* page
      And I see the *Admin* label besides their name

Examples:
| full_name | username | password |
| Pinco P.  | coach    | coach    |
| Neela R.  | ccoach   | ccoach   |
| John C.   | learner  | learner  |
| Carrie W. | admin2   | admin2   |