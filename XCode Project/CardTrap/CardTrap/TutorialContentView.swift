//
//  TutorialContentView.swift
//  CardTrap
//
//  Created by Colby Beach on 10/6/21.
//

import Foundation
import SwiftUI

struct TutorialView : View {
    
    private var tutImgs = ["tut1", "tut2", "tut3", "tut4"]

    
    var body: some View{
        
        NavigationView{
            
            VStack{
                
                Divider()
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                
                TabView {
                    
                    ForEach(tutImgs, id: \.self) { item in
                         //3
                         Image(item)
                            .resizable()
                            .frame(width: 300, height: 600)
                            .scaledToFill()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
            }
      
            
            .navigationBarTitle("Tutorial")
        }
        
    }
}
