//
//  XCUIHomePageModel.swift
//  TestAppUITests
//
//  Created by Tracy Kohler on 3/25/23.
//

import Foundation
import XCTest

open class XCUIHomePageModel: XCUIBasePageModel {
    
    var homeSignInButton: XCUIElement { return app.buttons["SignIn"] }
    var registrationButton: XCUIElement { return app.buttons["Register"] }
}

