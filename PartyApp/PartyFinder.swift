//
//  PartyFinder.swift
//  PartyApp
//
//  Created by Vivaan Baid on 16/08/22.
//

import SwiftUI

struct PartyFinder: View {
    @State private var searchText = ""
    var body: some View {
        GeometryReader { mine in
            VStack(alignment: .center,spacing: 20){
                Text("Find the party for you tonight.")
                    .font(.system(size: 45))
                    .bold()
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.center)
                ZStack {
                    RoundedRectangle(cornerRadius: 35)
                        .fill(LinearGradient(colors: [Color("PartyBlue"),Color("partyPink")], startPoint: .leading, endPoint: .trailing))
                        .frame(width: mine.size.width*0.9, height: mine.size.height*0.2, alignment: .center)
                    Text("Hi")
                        .searchable(text: $searchText)
                }
                Spacer()
            }
        }
    }
}

struct PartyFinder_Previews: PreviewProvider {
    static var previews: some View {
        PartyFinder()
            .previewLayout(.sizeThatFits)
    }
}
