//
//  File.swift
//  
//
//  Created by Ita on 7/6/20.
//

import Foundation

public extension Decodable {
    static var className: String {
        return String(describing: self).lowercased()
    }
}

public extension Decodable where Self: Encodable {
    static var className: String {
        return String(describing: self).lowercased()
    }
}
public extension Encodable {
    static var className: String {
        return String(describing: self).lowercased()
    }

}
