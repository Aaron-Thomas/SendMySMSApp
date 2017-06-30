//
//  Request.swift
//  NexmoSMS
//
//  Created by Aaron Thomas on 24/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

class Request {
    
    var _from: String!
    var _text: String!
    var _to: String!
    
    var from: String {
        if _from == nil {
            _from = ""
        }
        return _from
    }
    
    var text: String {
        if _text == nil {
            _text = ""
        } else {
            // url encode text. solution thanks to https://stackoverflow.com/questions/24551816/swift-encode-url
            _text = _text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        }
        return _text
    }
    
    var to: String {
        if _to == nil {
            _to = ""
        }
        return _to
    }
    
}
