//
//  ios_url_scheme_launchTests.swift
//  ios-url-scheme-launchTests
//
//  Created by Eiji Kushida on 2016/12/18.
//  Copyright © 2016年 Eiji Kushida. All rights reserved.
//

import XCTest
@testable import ios_url_scheme_launch

class ios_url_scheme_launchTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testQueryParse() {

        let url = URL(string: "http://example.com/?id=12345&username=tarou")
        let keys = url?.getKeyVals()
        
        XCTAssertEqual(keys?["id"] ?? "", "12345")
        XCTAssertEqual(keys?["username"] ?? "", "tarou")
    }
}
