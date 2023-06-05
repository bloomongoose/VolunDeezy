//
//  GreeningDetroitView.swift
//  VolunDeezy
//
//  Created by Jamison Faliski on 5/15/23.
//

import SwiftUI

struct GreeningDetroitView: View {
    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            
            
            VStack{
                Text("Thank you for Volunteering!")
                    .font(.title)
                    .fontWeight(.semibold)
                
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
                Spacer()
                VStack(alignment: .leading){
                Text ("Where: Lafayette Greens, 13000 West McNichols Road")
                Text("Detroit, MI 48235")
                Divider()
                
                    Text ("What to Wear: Volunteers should dress for the weather, wear closed toe shoes or boots, gloves and bring water + snacks")
                    Divider()
                    Text ("Please note: All volunteers will be required to complete a volunteer waiver that will be sent out prior to the event day")
                    Divider()
                    Text ("If you have questions, please email christina@greeningofdetroit.com")
                  Spacer()
                    
                }.padding()
                
                HStack{
                    Spacer()
                        .frame(width: 50)
                    
                    
                    NavigationLink(destination: LandingPageView()){
                        Text("Back to Home")
                            .padding()
                            .frame(width: 300, height: 50)
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



struct GreeningDetroitView_Previews: PreviewProvider {
    static var previews: some View {
        GreeningDetroitView()
    }
}

