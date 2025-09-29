//
//  ContentView.swift
//  Memorize
//

import SwiftUI


struct ContentView: View{
    // can use array here another method is let emojis: [String] = ["👻","🎃","👺","🙈"] is absoulate same as using array
    var body: some View {
        let emojis: [String] = ["👻","🎃","👺","🙈"]// array is list of different strings and int// do not use last array file like emoji[4], use number from starting 0
        HStack {
            // for each is used to display views
            // use foreach(emojis.indices,id:\.self)
            // indices use to add views in ascending or increasing order
            ForEach(emojis.indices,id:\.self){
                index in CardView(content: emojis[index])
            }
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

