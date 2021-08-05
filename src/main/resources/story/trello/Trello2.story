Description: Trello Task 2 and 3


GivenStories: trelloPrecondition.story
Scenario: Signing In as a User at Trello

Given I am on the main application page
When I click on element located `By.xpath(//a[@class='btn btn-sm btn-link text-primary'])`

When I enter `${email}` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I wait until element located `By.xpath(//input[@id='password'])` appears
When I enter `${password}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`



Then the page with the URL containing 'https://trello.com/' is loaded

When I wait until element located `By.xpath(//button[@data-test-id='header-member-menu-button'])` appears
When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`
When I click on element located `By.xpath(//a[@data-test-id='header-member-menu-profile'])`
Then the page title contains 'Profile'



When I find >= '5' elements by By.xpath(//li[@class='tabbed-pane-nav-item']) and for each element do 
|step|
|When I click on element located `By.xpath(./a)`|

When I click on element located `By.xpath(//a[@data-tab='profile'])`
When I perform visual check of 5 pages






















