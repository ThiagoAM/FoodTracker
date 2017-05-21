//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Thiago Martins on 05/05/17.
//  Copyright © 2017 Thiago Martins. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters:
    func testMealInitializationSucceeds() {
        
        // Zero Rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest Positive Rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
        
    } // func testMealInitializationSucceeds
    
    func testMealInitializationFails() {
        
        // Negative Rating
        let negativeRatingMetal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMetal)
        
        // Rating Exceeds Maximum
        let largeRatingMetal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMetal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
    } // func testMealInitializationFails
    
}
