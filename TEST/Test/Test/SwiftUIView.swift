//
//  SwiftUIView.swift
//  Test
//
//  Created by Joshua Watson on 2/28/20.
//  Copyright © 2020 Joshua Watson. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView {
            List {
                Text ("First Row")
                Text ("First Row")
                Text ("First Row")
            }
        }
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
}
