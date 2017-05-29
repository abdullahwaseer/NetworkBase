//
//  NetworkManager.swift
//  TcigPlatformMobile
//
//  Created by M Abdullah Waseer on 17/05/2017.
//  Copyright © 2017 M Abdullah Waseer. All rights reserved.
//

import Foundation
import Alamofire

class  NetworkManager {
    
    func executeRequest(request : RequestBase,
                        completionHandler:@escaping (_ apiResponse:Response)->Void) {
        
        var postType = HTTPMethod.get
            
        if request.requestType() == RequestType.POST {
            postType = HTTPMethod.post
        }
        
        
        Alamofire.request(request.url(), method: postType, parameters: request.parameters(), encoding: JSONEncoding.default, headers: request.authorizationHeader())
        
            .responseString { (response) in
            print(response)
        }
        
        .responseJSON { (response) in
            if response.result.isSuccess {
                
                if let jsonString:[String:AnyObject] = response.result.value as? [String:AnyObject] {
                    let responseObj = Response(data: jsonString, parser: request.parser())
                    completionHandler(responseObj)
                    
                } else {
                    completionHandler(Response(data: [String : AnyObject](), parser: request.parser()))
                }
                
            } else {
                completionHandler(Response(data: [String : AnyObject](), parser: request.parser()))
            }
        }
        
    }
}
