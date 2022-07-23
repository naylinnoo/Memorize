//
//  ContentView.swift
//  Memorize
//
//  Created by Nay Linn Oo on 7/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(content: "🚕")
            CardView(content: "🚄")
            CardView(content: "✈️")
            CardView(content: "🚀")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    
    var content: String = "Emoji"
    @State var isFaceUp: Bool = true
    
    
    var body: some View {
        
        ZStack {
            
            let Shape = RoundedRectangle(cornerRadius: 30)
            if isFaceUp {
                Shape.fill().foregroundColor(.white)
                Shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle).padding()
            }
            else{
                Shape
                    .fill()
            }
            
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark   )
    }
}
