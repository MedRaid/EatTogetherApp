//
//  LoginController.swift
//  EatTogether
//
//  Created by Raddaoui Mohamed Raid on 5/1/19.
//  Copyright © 2019 tn.esprit.TestTech. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("DID LOAD EXECUTED")
    }

    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    }
    
    @IBAction func login(_ sender: UIButton) {
        
        if isValidEmail(testStr: email.text!){
            //email is valid
        }
    }
}



























