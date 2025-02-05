//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Miro Mathys on 28.01.2025.
//

import Foundation

//To work with user-generated content, you’ll make DailyScrum conform to the Identifiable protocol for a more robust way to communicate identity. The protocol has one requirement: an id property that provides a stable identifier for the entity.
struct DailyScrum: Identifiable {
    let id: UUID
    
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

// Wie ein DailyScrum aussieht für jedes Team


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5,
                   theme: .poppy)
        
//Die Verschiedenen Teams
    ]
}
