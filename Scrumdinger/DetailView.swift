//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Miro Mathys on 05.02.2025.
//

import SwiftUI
    
struct DetailView: View {
    let scrum: DailyScrum

    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: ContentView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                //VoiceOver then reads the two elements as one statement, for example, “Length, 10 minutes.” Without the modifier, VoiceOver users have to swipe again between each element.
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                    Spacer()
                    Text(scrum.theme.name)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
    }
}
    
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
