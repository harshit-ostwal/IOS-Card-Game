//
//  ContentView.swift
//  Card Game
//
//  Created by Harshit Jain on 09/11/24.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card2")
                    
                    Spacer()
                    
                    //Card2
                    Image("card5")
                
                    Spacer()
                    
                }
                
                Spacer()
                
                //Button
                Image("button")
                
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
                        Text("0")
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
                        Text("0")
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                    
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
