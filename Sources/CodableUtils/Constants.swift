//
//  File.swift
//  
//
//  Created by Guerson Perez on 23/07/20.
//

import Foundation

var defaultJSONDecoder: JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .millisecondsSince1970
    return decoder
}
var defaultJSONEncoder: JSONEncoder {
    let decoder = JSONEncoder()
    decoder.dateEncodingStrategy = .millisecondsSince1970
    return decoder
}
