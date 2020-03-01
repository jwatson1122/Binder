//
//  MenuView.swift
//  Binder
//
//  Created by Joshua Watson on 2/25/20.
//  Copyright © 2020 Joshua Watson. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @State  private var showConnectionAlert = false;
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: "Workbook")
                    .frame(width: 100, height: 100)
                    .foregroundColor(.black)
                    .imageScale(.large)
                Text("Home")
                    .foregroundColor(.gray)
                    .font(.headline)

            }
            .padding(.top, 50)
            Button(action: {self.showConnectionAlert = true}) {
                HStack{
                    Image(systemName: "W1")
                        .foregroundColor(.black)
                        .imageScale(.large)
                        VStack {
                            Image ("menu").colorInvert()
                }
                    Text("Workbook One")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .padding(.top, 50)
            }
                    
                .alert(isPresented: $showConnectionAlert) {
                Alert(title: Text("Noice"), message: Text("Alert"),
                      dismissButton: Alert.Button.default(Text("OK"),
                                                          action: { self.showConnectionAlert = false }))
                }
             
            Button(action: {self.showConnectionAlert = true}) {
                HStack{
                    Image(systemName: "W2")
                        .foregroundColor(.white)
                        .imageScale(.large)
                            VStack {
                                Image("menu")
                    }
                    Text("Workbook Two")
                        .foregroundColor(.white)
                        .font(.headline)
                    }
                .padding(.top, 50)
            }
            .alert(isPresented: $showConnectionAlert) {
                Alert(title: Text("Noice"), message: Text("Alert"),
                      dismissButton: Alert.Button.default(Text("OK"),
                                                          action: { self.showConnectionAlert = false }))
            }
        
                        Spacer()
        }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color (red: 32/255, green: 32/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
    }

}


#if DEBUG
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
#endif

