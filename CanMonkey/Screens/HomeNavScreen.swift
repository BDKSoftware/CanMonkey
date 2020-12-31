//
//  HomeNavScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct HomeNavScreen: View {
    @State public var status = false
    var body: some View {
        NavigationView {
            HomeScreen()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
        
    }
}

struct HomeNavScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavScreen()
    }
}
