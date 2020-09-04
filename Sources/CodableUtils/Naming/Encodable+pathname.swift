//
//  File.swift
//  
//
//  Created by Guerson on 2020-09-04.
//

import Foundation

public extension Encodable {
    var pathname: String {
        let fullType = "\(type(of: self))"
        let splitted = fullType.components(separatedBy: CharacterSet(charactersIn: "><."))
        let reservedM = ["Array", "Dictionary"]
        var shouldAddS = false
        for split in splitted {
            if reservedM.contains(split) {
                shouldAddS = true
            } else {
                if split != "Optional" {
                    let pathname = shouldAddS ? "\(split)s" : split
                    return pathname.lowercased()
                }
            }
        }
        return fullType
    }
}
