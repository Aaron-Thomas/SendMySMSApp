//
//  Constants.swift
//  NexmoSMS
//
//  Created by Aaron Thomas on 24/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

let BASE_URL = "https://rest.nexmo.com/sms/json"

let apiKey = valueForAPIKey(named:"apiKey")
let apiSecret = valueForAPIKey(named:"apiSecret")

let requestClass = Request()
let responseClass = Response()

let apiRequestURL = "\(BASE_URL)?api_key=\(apiKey)&api_secret=\(apiSecret)&to=\(requestClass.to)&from=\(requestClass.from)&text=\(requestClass.text)"
