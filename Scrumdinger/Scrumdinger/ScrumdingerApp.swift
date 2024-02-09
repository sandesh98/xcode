//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Sandesh Boedhoe on 05/02/2024.
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
