//
//  LoginScreenNav.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct LoginScreenNav: View {
    var body: some View {
        VStack{
            LoginScreen()
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct LoginScreenNav_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenNav()
    }
}
