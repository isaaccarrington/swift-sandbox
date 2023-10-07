//
//  PreviewHelpApp.swift
//  PreviewHelp
//
//  Created by Isaac Carrington on 1/10/23.
//

import SwiftUI

@main
struct PreviewHelpApp: App {
    @State private var banana = Banana()
    @State var favourite = Favourites()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(favourite)
                .environment(banana)
        }
    }
}
