//
//  ContentView.swift
//  CardTrap
//
//  Created by Colby Beach on 9/27/21.
//

import SwiftUI

struct CardDissapearView: View {
    
    @Binding var homeScreen : Bool
    @Binding var cardDissapear : Bool

    @State var image = "cardBack"
    
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
                 newLocation.x += value.translation.width
                 newLocation.y += value.translation.height
                 self.location = newLocation
             }.updating($startLocation) { (value, startLocation, transaction) in
                 startLocation = startLocation ?? location // 2
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
                
                
                Image(image)
                
                    .resizable()
                    .frame(width: 380, height: 550, alignment: .center)
                    .position(location)
                    .gesture(
                        simpleDrag.simultaneously(with: fingerDrag)
                    )
                    .onTapGesture(count: 2) {
                        image = ""
                    }
                    
                
                Button(action: {
                    homeScreen = true
                    cardDissapear = false
                    handler = Color.red
                }, label: {
                    Text("")
                        .frame(width: 50, height: 50)
                })
                .background(handler)
                .offset(offsetButton)
            }

          
            Spacer()
            
            Button(action: {
                
                withAnimation {
                    self.location = CGPoint(x: 200, y: 300)
                }
            }, label: {
                Text("")
                    .frame(width: 500, height: 100)

            })
            
            
        }
        .background(
            Image("backgroundImage2")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        
     
    }
}

//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
