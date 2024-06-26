//
//  XCUIRegistrationPageModel.swift
//  TestAppUITests
//
//  Created by Tracy Kohler on 6/25/24.
//

import XCTest

open class XCUIRegistrationPageModel: XCUITestCaseBase {
    
    var registrationPageTitle: XCUIElement { return app.staticTexts["Registration"] }
    var emailTextField: XCUIElement { return app.textFields["Email Address"] }
    var usernameTextField: XCUIElement { return app.textFields["Enter Username"] }
    var passwordTextField: XCUIElement { return app.secureTextFields["Enter Password"] }
    var passwordRequirements: XCUIElement { return app.staticTexts["password_requirements"] }
    
}
