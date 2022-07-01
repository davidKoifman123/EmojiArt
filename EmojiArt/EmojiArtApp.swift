//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Work on 20/6/22.
//

import SwiftUI

@main
struct EmojiArtApp: App {
   @StateObject var document = EmojiArtDocument()
   @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
                .environmentObject(paletteStore)
        }
    }
}
