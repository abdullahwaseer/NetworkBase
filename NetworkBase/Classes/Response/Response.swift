//
//  Response.swift
//  TcigPlatformMobile
//
//  Created by M Abdullah Waseer on 17/05/2017.
//  Copyright © 2017 M Abdullah Waseer. All rights reserved.
//

import Foundation

public enum ResponseType : Int {
    case Success
    case Failure
}

open class Response {
    
    public var status : ResponseType = .Failure //private(set)
    var data : AnyObject?
    
    public init(data : [String : Any]?,parser : ParserBase) {
        let status = data?["status"] as? Int
        
        if let s = status {
            self.status = (s == 200 || s == 201) ? .Success : .Failure
        }
        
        if let d = data {
            self.data = parser.parseData(data: d)
        }
    }
}
