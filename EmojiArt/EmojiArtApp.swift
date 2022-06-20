//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Work on 20/6/22.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
