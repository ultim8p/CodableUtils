//
//  File.swift
//  
//
//  Created by Guerson Perez on 23/07/20.
//

import Foundation

public extension Encodable {
    func modelValue(for key: String) -> Any? {
        let dict = self.toDictionary()
        return dict[key]
    }
    func modelStringValue(for key: String) -> String? {
        return modelValue(for: key) as? String
    }
    func modelIntValue(for key: String) -> Int? {
        return modelValue(for: key) as? Int
    }
    func modelBoolValue(for key: String) -> Bool? {
        return modelValue(for: key) as? Bool
    }
    func modelDateValue(for key: String) -> Date? {
        return modelValue(for: key) as? Date
    }
    func modelDoubleValue(for key: String) -> Double? {
        return modelValue(for: key) as? Double
    }
}
