//
//  SubscriptionScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct SubscriptionScreen: View {
    var body: some View {
        VStack{
            Text("What type of subscription do you have?")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.title)
                .foregroundColor(Color.orange)
                .padding(.vertical, 30)
            
            NavigationLink(destination: NewSubScreen()){
                Text("I want a new Subscription")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
            NavigationLink(destination: ExistingSubScreen()){
                Text("I have an existing Subscription")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
        }
    }
}

struct SubscriptionScreen_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionScreen()
    }
}
