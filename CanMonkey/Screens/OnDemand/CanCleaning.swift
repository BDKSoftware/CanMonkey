//
//  CanCleaning.swift
//  CanMonkey
//
//  Created by kook on 12/31/20.
//

import SwiftUI

struct CanCleaning: View {
    
    @State public var choice1: Bool = false
    @State public var choice2: Bool = false
    @State public var choice3: Bool = false
    @State private var showModal = false
    @State public var address = ""
    @State public var city = ""
    @State public var state = ""
    @State public var color = Color.black.opacity(0.7)
    
    
    
    var body: some View {
        ScrollView{
            VStack{
                
                Spacer()
                Text("Keep your trash cans clean all year round!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .padding(.bottom, 30)
                Spacer()
                
                Text("Please select one of our options below!")
                
                Spacer()
                
                
                HStack{
                    Text("4 Times per Year")
                        .padding()
                    Spacer()
                    Text("$120/annually")
                    Spacer()
                    Toggle(isOn: $choice1){}
                        .toggleStyle(CheckboxToggleStyle())
                    Spacer()
                }
                .border(Color.black)
                .padding(.vertical, 1)
                
                HStack{
                    Text("3 Times per Year")
                        .padding()
                    Spacer()
                    Text("$105/annually")
                    Spacer()
                    Toggle(isOn: $choice2){}
                        .toggleStyle(CheckboxToggleStyle())
                    Spacer()
                }
                .border(Color.black)
                .padding(.vertical, 1)
                
                HStack{
                    Text("2 Times per Year")
                        .padding()
                    Spacer()
                    Text("$80/annually  ")
                    Spacer()
                    Toggle(isOn: $choice3){}
                        .toggleStyle(CheckboxToggleStyle())
                    Spacer()
                }
                .border(Color.black)
                .padding(.vertical, 1)
                
                Spacer()
                
                Button("Confirm and Pay")
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
                    VStack{
                        Spacer()
                        Image("CanMonkeyLogo2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200.0, height: 200.0)
                            .padding(.bottom, 20)
                        Text("Thank You for your purchase! \n \n The payment information linked to this account will be charged. \n \n A reciept will be sent to your email!")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 30)
                            .padding()
                        
                        Spacer()
                        
                        Text("Swipe Down to dismiss this notification")
                        
                    }.background(Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
                    
                    
                })
                
                
            } // Vstack
        } //ScrollView
    } // Body
} // END

struct CanCleaning_Previews: PreviewProvider {
    static var previews: some View {
        CanCleaning()
    }
}
