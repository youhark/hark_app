Feature: Invitations
  In order to send and accept invitations
  As administrators and users
  I need an invite systemSo only invited users can sign up

Scenario: An admin sends an invitation
  Given There is a user "jason@email.com" 
  And user "jason@email.com" is an Admin
  And I login with "jason@email.com"
  And I click the link "invite user"
  Then I should be at the page "/onboard/new"
  When I fill in field "email" with "beta-request@email.com"
  And press "send"
  Then an email is sent to "beta-request@email.com"
  And an invitation is created with slug "3243as3"
  And the email contains
  """
  Welcome to Hark! You're invitation is now ready!
  <a href="www.youhark.com/onboard/3243as3">Sign up here</a>
  """


Scenario: A user requests an invitation
  Given that a user has signed up for our beta via email(website sign up)
  When we decide to allow that user to sign up
  Then an email is sent out by an Admin

Scenario: A user accepts an invite and signs up
  Given that a user has received an email invitation
  And the user clicks their unique link "www.youhark.com/onboard/3243as3"
  When the user land on the sign up page
  Then the user is prompted to sign up via Facebook or Twitter or email
  And the user is brought to their profile page to fill in information.
