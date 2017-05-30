//
//  Request.swift
//  TcigPlatformMobile
//
//  Created by M Abdullah Waseer on 17/05/2017.
//  Copyright © 2017 M Abdullah Waseer. All rights reserved.
//

import Foundation
//import Alamofire

enum RequestType : Int {
    case GET
    case POST
}

public class RequestBase {
    
    /// host server base url
    ///
    /// - Returns: string
    func hostUrl()->String {
        return staggingServer()
    }
    
    /// authorization required
    ///
    /// - Returns: yes/no
    func isAuthRequired()->Bool {
        return true;
    }
    
    /// web service url
    ///
    /// - Returns: url
    func url()->String {
        return hostUrl() + endPoint()
    }
    
    /// end point
    ///
    /// - Returns: string
    func endPoint()->String {
        return ""
    }
    
    /// Returned parameters can be used as body or query parameters
    ///
    /// - Returns: dictionary
    func parameters()->[String : AnyObject] {
        return [:]
    }
    
    /// Request type
    ///
    /// - Returns: request type
    func requestType()->RequestType {
        return .GET
    }
    
    /// Parser to parse respective request
    ///
    /// - Returns: Parser
    func parser()->ParserBase {
        return ParserBase()
    }
    
    
    /// device token
    ///
    /// - Returns: string
    func deviceToken()->String {
        return ""
    }
    
    
    /// authorization header
    ///
    /// - Returns: dictionary
    func authorizationHeader()->[String : String]? {
        
        return nil
    }
}

//MARK:- Private
extension RequestBase {
    func staggingServer()->String {
        return ""
    }
    
    func liveServer()->String {
        return ""
    }
}
