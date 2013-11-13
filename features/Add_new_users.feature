Feature:Adding New User
  As an administrator
  So I provide information to Users
  I want to store a new user

Scenario:add a new user
  When I go to the Users Page
  And I fill in "Name" with "Yitong Cui"
  And I fill in "Email" With "Yitong_cui@hotmail.com"
  And I press "Submit"
  Then I should see "Yitong Cui,Yitong_cui@hotmail.com"

Scenario:edit a user
  When I go to the Users Page
  And I fill in "Name" with "Yitong Cui"
  And I fill in "Email" With "Yitong_cui@hotmail.com"
  And I press "Submit"
  Then I should see "Yitong Cui,Yitong_cui@hotmail.com"
  And I change "Email" with "Yitong_cui@gmail.com"
  And I press "Save"
  Then I should see "Yitong Cui,Yitong_cui@gmail.com"
  
  Scenario:delete a user
    When I go to the Users Page
    And I fill in "Name" with "Yitong Cui"
    And I fill in "Email" With "Yitong_cui@gmail.com"
    And I press "Delete"
    Then I should see ""
