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
    
    @State private var cardDissapear = false
    @State private var cardSwipe = false

    
    var body: some View{
        
      if cardDissapear{
            
            CardDissapearView(homeScreen: $homeScreenSelected, cardDissapear: $cardDissapear)
            
            
        }else if cardSwipe {
            
            
        }else if homeScreenSelected {
            
            HomeScreenView(cardDissapear: $cardDissapear, cardSwipe: $cardSwipe)
            
        }
        
    }
}
struct HomeScreenView : View {
    
    @State private var showingPreviewScreen = false
    @State private var showingSettingsScreen = false
    
    @Binding var cardDissapear : Bool
    @Binding var cardSwipe : Bool


    
    var body: some View {
        
        
        Text ("CardTrap")
        
        
        Button(action: {
            
            showingPreviewScreen.toggle()
            
        }, label: {
            Text("Start!")
        })
        
        .sheet(isPresented: $showingPreviewScreen, content: {
            PreviewScreenView(cardDissapear: self.$cardDissapear, cardSwipe: self.$cardSwipe)
        })
        
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Tutorial")
        })
        
        
        Button(action: {
            
            showingSettingsScreen.toggle()
            
        }, label: {
            Text("Settings")
        })
        .sheet(isPresented: $showingSettingsScreen, content: {
            SettingsView()
        })
        
        
    }
    
}
