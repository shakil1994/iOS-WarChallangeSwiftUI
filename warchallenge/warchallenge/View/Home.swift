//
//  Home.swift
//  warchallenge
//
//  Created by Md Shah Alam on 10/16/21.
//

import SwiftUI

struct Home: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .frame(height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    //Generate a random number between 2 and 13
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update the score
                    if(playerRand > cpuRand){
                        playerScore += 1
                    }
                    else if(cpuRand > playerRand){
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor((Color.white))
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor((Color.white))
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor((Color.white))
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle).foregroundColor((Color.white))
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}
