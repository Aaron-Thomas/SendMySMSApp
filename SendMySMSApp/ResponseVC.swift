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

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        // if success, show success img
        if responseClass.messageSentSuccessfully == true {
            outcomeImg.image = UIImage(named: "success")
            outcomeLbl.text = "Message sent successfully!"
        } else {
            // if failure, show failure img and hide uneccessary labels
            outcomeImg.image = UIImage(named: "failure")
            outcomeLbl.text = "Message failed to send :("
            
            toLbl.isHidden = true
            messageIDLbl.isHidden = true
            messagePriceLbl.isHidden = true
            remainingBalanceLbl.isHidden = true
            networkLbl.isHidden = true
        }
        updateMainUI()
    }
    
    // assign response data values to UI
     func updateMainUI() {
        toLbl.text = "To:\(responseClass.to)"
        messageIDLbl.text = "Message ID:\(responseClass.messageId)"
        messagePriceLbl.text = "Message Price:\(responseClass.messagePrice)"
        remainingBalanceLbl.text = "Remaining balance: \(responseClass.remainingBalance)"
        networkLbl.text = "Network: \(responseClass.network)"
        statusLbl.text = "Status:\(responseClass.status)"
     }
}

