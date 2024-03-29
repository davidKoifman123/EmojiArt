//
//  PaletteManager.swift
//  EmojiArt
//
//  Created by Work on 2/7/22.
//

import SwiftUI

struct PaletteManager: View {
    @EnvironmentObject var store: PaletteStore
    @Environment(\.presentationMode) var presentationMode
    
    @State private var editMode: EditMode = .inactive
    
    var body: some View {
        NavigationView {
          List {
            ForEach(store.palettes) { palette in
                NavigationLink(destination: PaletteEditor(palette: $store.palettes[palette])) {
                 VStack(alignment: .leading) {
                    Text(palette.name).font(editMode == .active ? .largeTitle : .caption)
                    Text(palette.emojis)
               }
                 .gesture(editMode == .active ? tap : nil)
            }
          }
            .onDelete { indexSet in
                store.palettes.remove(atOffsets: indexSet)
            }
            .onMove { index, newOffset in
                store.palettes.move(fromOffsets: index, toOffset: newOffset)
            }
       }
          .navigationTitle("Manage Palettes")
          .navigationBarTitleDisplayMode(.inline)
          .dismissable { presentationMode.wrappedValue.dismiss() }
          .toolbar {
              ToolbarItem { EditButton() }
          }
          .environment(\.editMode, $editMode)
     }
   }
    
    var tap: some Gesture {
        TapGesture().onEnded {
            
        }
    }
}

struct PaletteManager_Previews: PreviewProvider {
    static var previews: some View {
        PaletteManager()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
            .environmentObject(PaletteStore(named: "Preview"))
            .preferredColorScheme(.light)
    }
}
