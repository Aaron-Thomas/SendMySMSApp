//
//  SendSMSVC.swift
//  SendMySMS
//
//  Created by Aaron Thomas on 27/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

class SendSMSVC: UIViewController {
    
   
    @IBOutlet weak var toTxtField: UITextField!
    @IBOutlet weak var fromTxtField: UITextField!
    @IBOutlet weak var textTxtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    // edit and add this function to an IBAction once textfields are completed to assign variables
    //        func submitSMS() {
    //
    //            requestClass._to = toTxtField.UITextfield.text
    //            requestClass._from = FromTxtField.UITextfield.text
    //            requestClass._text = TextTxtView.UITextView.text
    //
    //            responseClass.downloadResponseData {
    //            }
    
    @IBAction func sendBtn(_ sender: Any) {
        
        //submitSMS()
        
    }
    
}
