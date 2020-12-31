//
//  PaymentInfoScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct PaymentInfoScreen: View {
    @State public var cardNum = ""
    @State public var expireDate = ""
    @State public var CVC = ""
    @State public var color = Color.black.opacity(0.7)
    
    var body: some View {
        VStack(alignment: .center){
            Text("Please enter your Payment information below!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .padding(.bottom, 30)
            
            TextField("Card Number", text: self.$cardNum)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.cardNum != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("CVC", text: self.$CVC)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.CVC != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            TextField("Expiry Date (MM/YY)", text: self.$expireDate)
                .background(Color.white)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.expireDate != "" ? Color(.orange) : self.color,lineWidth: 2))
                .padding(.top, 10)
                .padding(.horizontal)
            
            
            
            
            NavigationLink(destination: HomeScreen()){
                Text("Register Payment Information")
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


struct PaymentInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaymentInfoScreen()
    }
}
