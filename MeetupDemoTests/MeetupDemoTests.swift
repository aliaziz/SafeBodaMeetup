//
//  MeetupDemoTests.swift
//  MeetupDemoTests
//
//  Created by ali ziwa on 11/03/2019.
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import XCTest
@testable import MeetupDemo

class MeetupDemoTests: XCTestCase {

    private var viewModel: MeetupViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = MeetupViewModel()
    }
    
    func testUserIsValid() {
        XCTAssertTrue(viewModel.getUser().friends == 13)
    }
}
