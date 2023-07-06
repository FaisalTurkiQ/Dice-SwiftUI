//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Faisal on 06/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber  = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(n:leftDiceNumber)
                    DiceView(n:rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Capsule()
                    .frame(width: 150.0, height: 80.0)
                    .overlay(
                Button {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                }
                    .padding(.horizontal)
                )
                    .foregroundColor(Color(red: 0.56, green: 0.10, blue: 0.11))
                    .padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView : View {
    let n : Int
    var body: some View {
            Image("dice\(n)")
                .resizable()
                .aspectRatio(1,contentMode: .fit)
                .padding()

    }
}
