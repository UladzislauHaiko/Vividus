Description: Registering a user at Reddit;


Scenario: Create User Account
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I switch to frame located `By.xpath(//iframe[contains(@src, 'register')])`
When I enter `${userEmail}` in field located `By.xpath(//input[@id='regEmail'])`
When I click on element located `By.xpath(//button[@data-step='email'])`
When I enter `#{generate(regexify '[a-z]{5}[A-Z]{2}')}` in field located `By.xpath(//input[@id='regUsername'])`
When I enter `#{generate(regexify '[a-z]{8}[A-Z]{2}')}` in field located `By.xpath(//input[@id='regPassword'])`
When I wait until element located `By.xpath(//iframe[@title='reCAPTCHA'])` appears
When I switch to frame located `By.xpath(//iframe[@title='reCAPTCHA'])`
When I click on element located `By.xpath(//div[@class='recaptcha-checkbox-checkmark'])`
When I wait until element located `By.xpath(//button[@class='AnimatedForm__submitButton SubscribeButton'])` appears
When I click on element located `By.xpath(//button[@class='AnimatedForm__submitButton SubscribeButton'])`

Scenario: Search by top bar and open page from results 

When I wait until element located `By.xpath(//input[@id='header-search-bar'])` appears
When I refresh the page
When I enter `movies` in field located `By.xpath(//input[@id='header-search-bar'])`
When I change context to element located `By.xpath(//input[@id='header-search-bar'])`
When I press ENTER on keyboard
When I wait until element located `By.xpath((//div[@data-testid='post-container'])[1])` appears
When I click on element located `By.xpath((//div[@data-testid='post-container'])[1])`

Scenario: Open mailbox
When I click on element located `By.xpath(//button[@aria-label='Open notifications inbox'])`
When I click on element located `By.xpath(//a[text()='Messages'])`







