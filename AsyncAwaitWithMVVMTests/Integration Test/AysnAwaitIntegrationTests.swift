//
//  AysnAwaitIntegrationTests.swift
//  AsyncAwaitWithMVVMTests
//
//  Created by Pradeep's Macbook on 02/12/21.
//

import XCTest

class AsyncAwaitIntegrationTests: XCTestCase {
    
    private let quotesService: QuotesService = QuotesServiceImpl()
    
    func test_fetch_random_quotes_with_valid_request_returns_success() async {
        
        // Arrange
        
        let expectation = XCTestExpectation(description: "Data received from server")
        
        // Act
        
        let quotes = try! await quotesService.fetchRandomQuotes()
        
        // Assert
    
        XCTAssertTrue(quotes.count == 10)
        
        expectation.fulfill()
        
        wait(for: [expectation], timeout: 10.0)
    }
    
}
