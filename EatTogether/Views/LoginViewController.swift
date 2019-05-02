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
    
    
    var loginservice: LoginService!
    let loginVM = LoginVModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("DID LOAD EXECUTED")
        loginVM.delegate = self

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
        
        let user = User(_apiKey: "BMO88OD6BEXsCM7X", _Email: email.text, _Password: password.text)
        loginVM.loginUser(request: user)

        
        
//        loginservice = LoginService()
//        loginservice.loginRequest {
//        }
    }
}
// MARK: - PLoginVModel
extension LoginViewController: PLoginVModel {
    func userLogin(sender: LoginVModel, user: User?, error: BaseError?) {
        if error == nil {
            print("NOOOOOOOO")

//            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() {
//                self.present(vc, animated: true, completion: nil)
//            }
        } else {
            print("YESSSSS")
//            self.display(alert: Alert(baseError: error!))
        }
    }
}



























