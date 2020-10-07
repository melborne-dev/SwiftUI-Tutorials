//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Melborne on 05/10/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
