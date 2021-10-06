//
//  HomeScreenContentView.swift
//  CardTrap
//
//  Created by Colby Beach on 9/29/21.
//

import Foundation
import SwiftUI

struct HomeScreenToCardContent : View {
    
    @State private var homeScreenSelected = true
    
    @State private var mainTrickView = false
    
    @State var selectedCard = ""
    @State var selectedBack = ""
    @State var selectedBGIMG = ""

    
    
    var body: some View{
        
      if mainTrickView{
            
        MainTrickView(homeScreen: $homeScreenSelected, mainTrickView: $mainTrickView, cardImage: selectedCard, backImage: selectedBack, backImageHold: selectedBack, bgIMG: selectedBGIMG)
            
            
        }else if mainTrickView {
            
            
        }else if homeScreenSelected {
            
            HomeScreenView(mainTrickView: $mainTrickView, selectedCard: $selectedCard, selectedBack: $selectedBack, selectedBGIMG: $selectedBGIMG)
            
        }
        
    }
}
struct HomeScreenView : View {
    
    @State private var showingPreviewScreen = false
    @State private var showingTutorialScreen = false
    
    @Binding var mainTrickView : Bool
    @Binding var selectedCard : String
    @Binding var selectedBack : String
    @Binding var selectedBGIMG : String



    
    var body: some View {
        
        VStack{

            HStack{
                Text("Card")
                    .foregroundColor(Color.red)
                    .font(.system(size: 95))
                    .padding(.top, 150)
                    .shadow(radius: 10)
                    .blur(radius: 2)
                Text("Trap")
                    .foregroundColor(Color.white)
                    .font(.system(size: 95))
                    .padding(.top, 150)
                    .shadow(radius: 10)
                    .blur(radius: 2)

            }
         

            Spacer()
            
            Button(action: {
                
                showingPreviewScreen.toggle()
                
            }, label: {
                Text("START")
                    .frame(width: 350, height: 50)
            })
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.clear)
                .border(Color.white, width: 5)
                .cornerRadius(15.0)
            
            .sheet(isPresented: $showingPreviewScreen, content: {
                PreviewScreenView(mainTrickView: self.$mainTrickView, selectedCard: $selectedCard, selectedBack: $selectedBack, selectedBG: $selectedBGIMG)
            })
            
            
            Button(action: {
                
                showingTutorialScreen.toggle()
                
                
            }, label: {
                Text("TUTORIAL")
                    .frame(width: 350, height: 50)
            })
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.clear)
                .border(Color.white, width: 5)
                .cornerRadius(15.0)
               .padding(.bottom, 50)
            
            .sheet(isPresented: $showingTutorialScreen, content: {
                TutorialView()
            })
        }
        
        
        .background(
            Image("homeScreenImage2")
                .resizable()
                .frame(width: 440, height: 930)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
        

        
        
        
    }
    
}
