//
//  DataController.swift
//  petbnb2
//
//  Created by Merric Huffstutler on 8/29/15.
//  Copyright (c) 2015 postmen. All rights reserved.
//

import Foundation
import Alamofire

class API {
    func getUserType(username: String, password: String, completionHandler:(String!) ->()) -> (){

      Alamofire.request(.GET, "http://52.21.208.5:9000/user/ \(username)")
        .responseString { request, response, data, error in
            completionHandler(data)
        }
    }
    
    func createUser(username: String, password: String, userType: String, completionHandler:(NSError!) ->()) -> (){
        let parameters = [
            "username" : username,
            "password" : password,
            "userType" : userType
        ]
        Alamofire.request(.POST, "http://52.21.208.5:9000/user", parameters: parameters, encoding: .JSON)
            .responseString { request, response, data, error in
                completionHandler(error)
        }
    }
}
