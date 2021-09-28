//
//  ContentView.swift
//  CardTrap
//
//  Created by Colby Beach on 9/27/21.
//

import SwiftUI

struct CardAnimationView: View {

    @State var image = "cardBack"

    @State var offset = CGSize(
        width: CGFloat.init(550),
        height: CGFloat.init(-50)
    )

    var body: some View {
        
        VStack {

            Image(image)
                .resizable()
                .frame(width: 380, height: 550, alignment: .center)
                .offset(offset)
                .onTapGesture(count: 2) {
                        image = ""
                    }
        
     
            Spacer()
            
            Button(action: {
                
                let moveToCenter = CGSize(
                    width: CGFloat.init(0),
                    height: CGFloat.init(0)
                )
                withAnimation {
                    self.offset = moveToCenter
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
