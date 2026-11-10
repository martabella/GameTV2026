//
//  GameTV2026App.swift
//  GameTV2026
//
//  Created by Marta Bella on 2/11/26.
//

import SwiftUI

@main
struct GameTV2026App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environment(GameStore())
        }
    }
}
