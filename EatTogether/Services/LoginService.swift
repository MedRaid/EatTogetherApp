//
//  LoginService.swift
//  EatTogether
//
//  Created by Raddaoui Mohamed Raid on 5/2/19.
//  Copyright © 2019 tn.esprit.TestTech. All rights reserved.
//

import Foundation
import Alamofire

class LoginService{
    
    
    
    
    func login(request: User?, completion: @escaping (_ user: User?, _ error: Error?) -> Void) {

        //AlamoFire request
        
        //getting the username and password
        let parameters: Parameters=[
            "apiKey":"BMO88OD6BEXsCM7X",
            "Email":request!._Email,
            "Password": request!._Password
        ]
        
        Alamofire.request(BASE_URL + login_URL,method: .post, parameters: parameters).responseJSON{ response in
            let results = response.result
            var myUser = User()

            
            
            // first dictionnary containing all information
            
            if let dict = results.value as? Dictionary<String,AnyObject>{
                //checking the array of dictionnaries named articles
                if let status = dict["Status"] as? String {
                    print(status)
                
                if let BriefProfile = dict["BriefProfile"] as? Dictionary<String,AnyObject>
                    
                {
                    
                                let user = User()
                                
                    
                                    if let name = BriefProfile["name"] as? String {
                                        user._name = name
                                    }
                                    
                                    if let shortBio = BriefProfile["shortBio"] as? String {
                                        user._shortBio = shortBio
                                    }
                    
                                    if let username = BriefProfile["username"] as? String {
                                        user._username = username
                                    }
                                    if let photoUrl = BriefProfile["photoUrl"] as? String {
                                        user._photoUrl = photoUrl
                                    }
                                    if let backgroundUrl = BriefProfile["backgroundUrl"] as? String {
                                        user._backgroundUrl = backgroundUrl
                                    }
                                    if let isEmailVerifid = BriefProfile["isEmailVerifid"] as? Int {
                                        user._isEmailVerifid = isEmailVerifid
                                    }
                                    if let connectionCount = BriefProfile["connectionCount"] as? Int {
                                        user._connectionCount = connectionCount
                                    }
                                    if let isAdmin = BriefProfile["isAdmin"] as? Int {
                                        user._isAdmin = isAdmin
                                    }
                                    if let isOnline = BriefProfile["isOnline"] as? Int {
                                        user._isOnline = isOnline
                                    }
                    
                            print("=-=-=-=-=-=-=-=-=-=-=-=-")
                            print(user.isOnline)
                            myUser = user
                            myUser._Status = "Successful"
                }
                
            }
                
            }
            if myUser.Status == "Successful" {
                completion(myUser, nil)
            } else  {
                let error = NSError(domain:"", code:401, userInfo:[ NSLocalizedDescriptionKey: "Invaild access token"])
                completion(nil, error)
            }
        }
    }
   
}
