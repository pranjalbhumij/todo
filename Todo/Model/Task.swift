//
//  Task.swift
//  Todo
//
//  Created by Pranjal Bhumij on 20/12/24.
//

import Foundation

enum Priority: String, CaseIterable, Comparable, Codable {
    case high = "high"
    case medium = "medium"
    case low = "low"
    
    static func < (lhs: Priority, rhs: Priority) -> Bool {
        Self.allCases.firstIndex(of: lhs)! < Self.allCases.firstIndex(of: rhs)!
    }
    
}

struct Task: Identifiable, Codable {
    var id: String
    var title: String
    var priority: Priority
}
