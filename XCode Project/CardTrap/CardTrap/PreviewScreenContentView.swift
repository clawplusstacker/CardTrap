//
//  PreviewScreenContentView.swift
//  CardTrap
//
//  Created by Colby Beach on 9/29/21.
//

import Foundation
import SwiftUI



struct PreviewScreenView : View {
    

    
    @Binding var mainTrickView : Bool
    @Binding var selectedCard : String
    @Binding var selectedBack : String
    @Binding var selectedBG : String
    
    
    var values = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    var suits = ["Clubs", "Spades", "Diamonds", "Hearts"]
    
    
    @State private var selectedValue = "Ace"
    @State private var selectedSuit = "Clubs"
    @State private var selectedDesign = "https://i.pinimg.com/originals/8e/85/d9/8e85d9446961086853d8f6b7821f44d4.jpg"
    @State private var selectedBGIMG = "backgroundImage1"

    
    var body: some View{
        
        NavigationView{
            
            Form{
                Section{
                    
                    Picker(selection: $selectedValue, label:
                           Text("Card Value")
                    
                    ) {
                        ForEach(values, id: \.self) {
                            Text($0)
                                .foregroundColor(Color.red)

                        }
                    }
                    .padding()
                    
                    Picker(selection: $selectedSuit, label:
                            Text("Card Suit")

                    ) {
                       ForEach(suits, id: \.self) {
                           Text($0)
                            .foregroundColor(Color.red)

                       }
                    }
                    .padding()
                }
            
            
                Section{
                    Picker(selection: $selectedDesign, label:
                            Text("Back Design")

                    ) {
                        ForEach(cardBacks.sorted(by: >), id: \.value) { key, value in
                            ImageWithURL(value)
                                .frame(width: 100, height: 150)
                       }
                    }
                }
                
                Section{
                    Picker(selection: $selectedBGIMG, label:
                            Text("Background Image")

                    ) {
                        ForEach(backgrounds.sorted(by: >), id: \.value) { key, value in
                            Image(value)
                                .resizable()
                                .frame(width: 80, height: 150)
                       }
                    }
                }
            }
            .navigationBarTitle(Text("Setup"))


        }
        .accentColor(Color.white)

     

            
        HStack{
            
            Button(action: {
                if(selectedValue == "10"){
                    selectedValue = "Ten"
                }
                selectedBack = selectedDesign
                selectedBG = selectedBGIMG
                selectedCard = selectedValue[0] + selectedSuit[0]
                mainTrickView = true
                
            }, label: {
                Text("START!")
                    .frame(width: 350, height: 50)
            })
             .font(.headline)
             .foregroundColor(.white)
             .padding()
             .frame(width: 350, height: 50)
             .background(Color.red)
             .cornerRadius(15.0)
            .padding(.bottom, 50)
            
        }

       
    }
}
