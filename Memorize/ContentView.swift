//
//  ContentView.swift
//  Memorize
//

import SwiftUI


struct ContentView: View{
    
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView()
            CardView()
            }
            .foregroundColor(Color.orange)
            .padding()
        }
    }

#Preview {
    ContentView()
}
struct CardView: View {
    @State var isFaceUp = false
    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                base.fill(.white)
                base
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                Text("🙈")
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
