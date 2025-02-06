//
//  Theme.swift
//  Scrumdinger
//
//  Created by Miro Mathys on 28.01.2025.
//

import SwiftUI


//enum Theme: String {
//    case bubblegum
//    case buttercup
//    case indigo
//    case lavender
//    case magenta
//    case navy
//    case orange
//    case oxblood
//    case periwinkle
//    case poppy
//    case purple
//    case seafoam
//    case sky
//    case tan
//    case teal
//    case yellow
    
//  var accentColor: Color {
//      switch self {
//     case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
//     case .indigo, .magenta, .navy, .oxblood, .purple: return .white
//     }
//   }
//  var mainColor: Color {
//      Color(rawValue)
//  }
//}
//Die Verschiedenen Farboptionen (Für die Verschiedenen Teams später)

//BLACKBOXAI Es sieht so aus, als ob das Problem mit der mainColor-Eigenschaft in deinem Theme-Enum zusammenhängt. Der Code, den du bereitgestellt hast, verwendet Color(rawValue), um die Hauptfarbe aus dem Enum-Wert zu erstellen. Das funktioniert jedoch nicht, da Color nicht direkt aus einem String-Wert initialisiert werden kann, es sei denn, du hast eine spezielle Implementierung dafür.
//----- Falsch

import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow:
            return .black
        case .indigo, .magenta, .navy, .oxblood, .purple:
            return .white
        }
    }
    
    var mainColor: Color {
        switch self {
        case .bubblegum: return Color.pink
        case .buttercup: return Color.yellow
        case .indigo: return Color.indigo
        case .lavender: return Color.purple
        case .magenta: return Color(red: 1.0, green: 0.0, blue: 1.0)
        case .navy: return Color.blue
        case .orange: return Color.orange
        case .oxblood: return Color.red // oder eine andere vordefinierte Farbe
        case .periwinkle: return Color.blue.opacity(0.5) // Beispiel für eine abgedunkelte Farbe
        case .poppy: return Color.red
        case .purple: return Color.purple //(red: 0.5, green: 0.0, blue: 0.5)
        case .seafoam: return Color.green
        case .sky: return Color.blue
        case .tan: return Color.brown
        case .teal: return Color.teal
        case .yellow: return Color.yellow
        }
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}

//Die Verschiedenen Farboptionen (Für die Verschiedenen Teams später)
