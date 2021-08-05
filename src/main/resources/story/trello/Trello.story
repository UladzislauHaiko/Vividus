Description: Trello Task 1

Lifecycle:
Examples:
|email|
|#{generate(regexify '[a-z]{8}[A-Z]{2}')}@mailinator.com|
|#{generate(regexify '[a-z]{8}[A-Z]{2}')}@mailinator.com|


Scenario: Creating a User at Trello

Given I am on the main application page

When I click on element located `By.xpath(//a[@class='btn btn-sm bg-primary text-white font-weight-bold'])`
When I enter `<email>` in field located `By.xpath(//input[@id='email'])`

When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until element located `By.xpath(//input[@id='displayName'])` appears
When I enter `#{generate(regexify '[a-z]{8}[A-Z]{2}')}` in field located `By.xpath(//input[@id='displayName'])`
When I click on element located `By.xpath(//button[@id='signup-submit'])`

When I wait until element located `By.xpath(//button[@data-test-id='moonshot-continue-button'])` appears
When I click on element located `By.xpath(//button[@data-test-id='moonshot-continue-button'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-start-free-account'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-success-button'])`


Scenario: Creating a board via API

When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=b1e935c567dd9bfac33df8fdb4c49f5d&token=ba1f4fd37507d0166ccaf394838033c785a53178e9247d57a540e4285db231ad&name=MyBoardViaAPI'
Then the response code is equal to '200'
















