//
//  Response.swift
//  NexmoSMS
//
//  Created by Aaron Thomas on 24/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


struct Constants {
    static let BASE_URL = "https://rest.nexmo.com/sms/json"
    static let API_KEY = "26df2f07"
    static let API_SECRET = "18aab9a1b9ffc243"
    
}

public var requestClass = Request()
public var responseClass = Response()

public var apiRequestURL = "\(Constants.BASE_URL)?api_key=\(Constants.API_KEY)&api_secret=\(Constants.API_KEY)&to=\(requestClass.to)&from=\(requestClass.from)&text=\(requestClass.text)"

// use the below to test
public var testApiRequestURL = "https://rest.nexmo.com/sms/json?api_key=26df2f07&api_secret=18aab9a1b9ffc243&to=447930535848&from=NexmoWorks&text=hello+from+Nexmo"




public class Response {

    public init() {
        
    }
    
    public var _status: String!
    public var _messageId: String!
    public var _to: String!
    public var _remainingBalance: String!
    public var _messagePrice: String!
    public var _network: String!
    
    public var status: String {
        if _status == nil {
            _status = ""
        }
        return _status
    }
    
    public var messageId: String {
        if _messageId == nil {
            _messageId = ""
        }
        return _messageId
    }
    
    public var to: String {
        if _to == nil {
            _to = ""
        }
        return _to
    }
    
    public var remainingBalance: String {
        if _remainingBalance == nil {
            _remainingBalance = ""
        }
        return _remainingBalance
    }
    
    public var messagePrice: String {
        if _messagePrice == nil {
            _messagePrice = ""
        }
        return _messagePrice
    }
    
    public var network: String {
        if _network == nil {
            _network = ""
        }
        return _network
    }
    
    // Post the request and get the response data using Alamofire
    public func downloadResponseData(completed: @escaping () -> ()) {
        Alamofire.request(apiRequestURL).responseJSON { response in
            let result = response.result
            print(result)
            
        
            
        //     CHECK BELOW SYNTAX
            if let dict = result.value as? Dictionary<String, AnyObject> {
                print(dict)
                if let messages = dict["messages"] as? [Dictionary<String, AnyObject>] {
                
                    
                    
                    if let status = messages[0]["status"] as? String {
                        self._status = status.capitalized
                    }
                    // check if it was successfully sent or print error code
                    if self._status == "0" {
                        print("message successfully sent!")
                    } else {
                        print("Error sending message, code \(self._status)... \(messages[0]["error-text"] as! String)")
                    }
                    
                    if let messageId = messages[0]["message-id"] as? String {
                        self._messageId = messageId
                    }
                    
                    if let to = messages[0]["to"] as? String {
                        self._to = to.capitalized
                    }
                    
                    if let remainingBalance = messages[0]["remaining-balance"] as? String {
                        self._remainingBalance = remainingBalance
                    }
                    
                    if let messagePrice = messages[0]["messagePrice"] as? String {
                        self._messagePrice = messagePrice
                    }
                    
                    if let network = messages[0]["network"] as? String {
                        self._network = network
                    }
              }
            }
            completed()
        }
   }

}
