//
//  ContentView.swift
//  Memorize
//
//  Created by Edmond Phillips on 12/3/21.
//

import SwiftUI
// Keywords are in magenta


struct ContentView: View {
    var emojis = ["🤡", "🐷", "🐐", "🙅", "🍕", "🥟", "🥘", "🍔", "🧊", "🍶", "🍻", "🫖", "🍽", "🍯"]
    
    @State var emojicount: Int = 14
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojicount], id: \.self) {emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                }
            .foregroundColor(.red)
            Spacer()
            HStack {
                Spacer()
            }
            .foregroundColor(.blue)
            .font(.largeTitle)
            .padding(.horizontal)
        }
            .padding(.horizontal)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp}
    }
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
