//
//  OnDemandScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct OnDemandScreen: View {
    var body: some View {
        VStack{
            
            Text("What type of service would you like?")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.title)
                .foregroundColor(Color.orange)
                .padding(.vertical, 30)
            
            NavigationLink(destination: OneWeekOnDemandScreen()){
                Text("One Week Trash-To-Curb Valet Service")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
            NavigationLink(destination: TwoWeekOnDemandScreen()){
                Text("Two Week Trash-To-Curb Valet Service")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.top, 25)
            
            NavigationLink(destination: CanCleaning()){
                Text("Can Cleaning Service")
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

struct OnDemandScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnDemandScreen()
    }
}
