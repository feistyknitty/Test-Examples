//
//  XCUITestCaseBase.swift
//
//  Created by Kohler, Tracy on 3/25/23.
//  Copyright © 2024. All rights reserved.
//

import XCTest

/// Base class for UI testing
open class XCUITestCaseBase : XCTestCase
{
    /// Base application reference.  Previous experience has told me: "It turns out to be very expensive to create
  /// XCUIApplication() (~ .1 seconds each time it's called)
    /// To work around this, we create a static singleton that can be accessed from anywhere in the test.
    /// Call resetApplication() to create a new XCUIApplication.
    static private var _application: XCUIApplication?
    static public fileprivate(set) var staticApplication: XCUIApplication!
    
    /// Convenience accessor for getting at staticApplication.
    public var app: XCUIApplication {
        return XCUITestCaseBase.staticApplication
    }
    
    /// This creates a new XCUIApplication and assigns to staticApplication.
    /// this is called in this classe's static setUp().
    public class func resetApplication() {
        _application = XCUIApplication()
        staticApplication = _application
    }
    
    /// Page Model definitions
    /// Home Page
    lazy var homePage = XCUIHomePageModel()
    
    /// Sign In
    lazy var signInPage = XCUISignInPageModel()
    
    /// Registration
    lazy var registrationPage = XCUIRegistrationPageModel()
  
    ///
    /// App Launch Methods
    ///
    
    open override class func setUp() {
        super.setUp()
    }
    
    /// Sets up initial conditions for a test run
    override open func setUp() {
        super.setUp()
        
        XCUITestCaseBase.resetApplication()
        
        continueAfterFailure = false
        
        // Send in a flag to let the app determine that it's running a UI test
        app.launchEnvironment["UI_TEST_RUNNING"] = "true"
  }
    
    override open func tearDown() {
        super.tearDown()
    }
    
    // to terminate the app
    public func terminate() {
        app.terminate()
    }
    
    /// Clear the keychain and all cached documents in the app first thing upon launch
    public var resetOnLaunch : Bool {
        get {
            return NSString(string: app.launchEnvironment["resetOnLaunch"] ?? "").boolValue
        }
        set(reset) {
            app.launchEnvironment["resetOnLaunch"] = String(reset)
        }
    }
}
