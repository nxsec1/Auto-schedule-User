Feature:Timetable upload
  As a user
  So I need to upload the timetable
  I want to upload and edit my timetable

Backgroup:User in database

Given the following contact exists:
|name      |email               |
|Yitong Cui|yitong_cui@gmail.com|

Scenario:upload timetable
  When I go to the user page
  And I fill in "Name" with "Cui Yitong"
  And I fill in "Email" with "yitong_cui@gmail.com"
  Then I should see "Yitong Cui,yitong_cui@gmail.com, avaliable time."
  Then I check the timetable with "Mon 8:00-10:00;Tue 14:00-16:00;Wed 18:00-20:00;Thur ;Fri 12:00-14:00"
  Then I should see "Yitong Cui,yitong_cui@gmail.com, Mon 8:00-10:00;Tue 14:00-16:00;Wed 18:00-20:00;Thur ;Fri 12:00-14:00"
  
Scenario:edit timetable
  When I go to the timetable page for "Yitong Cui"
  And I fill in "Email" with "yitong_cui@gmail.com"
  Then I should see "Yitong Cui,yitong_cui@gmail.com, Mon 8:00-10:00;Tue 14:00-16:00;Wed 18:00-20:00;Thur ;Fri 12:00-14:00"
  Then I change avaliable time with "Thur 8:00-10:00"
  And I press "Save"
  Then I should see "Yitong Cui,yitong_cui@gmail.com, Mon 8:00-10:00;Tue 14:00-16:00;Wed 18:00-20:00;Thur 8:00-10:00;Fri 12:00-14:00"
