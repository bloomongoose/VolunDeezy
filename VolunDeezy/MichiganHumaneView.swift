//
//  MichiganHumaneView.swift
//  VolunDeezy
//
//  Created by Jamison Faliski on 5/15/23.
//

import SwiftUI

struct MichiganHumaneView: View {
    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            
            
            VStack{
                Text("Thank you for Volunteering!")
                    .font(.title)
                    .fontWeight(.semibold)
                
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
                    Text("Where: Park in the volunteer spaces in the lot on 7887 Chrysler Drive, Detroit 48211")
                    Divider()
                    Text ("Please bring photo identification, and you must be age 18 or over")
                    Divider()
                    Text ("Bring a credit card or cash to purchase $9 volunteer t-shirt to wear, if you are a first time volunteer")
                    Divider()
                    Text ("If you have questions, please contact Michigan Humane at 866-648-6263 or at www.michiganhumane.org")
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

struct MichiganHumaneView_Previews: PreviewProvider {
    static var previews: some View {
        MichiganHumaneView()
    }
}

        



