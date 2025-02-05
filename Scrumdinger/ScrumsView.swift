//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Miro Mathys on 05.02.2025.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums, id: \.title) { scrum in
            //{ scrum in ... }: Dies ist ein Closure, das für jedes Element in der scrums-Liste aufgerufen wird. Das aktuelle Element wird als scrum bezeichnet.
            CardView(scrum: scrum)
            //CardView(scrum: scrum): Für jedes scrum wird eine CardView erstellt, die wahrscheinlich eine benutzerdefinierte Ansicht ist, die die Details des DailyScrum anzeigt.
                .listRowBackground(scrum.theme.mainColor)
            //.listRowBackground(scrum.theme.mainColor): Diese Modifikation setzt die Hintergrundfarbe der Listenzeile auf die Hauptfarbe des Themas des jeweiligen scrum.

        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
