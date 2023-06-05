//
//  MichiganHumaneOpportunity.swift
//  VolunDeezy
//
//  Created by Jamison Faliski on 5/15/23.
//

import SwiftUI

struct MichiganHumaneOpportunity: View {
    var body: some View {
  
                ZStack {
                    Color("Vanilla")
                        .ignoresSafeArea()
                    
                    
                    VStack{
                        
                        Image ("MichiganHumane")
                            .resizable()
                            .frame(height:250)
                        Spacer()
                        Text("Saturday May 20, 2023 1pm - 3pm")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("Michigan Humane")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Divider()
                        VStack(alignment: .leading){
                            Text("What: Spend quality time with our animals and distribute food")
                            Divider()
                            Text ("Where: Mackey Center for Animal Care, Dresner Foundation Animal Care Campus, 7887 Chrysler Drive")
                            Text("Detroit, MI 48211")
                            Divider()
                            Text ("What to Wear: Must purchase $9 Volunteer t-shirt when check-in to wear")
                            Divider()
                            Text ("Contact Information: 866-MHUMANE/866-648-6263")
                            Divider()
//                            Text ("Impact: Each year Michigan Humane achieves 100 percent adoption of more than 8,000 healthy and treatable animals.")
                            
                        }.padding()
                        
                        HStack{
                            Spacer()
                                .frame(width: 50)

                            Button("Invite Friends") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .padding()
                            .frame(width: 150, height: 50)
                            .background(Color("Flame"))
                            .foregroundColor(Color("RichBlack"))
                            .cornerRadius(10)
                            .padding(.bottom, 30)
                            
                            
                            NavigationLink(destination: MichiganHumaneView()){
                                Text("Sign Up")
                                    .padding()
                                    .frame(width: 150, height: 50)
                                    .background(Color("Flame"))
                                    .foregroundColor(Color("RichBlack"))
                                    .cornerRadius(10)
                                    .padding(.bottom, 30)
                            }
                            Spacer()
                                .frame(width: 50)
                        }
                    }
                }
            }
        }
  
struct MichiganHumaneOpportunity_Previews: PreviewProvider {
    static var previews: some View {
        MichiganHumaneOpportunity()
    }
}

