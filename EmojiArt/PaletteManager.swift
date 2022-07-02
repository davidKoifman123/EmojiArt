//
//  PaletteManager.swift
//  EmojiArt
//
//  Created by Work on 2/7/22.
//

import SwiftUI

struct PaletteManager: View {
    @EnvironmentObject var store: PaletteStore
    
    var body: some View {
        NavigationView {
          List {
            ForEach(store.palettes) { palette in
                NavigationLink(destination: PaletteEditor(palette: $store.palettes[palette])) {
                 VStack(alignment: .leading) {
                    Text(palette.name)
                    Text(palette.emojis)
               }
            }
          }
       }
          .navigationTitle("Manage Palettes")
     }
   }
}

struct PaletteManager_Previews: PreviewProvider {
    static var previews: some View {
        PaletteManager()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
            .environmentObject(PaletteStore(named: "Preview"))
    }
}
