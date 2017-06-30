//
//  SendMySMSAppTests.swift
//  SendMySMSAppTests
//
//  Created by Aaron Thomas on 28/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import XCTest
import Alamofire
@testable import SendMySMSApp

class SendMySMSAppTests: XCTestCase {
    
    var requestClass: Request!
    var responseClass: Response!
    
    // check the Alamofire download syntax and path to "messages" is correct
    func testResonseDataIfSuccess() {
        
      let testURL = "https://rest.nexmo.com/sms/json?\(apiKey)&\(apiSecret)&to=447930535848&from=NexmoWorks&text=hello+from+Nexmo"
      let promise = expectation(description: "0")
        
        Alamofire.request(testURL).responseJSON { response in
            let result = response.result
                
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let messages = dict["messages"] as? [Dictionary<String, AnyObject>] {
                // to test a fail - uncomment the below line and comment out the above.
              //if let messages = dict["essages"] as? [Dictionary<String, AnyObject>] {
                    
                if messages.count > 0 {
                    promise.fulfill()
                } else {
                    XCTFail("Incorrect path to messages, check your syntax!")
                }
                }
              }
            }
        waitForExpectations(timeout: 5, handler: nil)
        }
    }
