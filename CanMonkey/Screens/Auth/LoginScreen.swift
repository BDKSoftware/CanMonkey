//
//  LoginScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct LoginScreen: View {
    @State public var email = ""
    @State public var password = ""
    
    var body: some View {
        
        VStack(alignment: .center){
            
            Text("Welcome to CanMonkey!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 400, height: 50, alignment: .center)
                .foregroundColor(Color.white)
                .padding(.vertical, 30)
            
            Image("CanMonkeyLogo2")
                .frame(width: 300, height: 300, alignment: .top)
                .background(Color.orange)
                .shadow(radius: 10)
                .padding(.bottom, 5)
                .border(Color.white, width: 5)
                .padding(.top, 15)
                .padding(.bottom, 50)
            
            
            TextField("Email", text: self.$email)
                .autocapitalization(.none)
                .frame(width: UIScreen.main.bounds.width - 20, height: 50, alignment: .top)
                .padding(.vertical, 5)
                
            
            SecureField("Password", text: self.$password)
                .autocapitalization(.none)
                .frame(width: UIScreen.main.bounds.width - 20, height: 50, alignment: .top)
                .padding(.vertical, 5)
                
                
            
            HStack(alignment: .center){
                
                NavigationLink(destination: HomeScreen()){
                    Text("Login")
                        .foregroundColor(.orange)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width / 2.5)
                        
                }
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top, 25)
                .padding(.horizontal, 5)
                
                
                NavigationLink(destination: CreateAccountScreen()){
                    Text("Sign up")
                        .foregroundColor(.orange)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width / 2.5)
                        
                }
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top, 25)
                .padding(.horizontal, 5)
                
            }
            Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
        
        .background(SwiftUI.Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        .textFieldStyle(RoundedBorderTextFieldStyle())
        
        
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
