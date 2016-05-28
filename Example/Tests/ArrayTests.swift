//
//  ArrayTests.swift
//  NoUnderscoreS
//
//  Created by Thanh Pham on 5/28/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import NoUnderscoreS

import XCTest

class ArrayTests: QuickSpec {

    override func spec() {
        describe("first n") {

            it("returns first n elements") {
                expect([1, 2, 3].first(2)) == [1, 2]
            }

            it("handles empty array case") {
                expect([].first(1)) == [Int]()
            }

            it("handles n > count case") {
                expect([1, 2, 3].first(4)) == [1, 2, 3]
            }

            it("handles n == 0 case") {
                expect([1, 2, 3].first(0)) == []
            }

            it("handles n < 0 case") {
                expect([1, 2, 3].first(-1)) == []
            }

            it("handles n > count case") {
                expect([1, 2, 3].first(4)) == [1, 2, 3]
            }

            it("handles n < 0 case") {
                expect([1, 2, 3].first(-1)) == []
            }
        }
    }
}
