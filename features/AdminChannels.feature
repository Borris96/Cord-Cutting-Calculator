Feature: Admin Channels
  
  As an admin
  I want to handle channels
  So that users have a lot of popular choices
  
# Background: Admin is logged in and goes to Channels page
#   Given I am on the login page
#   # And I follow "Sign in with Google"
#   And I follow "View Channels"
#   Then I am on the channels page
Background: Admin is logged in and goes to Channels page
  Given I am on the login page
  And I follow "Log in"
  Then I am on the home page
  
  Given the following channels exist:
  | name        | category |
  | Sun TV      |  Other   |
  | KTV         |  Movies  |

  Given the following packages exist:
  | name        | cost |
  | Sun Network |  50  |

Scenario: More Info Channels
  When I go to the edit channel page for "Sun TV"
  And I fill in "Name" with "KTV"
  And I go with "Movies" from Category
  And I press "Update Channel"
  Then I should see "Channel was successfully updated"
  And the category of "KTV" should be "Movies"
  And I should be on the channel details page for "KTV"
  
Scenario: Edit Channel
  When I am on the channel details page for "Sun TV"
  And I follow "Edit"
  And I follow "Show"
  And I follow "Back"
  Then I should be on the channels page
  
Scenario: Add new Channel
  When I am on the channels page
  When follow "New Channel"
  And I fill in "Name" with "Jaya TV"
  And I go with "Other" from Category
  And I press "Create Channel"
  Then I should be on the channel details page for "Jaya TV"