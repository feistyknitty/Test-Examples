//
//  TestHomePage.swift
//
//  Created by Tracy Kohler on 3/25/23.
//

import XCTest

class TestHomePage: XCUITestCaseBase {
    
    override func setUp() {
        super.setUp()
        app.launch()
    }

    func testHomePageElementsExist() {
        XCTAssertTrue(homePage.homeSignInButton.exists, "Sign In button is not present")
        XCTAssertTrue(homePage.registrationButton.exists, "Registration button is not present")
       
    }

    func testTapSignIn() {
        if homePage.homeSignInButton.isHittable {
            homePage.homeSignInButton.tap()
        }
        else {
            XCTFail("Sign In button is not present or tappable")
        }
        XCTAssertTrue(signInPage.signInPageTitle.exists, "Sign In page title is not present or sign in page did not load")
    }
    
    func testTapRegister() {
        if homePage.registrationButton.isHittable {
            homePage.registrationButton.tap()
        }
        else {
            XCTFail("Register button is not present or tappable")
        }
        XCTAssertTrue(registrationPage.registrationPageTitle.exists, "Registration page title is not present or registration page did not load")
    }
}
