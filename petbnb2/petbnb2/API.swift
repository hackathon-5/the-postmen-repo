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
      Alamofire.request(.GET, "http://52.21.208.5:9000/test")
        .responseString { request, response, data, error in
            completionHandler(data)
        }
    }
}
