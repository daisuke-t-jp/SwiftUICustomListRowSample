//
//  Issue.swift
//  SwiftUICustomListRowSample
//
//  Created by Daisuke TONOSAKI on 2019/11/20.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct Issue: Hashable, Codable, Identifiable {
    
    enum Label: Int, CaseIterable, Codable, Hashable {
        case enhancement
        case bug
        case question
    }
    
    enum Priority: Int, CaseIterable, Codable, Hashable {
        case low
        case middle
        case high
    }
    
    static let labelColorMap: [Label: Color] = [
        .enhancement: Color.init(red: 1.0, green: 1.0, blue: 1.0),
        .bug: Color.init(red: 1.0, green: 1.0, blue: 1.0),
        .question: Color.init(red: 1.0, green: 1.0, blue: 1.0),
    ]
    
    static let priorityColorMap: [Priority: Color] = [
        .low: Color.init(red: 0.8, green: 0.9, blue: 1.0),
        .middle: Color.init(red: 1.0, green: 1.0, blue: 1.0),
        .high: Color.init(red: 1.0, green: 0.75, blue: 0.75),
    ]
    
    static let labelMarkMap: [Label: String] = [
        .enhancement: "✨",
        .bug: "🐝",
        .question: "❓",
    ]
    
    var id: Int
    var label: Label = .enhancement
    var priority: Priority = .middle
    var title: String = ""
}
