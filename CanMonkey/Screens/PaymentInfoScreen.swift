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
    @State private var showModal = false
    
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
            
            
            
            
            Button("Register Payment Information")
            {
                self.showModal.toggle()
            }
            .foregroundColor(.white)
            .padding(.vertical)
            .frame(width: UIScreen.main.bounds.width - 50)
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            .sheet(isPresented: $showModal, content: {
                Image("CanMonkeyLogo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200.0, height: 200.0)
                    .padding(.bottom, 20)
                Text("Thank You for Registering your Payment Info!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .padding(.bottom, 30)
                
                Text("Card Number: " + self.cardNum)
                    .font(.title)
                    
                
                Text("CVC: " + self.CVC)
                    .font(.title)
                
                Text("Expiry Date: " + self.expireDate)
                    .font(.title)
                
                Text("Swipe Down to leave this screen")
                    .padding(.top, 20)
                
                
            })
            
            
            
        }
        
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ModalView: View {
    var body: some View {
        VStack{
            
        }
    }
}


struct PaymentInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaymentInfoScreen()
    }
}
