//
//  Request.swift
//  NexmoSMS
//
//  Created by Aaron Thomas on 24/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit
import Alamofire


public class Request {
    
    public init() {
        
    }

    public var _from: String!
    // must be string format
    public var _text: String!
    // must url encode the string AND must be 140 characters max
    public var _to: String!
    // must be in international dialling code format
    
    public var from: String {
        if _from == nil {
            _from = ""
        }
        return _from
    }
    
    public var text: String {
        if _text == nil {
            _text = ""
        } else {
            // url encode text. solution thanks to https://stackoverflow.com/questions/24551816/swift-encode-url
            _text = _text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        }
        return _text
    }
    
    public var to: String {
        if _to == nil {
            _to = "0"
        }
        return _to
    }
    
}
