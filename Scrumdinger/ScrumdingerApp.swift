//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Miro Mathys on 28.01.2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
