//
//  XCUISignInPageModel.swift
//  TestAppUITests
//
//  Created by Tracy Kohler on 3/25/23.
//

import XCTest

open class XCUISignInPageModel: XCUITestCaseBase {
    
    var signInPageTitle: XCUIElement { return app.staticTexts["sign_in_title"] }
    var usernameField: XCUIElement { return app.textFields["Username"] }
    var passwordField: XCUIElement {return app.secureTextFields["Password"] }
    var signInButton: XCUIElement {return app.buttons["Sign In"] }
    
}
