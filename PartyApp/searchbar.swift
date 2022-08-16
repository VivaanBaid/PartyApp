//
//  searchbar.swift
//  PartyApp
//
//  Created by Vivaan Baid on 16/08/22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("", text: $text)
                .onTapGesture {
                    self.isEditing = true
                }
        }
        .foregroundStyle(.white)
        .padding(.vertical,5)
        .padding(.horizontal, 20)
        .background(Color.accentColor)
        .opacity(0.35)
        .cornerRadius(35)
        
        
    }
}

struct searchbar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
