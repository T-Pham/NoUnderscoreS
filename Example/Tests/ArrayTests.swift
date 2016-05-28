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

            it("handles optional parameter case") {
                expect([1, 2, 3].first()) == [1]
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
        }

        describe("initial n") {

            it("returns all but last n elements") {
                expect([1, 2, 3].initial(2)) == [1]
            }

            it("handles optional parameter case") {
                expect([1, 2, 3].initial()) == [1, 2]
            }

            it("handles empty array case") {
                expect([].initial(1)) == [Int]()
            }

            it("handles n > count case") {
                expect([1, 2, 3].initial(4)) == []
            }

            it("handles n == 0 case") {
                expect([1, 2, 3].initial(0)) == [1, 2, 3]
            }

            it("handles n < 0 case") {
                expect([1, 2, 3].initial(-1)) == [1, 2, 3]
            }
        }

        describe("last n") {

            it("returns last n elements") {
                expect([1, 2, 3].last(2)) == [2, 3]
            }

            it("handles optional parameter case") {
                expect([1, 2, 3].last()) == [3]
            }

            it("handles empty array case") {
                expect([].last(1)) == [Int]()
            }

            it("handles n > count case") {
                expect([1, 2, 3].last(4)) == [1, 2, 3]
            }

            it("handles n < 0 case") {
                expect([1, 2, 3].last(-1)) == []
            }
        }

        describe("rest n") {

            it("returns all but first n elements") {
                expect([1, 2, 3].rest(2)) == [3]
            }

            it("handles optional parameter case") {
                expect([1, 2, 3].rest()) == [2, 3]
            }

            it("handles empty array case") {
                expect([].rest(1)) == [Int]()
            }

            it("handles n > count case") {
                expect([1, 2, 3].rest(4)) == []
            }

            it("handles n == 0 case") {
                expect([1, 2, 3].rest(0)) == [1, 2, 3]
            }

            it("handles n < 0 case") {
                expect([1, 2, 3].rest(-1)) == [1, 2, 3] //underscore.js returns [3]
            }
        }
    }
}
