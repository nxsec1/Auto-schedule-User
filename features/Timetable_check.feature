Feature:Timetable check
  As a administrator
  So I need to check the timetable
  I want to check my timetable

Backgroup:User in database

Given the following contact exists:
|name      |email                 |
|Yitong Cui|yitong_cui@hotmail.com|

Scenario:check timetable
  When I go to the timetable page for "Yitong Cui"
  And I fill in "Email" with "yitong_cui@hotmail.com"
  Then i should see "Yitong Cui,yitong_cui@hotmail.com, avaliable time."
