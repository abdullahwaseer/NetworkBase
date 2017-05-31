//
//  Request.swift
//  TcigPlatformMobile
//
//  Created by M Abdullah Waseer on 17/05/2017.
//  Copyright © 2017 M Abdullah Waseer. All rights reserved.
//

import Foundation
//import Alamofire

public enum RequestType : Int {
    case GET
    case POST
}

open class RequestBase {
    
    public init () {
        
    }
    
    /// host server base url
    ///
    /// - Returns: string
    public func hostUrl()->String {
        return staggingServer()
    }
    
    /// authorization required
    ///
    /// - Returns: yes/no
    public func isAuthRequired()->Bool {
        return true;
    }
    
    /// web service url
    ///
    /// - Returns: url
    public func url()->String {
        return hostUrl() + endPoint()
    }
    
    /// end point
    ///
    /// - Returns: string
    public func endPoint()->String {
        return ""
    }
    
    /// Returned parameters can be used as body or query parameters
    ///
    /// - Returns: dictionary
    public func parameters()->[String : AnyObject] {
        return [:]
    }
    
    /// Request type
    ///
    /// - Returns: request type
    public func requestType()->RequestType {
        return .GET
    }
    
    /// Parser to parse respective request
    ///
    /// - Returns: Parser
    public func parser()->ParserBase {
        return ParserBase()
    }
    
    
    /// device token
    ///
    /// - Returns: string
    public func deviceToken()->String {
        return ""
    }
    
    
    /// authorization header
    ///
    /// - Returns: dictionary
    public func authorizationHeader()->[String : String]? {
        
        return nil
    }
}

//MARK:- Private
extension RequestBase {
    public func staggingServer()->String {
        return ""
    }
    
    public func liveServer()->String {
        return ""
    }
}
