//
//  Keys.swift
//  SendMySMSApp
//
//  Created by Aaron Thomas on 30/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

func valueForAPIKey(named apiKey:String) -> String {
    
    let filePath = Bundle.main.path(forResource: "ApiKeys", ofType: "plist")
    let plist = NSDictionary(contentsOfFile:filePath!)
    let value = plist?.object(forKey: apiKey) as! String
    
    return value
}

func valueForAPISecret(named apiSecret:String) -> String {
    
    let filePath = Bundle.main.path(forResource: "ApiKeys", ofType: "plist")
    let plist = NSDictionary(contentsOfFile:filePath!)
    let value = plist?.object(forKey: apiSecret) as! String
    
    return value
}
