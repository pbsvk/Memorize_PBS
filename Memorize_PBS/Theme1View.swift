//
//  Theme1View.swift
//  Memorize_PBS
//
//  Created by Bhaskara Sai Vamsi Krishna Padala on 10/9/24.
//

import SwiftUI

struct Theme1View: View {
    let emojis = ["👻", "🎃", "🦇","🧛","⚰️","🪄","🔮","🧿","🦄","🍭","🧙","🧌"]
    @State var cardCount = 4
    var body: some View {
                    // creates a vertically scrollable collection of views
                    // lazy implies that the views are only created when SwiftUI needs to display them
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                        ForEach(0..<cardCount, id: \.self) { index in
                            CardView(content: emojis[index])
                                .aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                    .foregroundColor(.orange)
                }            }
   


struct CardView: View {
    let content: String
    @State var isFaceUp = true
    let base = RoundedRectangle(cornerRadius: 12)
    
    var body: some View {
        ZStack {
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 8)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1:0)
            base.fill().opacity(isFaceUp ? 0:1)
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}


#Preview {
    Theme1View()
}
