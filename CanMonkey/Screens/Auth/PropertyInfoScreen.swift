//
//  PropertyInfoScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct PropertyInfoScreen: View {
    
    @State public var address = ""
    @State public var suite_unit_lot = ""
    @State public var gateCode = ""
    @State public var city = ""
    @State public var state = ""
    @State public var zipCode = ""
    @State public var color = Color.black.opacity(0.7)
    
    var body: some View {
        VStack(alignment: .center){
            Text("Please enter your Property information below!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .padding(.bottom, 30)
            
            TextField("Address", text: self.$address)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.address != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Suite/Lot/Unit", text: self.$suite_unit_lot)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.suite_unit_lot != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Gate Code", text: self.$gateCode)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.gateCode != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("City", text: self.$city)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.city != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("State", text: self.$state)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.state != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Zip Code", text: self.$zipCode)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.zipCode != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            
            NavigationLink(destination: LoginScreen()){
                Text("Continue and Register")
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

struct PropertyInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        PropertyInfoScreen()
    }
}
