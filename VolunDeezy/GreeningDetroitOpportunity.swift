//
//  GreeningDetroitOpportunity.swift
//  VolunDeezy
//
//  Created by Jamison Faliski on 5/15/23.
//

import SwiftUI

struct GreeningDetroitOpportunity: View {
    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            
            
            VStack{
                
                Image ("GreeningDetroit")
                    .resizable()
                    .frame(height:250)
                Spacer()
                Text("Saturday May 27, 2023 9am - 12pm")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("The Greening of Detroit")
                    .font(.title2)
                    .fontWeight(.semibold)
                Divider()
                VStack(alignment: .leading){
                    Text("What: Pick vegetables and tend the garden, Lafayette Greens, in the heart of downtown Detroit")
                    Divider()
                    Text ("Where: Lafayette Greens                               13000 West McNichols Road")
                    Text("Detroit, MI 48235")
                    Divider()
                    Text ("What to Wear: Closed toe shoes or boots, and gloves")
                    Divider()
                    Text ("If you have questions, please email christina@greeningofdetroit.com")
                    Divider()
//                    Text ("Impact: Since 1989, we have planted over 135,000 trees in the City of Detroit, Hamtramck and Highland Park and have inspired sustainable growth of a healthy urban community.")
         
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
                    
                    
                    NavigationLink(destination: GreeningDetroitView()){
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


struct GreeningDetroitOpportunity_Previews: PreviewProvider {
    static var previews: some View {
        GreeningDetroitOpportunity()
    }
}

