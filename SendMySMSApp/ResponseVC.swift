//
//  ResponseVC.swift
//  SendMySMS
//
//  Created by Aaron Thomas on 25/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

class ResponseVC: UIViewController {
    
    
    
    @IBOutlet weak var outcomeImg: UIImageView!
    @IBOutlet weak var outcomeLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var toLbl: UILabel!
    @IBOutlet weak var messageIDLbl: UILabel!
    @IBOutlet weak var messagePriceLbl: UILabel!
    @IBOutlet weak var remainingBalanceLbl: UILabel!
    @IBOutlet weak var networkLbl: UILabel!
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        //CHECK BELOW SYNTAX
//        if responseClass.status == 0 {
//            outcomeImg.image = UIImage(named: "success")
//            outcomeLbl.text = "Message sent successfully!"
//        } else {
//            outcomeImg.image = UIImage(named: "failure")
//            outcomeLbl.text = "Message failed to send :(")
//        }

    }
    
     
//        func updateMainUI() {
//            toLbl.text = responseClass.to
//            messageIDLbl.text = responseClass.messageId
//            statusLbll.text = responseClass.status
//            messagePriceLbl = responseClaas.messagePrice
//            remainingBalanceLbl.text = responseClass.remainingBalance
//            networkLbl.text = responseClass.network
//        }
    
    
}

