//
//  ContentView.swift
//  Binder
//
//  Created by Joshua Watson on 2/25/20.
//  Copyright © 2020 Joshua Watson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var showMenu = false
    
    var body: some View {
    
        
        
    let drag = DragGesture ()
            .onEnded {
                if $0.translation.width < -100 {
                withAnimation {
                self.showMenu = false
        }
    }
                
}
        
        return GeometryReader { geometry in
            ZStack(alignment: .leading){
                Mainview(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true:false)
                        if self.showMenu {
                            MenuView ()

                    .frame(width: geometry.size.width/2)
                    .transition(.move(edge: .leading))
                    
                }
            }
                    .gesture(drag)
          
        }
        
    }
    
    
    struct Mainview: View {

        
        
        @Binding var showMenu: Bool


        var body: some View {
            
            Button(action: {
                withAnimation {
                self.showMenu = true
                }
            }){
                Text("My Notebooks")
                    .foregroundColor(Color.red)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
        
        }
        
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        }
    }
}
