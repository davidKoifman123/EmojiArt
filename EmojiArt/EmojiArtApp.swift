//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Work on 20/6/22.
//

import SwiftUI

@main
struct EmojiArtApp: App {
   @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
