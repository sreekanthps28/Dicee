//
//  ContentView.swift
//  Dicee
//
//  Created by SREEKANTH PS on 28/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var letftDiceViewNum:Int = 1
    @State var rightDiceViewNum:Int = 2
    
    var body: some View {
        ZStack{
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: letftDiceViewNum)
                    DiceView(n: rightDiceViewNum)
                }.padding(.horizontal)
                Spacer()
                Button("Roll") {
                    self.letftDiceViewNum = Int.random(in: 1...6)
                    self.rightDiceViewNum = Int.random(in: 1...6)
                }
                .foregroundColor(.white)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .padding(.horizontal)
                .background(.red)
                Spacer()
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
