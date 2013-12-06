Feature:Timetable check
  As a administrator
  So I need to check the timetable
  I want to check my timetable

  Background:User in database

    Given the following contact exists:
      | name       | email                |
      | Yitong Cui | yitong_cui@gmail.com |

  Scenario:check timetable
    When I go to the timetable page for "Yitong Cui"
    And I fill in "Email" with "yitong_cui@gmail.com"
    Then I should see "Yitong Cui,yitong_cui@gmail.com, available time."
    # might need some background on existing time?

  Scenario:edit timetable
    When I go to the timetable page for "Yitong Cui"
    And I fill in "Email" with "yitong_cui@gmail.com"
    Then I should see "Yitong Cui,yitong_cui@gmail.com, avaliable time."
    Then I change avaliable time with "8:00-10:00"
    And I press "Save"
    Then I should see "Yitong Cui,yitong_cui@gmail.com, 8:00-10:00."
