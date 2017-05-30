//
//  Response.swift
//  Hasalty
//
//  Created by Usama on 1/29/17.
//  Copyright © 2017 Tess. All rights reserved.
//

import Foundation

public enum ResponseType : Int {
    case Success
    case Failure
}

open class Response {
    
    private(set) var status : ResponseType = .Failure
    var data : AnyObject?
    
    init(data : [String : Any]?,parser : ParserBase) {
        let status = data?["status"] as? Int
        
        if let s = status {
            self.status = (s == 200 || s == 201) ? .Success : .Failure
        }
        
        if let d = data {
            self.data = parser.parseData(data: d)
        }
    }
}
