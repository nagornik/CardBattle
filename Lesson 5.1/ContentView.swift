//
//  ContentView.swift
//  Lesson 5.1
//
//  Created by Anton Nagornyi on 19.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
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
                
                Button {
                   
                    generateCards()
                    
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                
            HStack{
                
                Spacer()
                VStack{
                    Text("Player")
                        .font(.headline)
                        .padding(.bottom)
                    Text(String(playerScore))
                        .font(.largeTitle)
                }
                Spacer()
                VStack{
                    Text("CPU")
                        .font(.headline)
                        .padding(.bottom)
                    Text(String(cpuScore))
                        .font(.largeTitle)
                }
                Spacer()
            }
            .foregroundColor(Color.white)
            Spacer()
            }
        }
        .ignoresSafeArea()
    }
    
    
    func generateCards() {
        // Generate a random number between 2 and 14
        let randPlayerCard = Int.random(in: 2...14)
        let randCpuCard = Int.random(in: 2...14)
        
        // Update the cards
        playerCard = "card" + String(randPlayerCard)
        cpuCard = "card" + String(randCpuCard)
    
        // Update the score
        if randPlayerCard > randCpuCard {
            playerScore += 1
        }
        else if randPlayerCard < randCpuCard {
            cpuScore += 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
