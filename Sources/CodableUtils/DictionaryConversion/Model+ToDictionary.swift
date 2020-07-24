//
//  File.swift
//  
//
//  Created by Guerson Perez on 21/07/20.
//

import Foundation

public extension Encodable {

    func toDictionary(encoder: JSONEncoder? = nil) -> [String: Any] {
        do {
            let jsonEncoder = encoder ?? defaultJSONEncoder
            let data = try jsonEncoder.encode(self)

            if let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return dict
            }
        } catch {
            print("ERROR Converting model to dict")
        }
        return [:]
    }

}
