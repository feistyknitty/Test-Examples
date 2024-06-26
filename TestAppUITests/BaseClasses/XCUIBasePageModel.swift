//
//  XCUIBasePageModel.swift
//
//  Created by Kohler, Tracy on 3/24/23.
//  Copyright © 2024. All rights reserved.
//

import XCTest

open class XCUIBasePageModel {
    
    
    public var app:XCUIApplication { return XCUITestCaseBase.staticApplication }
    open var isPhone: Bool { return XCUITestCaseBase.isPhone }
    open var isPad: Bool { return XCUITestCaseBase.isPad}
    
}
