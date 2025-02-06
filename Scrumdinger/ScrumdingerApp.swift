//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Miro Mathys on 28.01.2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
