//
//  Blogger.swift
//  FirstDemo
//
//  Created by Ramazan Gasratov on 31.05.2024.
//

import Foundation

struct Blogger {
    func makeHeadline(from input: String) -> String {
        return input.capitalized
    }
    
    func reversString(from input: String) -> String {
        return String(input.reversed())
    }
    
    func headLineToFileName(from input: String) -> String {
        return input
        .lowercased()
        .replacingOccurrences(of: " ", with: "_")
    }
}
