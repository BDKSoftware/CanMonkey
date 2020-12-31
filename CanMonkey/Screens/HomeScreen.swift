//
//  HomeScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
        VStack{
            Text("Welcome back!")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.title)
                .frame(width: 400, height: 50, alignment: .center)
                .foregroundColor(Color.orange)
                .padding(.vertical, 30)
            
            NavigationLink(destination: SubscriptionScreen()){
                Text("Subscription Services")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
            NavigationLink(destination: OnDemandScreen()){
                Text("On Demand Services")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
            NavigationLink(destination: PaymentInfoScreen()){
                Text("Payment Information")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
            NavigationLink(destination: MyAccountScreen()){
                Text("My Account Information")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
            NavigationLink(destination: LoginScreenNav()){
                Text("Log Out")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.red)
            .cornerRadius(10)
            .padding(.top, 25)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
