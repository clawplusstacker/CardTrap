//
//  PreviewScreenContentView.swift
//  CardTrap
//
//  Created by Colby Beach on 9/29/21.
//

import Foundation
import SwiftUI



struct PreviewScreenView : View {
    
    @Binding var cardDissapear : Bool
    @Binding var cardSwipe : Bool
    
    var values = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    var suits = ["Clubs", "Spades", "Diamonds", "Hearts"]
    
    @State private var selectedValue = "Ace"
    @State private var selectedSuit = "Clubs"

    
    var body: some View{
        
        Text("Choose a Value")
        
        Picker("Please choose a Value", selection: $selectedValue) {
                       ForEach(values, id: \.self) {
                           Text($0)
                       }
                   }
        .padding()
        
        Text("Choose a Suit")

        
        Picker("Please choose a Suit", selection: $selectedSuit) {
                       ForEach(suits, id: \.self) {
                           Text($0)
                       }
                   }
        .padding()

        
        HStack{
            
            Button(action: {
                
                cardDissapear = true
                
            }, label: {
                Text("Dissapear Mode")
            })
            .padding()
            
            Button(action: {
                
                cardSwipe = true
                
            }, label: {
                Text("Swipe Mode")
            })
            
        }
       
    }
}
