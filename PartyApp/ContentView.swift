//
//  ContentView.swift
//  PartyApp
//
//  Created by Vivaan Baid on 15/08/22.
//

import SwiftUI

//first commit

struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        GeometryReader { mine in
            ZStack{
                Color("BackgroundPurple")
                    .ignoresSafeArea()
                VStack(alignment: .center,spacing: 20){
                    Text("Find the party for you tonight.")
                        .font(.system(size: 45))
                        .bold()
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 35)
                                .fill(LinearGradient(colors: [Color("PartyBlue"),Color("partyPink")], startPoint: .leading, endPoint: .trailing))
//                            VStack() {
//                                SearchBar(text: .constant(""))
//                                    .frame(width: mine.size.width*0.85, height: mine.size.height*0.01, alignment: .center)
//                                    .padding()
//                                ScrollView(.horizontal){
//                                    HStack{
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                        Circle()
//                                            .frame(width: 50, height: 50, alignment: .center)
//
//                                    }
//                                }
//
//                            }
                        }
                    }
                    .frame(width: mine.size.width*0.85, height: mine.size.height*0.25, alignment: .center)
                    Spacer()
                    
                }
                //end of top v stack
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
