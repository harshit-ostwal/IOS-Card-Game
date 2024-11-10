//
//  ContentView.swift
//  Card Game
//
//  Created by Harshit Jain on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    @State var showAlert = false
       
    
    var body: some View {
        
        ZStack{
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
            
                Spacer()
                
                //Logo
                Image("logo")
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    //Card1
                    Image(playerCard)
                    
                    Spacer()
                    
                    //Card2
                    Image(cpuCard)
                
                    Spacer()
                    
                }
                
                Spacer()
                
                //Button
                Button {
                   dealCards()
                } label: {
                    Image("button")
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Game Over!!"),
                        dismissButton: .default(Text("OK")){
                            playerScore = 0
                            cpuScore = 0
                            playerCard = "back"
                            cpuCard = "back"
                        }
                    )
                }

                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    //Player
                    VStack{
                        Text("Player")
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding()
                            .foregroundColor(.white)
                        Text(String(playerScore))
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    //CPU
                    VStack{
                        Text("CPU")
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding()
                            .foregroundColor(.white)
                        Text(String(cpuScore))
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                    
            }
            
        }
        
    }
    
    func dealCards(){
        let playerCardId:Int = Int.random(in: 2...14)
        let cpuCardId:Int = Int.random(in: 2...14)
        
        //Randomize The Player's Cards
        playerCard = "card" + String(playerCardId)
        
        //Randomize The CPU's Cards
        cpuCard = "card" + String(cpuCardId)
        
        //Update The Score's
        if(playerCardId > cpuCardId)
        {
            //Increment The Score Of Player Card By 1
            playerScore += 1
        }
        else if playerCardId < cpuCardId
        {
            //Increment The Score Of CPU Card By 1
            cpuScore += 1
        }
        else if playerCardId == cpuCardId
        {
            //Increment The Score Of Both Player & CPU By 1
            showAlert = true
        }
        else{
            //Make The Default Score Of Both Player & CPU Equal To 0
            playerScore = 0
            cpuScore = 0
        }
    }
}

#Preview {
    ContentView()
}
