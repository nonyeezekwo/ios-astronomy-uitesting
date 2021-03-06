//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Nonye on 6/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
    
    var app: XCUIApplication {
        return XCUIApplication()
    }
    
    private var savingPhoto: XCUIElement {
        return app.buttons["PhotoDetailViewController.SaveButton"]
    }
    
    private func savePhotoButton(_ index: String) -> XCUIElement {
         return app.buttons["PhotoDetailViewController.SaveButton"]
     }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        app.launch()
        
        app.collectionViews.children(matching: .cell).element(boundBy: 0).otherElements.containing(.image, identifier:"PhotoDetailViewController.PlanetImage").element.tap()
        app.buttons["PhotoDetailViewController.SaveButton"].staticTexts["Save to Photo Library"].tap()
        app.alerts["Photo Saved!"].scrollViews.otherElements.buttons["Okay"].tap()
        app.navigationBars["Title"].buttons["Sol 1"].tap()
        
    }
    
    func testSavePhoto() {
        app.launch()
    
        let saveButton = savePhotoButton
    
      
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
