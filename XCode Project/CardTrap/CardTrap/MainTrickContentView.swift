//
//  ContentView.swift
//  CardTrap
//
//  Created by Colby Beach on 9/27/21.
//

import SwiftUI

struct MainTrickView: View {
    
    @Binding var homeScreen : Bool
    @Binding var mainTrickView : Bool
    
    @State var cardImage = ""
    @State var backImage = ""
    @State var backImageHold = ""
    @State var bgIMG = ""
    
    @State var opacityAmt = 1.0
    
    var offsetButton = CGSize(
        width: CGFloat.init(-190),
        height: CGFloat.init(-290)
    )
    
    @State var handler = Color.clear
    
    @State private var location: CGPoint = CGPoint(x: 800, y: 300)
    @GestureState private var fingerLocation: CGPoint? = nil
    @GestureState private var startLocation: CGPoint? = nil // 1
     
     var simpleDrag: some Gesture {
         DragGesture()
             .onChanged { value in
                 var newLocation = startLocation ?? location // 3
                
                withAnimation{
                    newLocation.x += value.translation.width
                    newLocation.y += value.translation.height
                    self.location = newLocation
                }
              
             }.updating($startLocation) { (value, startLocation, transaction) in
                 startLocation = startLocation ?? location // 2
             }
            .onEnded{value in
                var newLocation = startLocation ?? location // 3

                withAnimation{
                    newLocation.x += value.translation.width * 1.1
                    self.location = newLocation
                }
            }
     }
     
     var fingerDrag: some Gesture {
         DragGesture()
             .updating($fingerLocation) { (value, fingerLocation, transaction) in
                 fingerLocation = value.location
             }
            
     }
    
    
    var body: some View {
                        
        VStack {
            
            ZStack{
                
                //Loads Card Image First To Stop Dissapear Bug
                ImageWithURL(cards[cardImage]!)
                    .opacity(0);

                                               
                ImageWithURL(backImage)
                    .frame(width: 380, height: 550)
                    .opacity(opacityAmt)
                    .position(location)
                    .gesture(
                        simpleDrag.simultaneously(with: fingerDrag)
                    )
                    .onTapGesture(count: 2) {
                        
                        if(backImage != cards[cardImage]!){

                            backImage = cards[cardImage]!
                        }else{
                            backImage = backImageHold
                        }
                        
                    }

                
                Button(action: {
                    homeScreen = true
                    mainTrickView = false
                    handler = Color.red
                }, label: {
                    Text("")
                        .frame(width: 50, height: 50)
                })
                .background(handler)
                .offset(offsetButton)
            }

          
            Spacer()
            
            HStack{
                Button(action: {
                                        
                    withAnimation {
                        self.location = CGPoint(x: 200, y: 300)
                    }
                }, label: {
                    Text("")
                        .frame(width: 250, height: 100)


                })
                
                Spacer()
                
                Button(action: {
                    
                    withAnimation{
                        if(opacityAmt > 0){
                            opacityAmt = 0
                        }else{
                            opacityAmt = 1
                        }
                    }
                }, label: {
                    Text("")
                        .frame(width: 250, height: 100)

                })
            }
            
        
            
            
        }
        .background(
            Image(bgIMG)
                .resizable()
                .frame(width: 440, height: 930)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
        
     
    }
}
