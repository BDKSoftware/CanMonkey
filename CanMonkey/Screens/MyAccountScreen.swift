//
//  MyAccountScreen.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct MyAccountScreen: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Your Account Information")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top)
                .font(.title)
                .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .top)
                .foregroundColor(Color.orange)
            List{
                HStack{
                    Text("Name")
                        .multilineTextAlignment(.leading)
                        .font(.title)
                    Spacer()
                    Text("Bradley Donn Kukuk")
                        .multilineTextAlignment(.trailing)
                        .padding(.leading)
                        .foregroundColor(Color.orange)
                }
                
                HStack{
                    Text("Email")
                        .multilineTextAlignment(.leading)
                        .font(.title)
                    Spacer()
                    Text("bradkukuk7@gmail.com")
                        .multilineTextAlignment(.trailing)
                        .padding(.leading)
                        .foregroundColor(Color.orange)
                }
                
                HStack{
                    Text("Phone")
                        .multilineTextAlignment(.leading)
                        .font(.title)
                    Spacer()
                    Text("208-830-0059")
                        .multilineTextAlignment(.trailing)
                        .padding(.leading)
                        .foregroundColor(Color.orange)
                }
                
                
                HStack{
                    Text("Address")
                        .multilineTextAlignment(.leading)
                        .font(.title)
                    Spacer()
                    Text("813 W University Ave")
                        .multilineTextAlignment(.trailing)
                        .padding(.leading)
                        .foregroundColor(Color.orange)
                }
            }
        }
    }
    
    struct MyAccountScreen_Previews: PreviewProvider {
        static var previews: some View {
            MyAccountScreen()
        }
    }
}
