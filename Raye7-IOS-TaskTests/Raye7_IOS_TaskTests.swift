//
//  Raye7_IOS_TaskTests.swift
//  Raye7-IOS-TaskTests
//
//  Created by Mahmoud on 7/3/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import XCTest
@testable import Raye7_IOS_Task

class Raye7_IOS_TaskTests: XCTestCase {

    //MARK:- Test get all leagues Request
    
    func testGetAllLeagues() {
        let expectation = self.expectation(description: "leagues")
        
        var leagues: [League]?
        BaseAPI.shared.request(router: Router.getAllLeagues) { (result: Result<Leagues>) in
            switch result {
            case .success(let data):
                leagues = data.leagues
            default:
                break
            }
            
            expectation.fulfill()
        }
        waitForExpectations(timeout: 10, handler: nil)
        
        XCTAssertNotNil(leagues)
    }
    
    //MARK:- Test get league With ID
    
    func testGetLeagueWithID() {
           let idString = "4328"
           let expectation = self.expectation(description: "contact")
           
           var leagues: [League]?
    
           BaseAPI.shared.request(router: Router.getLeague(idLeague: idString)) { (result: Result<Leagues>) in
               switch result {
               case .success(let data):
                leagues = data.leagues
               default:
                   break
               }
               
               expectation.fulfill()
           }
           waitForExpectations(timeout: 10, handler: nil)
        
           /// comparing between the requested leagueID and the response leagueID...
        XCTAssertEqual(leagues?.first?.idLeague, idString)
       }

    override func setUpWithError() throws {
    
    }

    override func tearDownWithError() throws {
       
    }

    func testExample() throws {
    
    }
}
