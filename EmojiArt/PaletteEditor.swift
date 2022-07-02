//
//  PaletteEditor.swift
//  EmojiArt
//
//  Created by Work on 2/7/22.
//

import SwiftUI

struct PaletteEditor: View {
    @Binding var palette: Palette
    
    var body: some View {
        Form {
            TextField("Name", text: $palette.name)
        }
        .frame(minWidth: 300, minHeight: 350)
    }
}

struct PaletteEditor_Previews: PreviewProvider {
    static var previews: some View {
        Text("Fix Me!")
  //      PaletteEditor()
            .previewLayout(.fixed(width: 300, height: 350))
    }
}
