//
//  ContentView.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            LoginScreen()
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
