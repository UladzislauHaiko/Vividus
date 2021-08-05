Description: Trello 


Scenario: Creating a User at Trello for precondition
Given I am on the main application page

When I click on element located `By.xpath(//a[@class='btn btn-sm bg-primary text-white font-weight-bold'])`
When I enter `${email}` in field located `By.xpath(//input[@id='email'])`


When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until element located `By.xpath(//input[@id='displayName'])` appears
When I enter `#{generate(regexify '[a-z]{8}[A-Z]{2}')}` in field located `By.xpath(//input[@id='displayName'])`
When I click on element located `By.xpath(//button[@id='signup-submit'])`

When I wait until element located `By.xpath(//button[@data-test-id='moonshot-continue-button'])` appears
When I click on element located `By.xpath(//button[@data-test-id='moonshot-continue-button'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-start-free-account'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-success-button'])`
When I open URL `https://www.mailinator.com/` in new window
When I enter `${email}` in field located `By.xpath(//input[@id='addOverlay'])`
When I click on element located `By.xpath(//button[@id='go-to-public'])`
When I click on element located `By.xpath((//td[@class='ng-binding'])[1])`
When I switch to frame located `By.xpath(//iframe[@id='html_msg_body'])`
When I click on element located `By.xpath(//a[text()='Verify your email'])`

When I wait `PT10S` until window with title that contains `Sign up - Log in with Atlassian account` appears and switch to it

When I wait until element located `By.xpath(//input[@id='password'])` appears
When I enter `${password}` in field located `By.xpath(//input[@id='password'])`


When I click on element located `By.xpath(//button[@id='signup-submit'])`
When I wait until element located `By.xpath(//a[@data-test-id='header-home-button'])` appears


















