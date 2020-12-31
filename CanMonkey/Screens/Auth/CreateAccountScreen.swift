//
//  CreateAccountScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct CreateAccountScreen: View {
    @State public var name = ""
    @State public var phone = ""
    @State public var email = ""
    @State public var email2 = ""
    @State public var password = ""
    @State public var password2 = ""
    @State public var color = Color.black.opacity(0.7)
    @State public var checked = false
    
    var body: some View {
        VStack(alignment: .center){
            Text("Please enter your information below!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.orange)
                .padding(.bottom, 30)
            
            TextField("Full Name", text: self.$name)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Phone Number", text: self.$phone)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.phone != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Email Address", text: self.$email)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Confirm Email Address", text: self.$email2)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.email2 != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Password", text: self.$password)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.password != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Confirm Password", text: self.$password2)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.password2 != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            VStack{
                Text("By Pressing Continue, You agree to our")
                Link("Terms and Conditions", destination: URL(string: "https://www.canmonkey.com/")!)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding(.vertical, 10)
            
            NavigationLink(destination: PropertyInfoScreen()){
                Text("Continue")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
                
                
                
        }
        
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .edgesIgnoringSafeArea(.all)
        
        
        
            
    }
}

struct CreateAccountScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountScreen()
    }
}
