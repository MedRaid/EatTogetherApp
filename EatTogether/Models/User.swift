//
//  User.swift
//  EatTogether
//
//  Created by Raddaoui Mohamed Raid on 5/2/19.
//  Copyright © 2019 tn.esprit.TestTech. All rights reserved.
//

import Foundation

class User {
    static let sharedInstance = User()

    var _apiKey: String! = ""
    var _name: String! = ""
    var _username: String! = ""
    var _isBusiness: String! = ""
    var _Email: String! = ""
    var _Password: String! = ""

    var _Status: String! = ""
    var _shortBio: String! = ""
    var _photoUrl: String! = ""
    var _backgroundUrl: String! = ""
    var _isEmailVerifid: Int?
    var _connectionCount: Int?
    var _isAdmin: Int?
    var _isOnline: Int?

    init(){}
    
    init(_apiKey:String, _Email: String, _Password: String) {
        self._apiKey = _apiKey
        self._Email = _Email
        self._Password = _Password
    }
    
    init(_apiKey:String, _name: String, _username: String, _isBusiness: String, _Email: String, _Password: String) {
        self._apiKey = _apiKey
        self._name = _name
        self._username = _username
        self._isBusiness = _isBusiness
        self._Email = _Email
        self._Password = _Password
    }
    
    init(_Status:String, _name: String, _username: String, _shortBio: String, _photoUrl: String, _backgroundUrl: String, _isEmailVerifid: Int, _connectionCount: Int, _isAdmin: Int, _isOnline: Int) {
        
        self._Status = _Status
        self._name = _name
        self._username = _username
        self._shortBio = _shortBio
        self._photoUrl = _photoUrl
        self._backgroundUrl = _backgroundUrl
        self._isEmailVerifid = _isEmailVerifid
        self._connectionCount = _connectionCount
        self._isAdmin = _isAdmin
        self._isOnline = _isOnline
    }

    
    var apiKey:String{
        if (_apiKey == nil){
            
            _apiKey = "---"
        }
        return _apiKey
    }
    var name:String{
        if (_name == nil){
            
            _name = "---"
        }
        return _name
    }
    var username:String{
        if (_username == nil){
            
            _username = "---"
        }
        return _username
    }
    var isBusiness:String{
        if (_isBusiness == nil){
            
            _isBusiness = "---"
        }
        return _isBusiness
    }
    var Email:String{
        if (_Email == nil){
            
            _Email = "---"
        }
        return _Email
    }
    var Password:String{
        if (_Password == nil){
            
            _Password = "---"
        }
        return _Password
    }
    
    var Status:String{
        if (_Status == nil){
            
            _Status = "---"
        }
        return _Status
    }
    var shortBio:String{
        if (_shortBio == nil){
            
            _shortBio = "---"
        }
        return _shortBio
    }
    var photoUrl:String{
        if (_photoUrl == nil){
            
            _photoUrl = "---"
        }
        return _photoUrl
    }
    var backgroundUrl:String{
        if (_backgroundUrl == nil){
            
            _backgroundUrl = "---"
        }
        return _backgroundUrl
    }
    var isEmailVerifid:Int?{
        if (_isEmailVerifid == nil){
            
            return nil
        }
        return _isEmailVerifid
    }
    var connectionCount:Int?{
        if (_connectionCount == nil){
            
            return nil
        }
        return _connectionCount
    }
    var isAdmin:Int?{
        if (_isAdmin == nil){
            
            return nil
        }
        return _isAdmin
    }
    var isOnline:Int?{
        if (_isOnline == nil){
            
            return nil
        }
        return _isOnline
    }
}
