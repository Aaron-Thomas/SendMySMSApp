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

class Response {
    
    var messageSentSuccessfully: Bool!
    
    var _status: String!
    var _messageId: String!
    var _to: String!
    var _remainingBalance: String!
    var _messagePrice: String!
    var _network: String!
    
    var status: String {
        if _status == nil {
            _status = ""
        }
        return _status
    }
    
    var messageId: String {
        if _messageId == nil {
            _messageId = ""
        }
        return _messageId
    }
    
    var to: String {
        if _to == nil {
            _to = ""
        }
        return _to
    }
    
    var remainingBalance: String {
        if _remainingBalance == nil {
            _remainingBalance = ""
        }
        return _remainingBalance
    }
    
    var messagePrice: String {
        if _messagePrice == nil {
            _messagePrice = ""
        }
        return _messagePrice
    }
    
    var network: String {
        if _network == nil {
            _network = ""
        }
        return _network
    }
    
    
    // Post the request and get the response data using Alamofire
    func downloadResponseData(completed: @escaping () -> ()) {
        Alamofire.request(apiRequestURL).responseJSON { response in
            let result = response.result
        
            if let dict = result.value as? Dictionary<String, AnyObject> {
                print(dict)

                if let messages = dict["messages"] as? [Dictionary<String, AnyObject>] {
                print(messages)
                    
                    if let statusData = messages[0]["status"] as? String {
                        self._status = statusData
                        print(self.status)
                    }
                     // check if it was successfully sent OR print error code
                    if self.status == "0" {
                        print("message successfully sent!")
                        self.messageSentSuccessfully = true
                    } else {
                        print("Error sending message, code \(self._status)... \(messages[0]["error-text"] as! String)")
                        self.messageSentSuccessfully = false
                    }
                    
                    if let messageIdData = messages[0]["message-id"] as? String {
                        self._messageId = messageIdData
                        print(self.messageId)
                    }
                    
                    if let toData = messages[0]["to"] as? String {
                        self._to = toData
                        print(self.to)
                    }
                    
                    if let remainingBalanceData = messages[0]["remaining-balance"] as? String {
                        self._remainingBalance = remainingBalanceData
                        print(self.remainingBalance)
                    }
                    
                    if let messagePriceData = messages[0]["message-price"] as? String {
                        self._messagePrice = messagePriceData
                        print(self.messagePrice)
                    }
                    
                    if let networkData = messages[0]["network"] as? String {
                        self._network = networkData
                        print(self.network)
                    }
              }
            }
            completed()
        }
   }
}
