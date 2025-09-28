//
//  ContentView.swift
//  Memorize
//

import SwiftUI


struct ContentView: View{
    
    var body: some View {
        let emojis: Array<String> = ["👻","🎃","👺","🙈"]// array is list of different strings and int
        HStack {
            CardView(content: emojis[0], isFaceUp: false)
            CardView(content: emojis[1])
            CardView(content: emojis[3],isFaceUp: true)
            CardView(content: emojis[4],isFaceUp: true)
            }
            .foregroundColor(Color.orange)
            .padding()
        }
    }

#Preview {
    ContentView()
}
struct CardView: View {
    let content: String
    @State var isFaceUp = false
    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                base.fill(.white)
                base
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                Text(content)
                    .font(Font.largeTitle)
            }else{
                base
                    .foregroundStyle(Color.orange.opacity(0.3))
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            
        }
    }
}

