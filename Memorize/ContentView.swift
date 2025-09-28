//
//  ContentView.swift
//  Memorize
//

import SwiftUI


struct ContentView: View{
    
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
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
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack{
            if isFaceUp{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.white)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                Text("🙈")
                    .font(Font.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.teal)
            }
        }
        
    }
}
