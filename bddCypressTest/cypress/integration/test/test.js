import { Given , And , Then , When} from "cypress-cucumber-preprocessor/steps";
import { faker } from '@faker-js/faker';

const randomEmail = faker.internet.email();
const randomPassword = faker.internet.password();
Then('I navigate to website', function () {
  let test = "https://magento.softwaretestingboard.com/"
    cy.visit(test, {
      failOnStatusCode: false,
    });
  });

  Then('I click on {string} button/link/item with text {string}', function (selector, text) {
    // const [selector,parsedText] = process(key,text);
    cy.contains(selector, text).click()
  });

  Then('I enter {string} for {string} input with occurence {int}',function (textToEnter, key, index) {
  
      cy.get(key).eq(index).type(textToEnter);
    });

  Then('I verify {string} text appears on screen', function (text) {
    cy.contains(text).should('be.visible');
  });

  Then('I verify {string} text appears on screen with occurrence {int}', function (text,index) {
    cy.contains(text).eq(index).should('be.visible');
  });
  
//   Given("Verify user has not already registered an account with the platform", () => {
//     cy.get('[name="username"]').type(randomEmail);
//     cy.get('[name="password"]').type(randomPassword);
//     cy.get('input[type="submit"]').click();
//     cy.get('div[id="rightPanel"] p').should('have.text','The username and password could not be verified.')
//   });
  
//   When("the user navigates to the signup page", () => {
//     cy.contains('Register').click();
// });
  
//   When("fills out the registration form with valid information", () => {
//     cy.get('[id="customer.firstName"]').type(faker.string.alpha(4));
//     cy.get('[id="customer.lastName"]').type(faker.string.alpha(6));
//     cy.get('[id="customer.address.street"]').type(faker.string.alpha(10));
//     cy.get('[id="customer.address.city"]').type('Indore');
//     cy.get('[id="customer.address.state"]').type('MP');
//     cy.get('[id="customer.address.zipCode"]').type(faker.string.numeric(6));
//     cy.get('[id="customer.phoneNumber"]').type(faker.string.numeric(10));
//     cy.get('[id="customer.ssn"]').type(faker.string.numeric(15));
//     cy.get('[id="customer.username"]').type(randomEmail);
//     cy.get('[id="customer.password"]').type(randomPassword);
//     cy.get('[id="repeatedPassword"]').type(randomPassword);
//   })
  
//   And("submits the registration form", () => {
//     cy.get('input[value="Register"]').click();     
//   });
  
//   Then("the user receives a success message indicating account creation", () => {
//     cy.contains('Your account was created successfully. You are now logged in.').should('be.visible');
//   });