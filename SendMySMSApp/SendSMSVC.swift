//
//  SendSMSVC.swift
//  SendMySMS
//
//  Created by Aaron Thomas on 27/06/2017.
//  Copyright © 2017 Aaron Thomas. All rights reserved.
//

import UIKit

class SendSMSVC: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var toTxtField: UITextField!
    @IBOutlet weak var fromTxtField: UITextField!
    @IBOutlet weak var textTxtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textTxtView.delegate = self
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SendSMSVC.DismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    func DismissKeyboard(){
        self.view.endEditing(true)
    }
    
    @IBAction func sendBtn(_ sender: Any) {
        submitSMS()
    }
    
    func submitSMS() {
        
        requestClass._to = toTxtField.text
        requestClass._from = fromTxtField.text
        requestClass._text = textTxtView.text
    
        responseClass.downloadResponseData {
        }
}

}
