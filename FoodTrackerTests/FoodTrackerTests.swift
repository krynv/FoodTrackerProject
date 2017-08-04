//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Vitaliy Krynytskyy on 04/08/17.
//  Copyright © 2017 Vitaliy Krynytskyy. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    // make sure the meal initialiser actually returns a meal object when the parameters are valid
    func testMealInitializationSucceeds() {
        
        // zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)

        // +ve rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)

    }
    
    
    // make sure the meal initialiser returns a nil when the rating is -ve or the meal has an empty name
    func testMealInitializationFails() {
        
        // -ve rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // rating is > max value
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)

        // empty meal name
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
    }
}
