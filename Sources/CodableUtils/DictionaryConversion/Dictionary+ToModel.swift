//
//  File.swift
//  
//
//  Created by Ita on 7/2/20.
//

import Foundation

public extension Dictionary {
    func toModel<T: Codable>(_ type: T.Type, decoder: JSONDecoder? = nil) -> T? {
        do {
            let data = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
                
            let jsonDecoder = decoder ?? defaultJSONDecoder
            let obj = try jsonDecoder.decode(type, from: data)
            
            return obj
        } catch {
            return nil
        }
    }
}
