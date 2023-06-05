//
//  FocusHopeView.swift
//  VolunDeezy
//
//  Created by Jamison Faliski on 5/15/23.
//

import SwiftUI

struct FocusHopeView: View {
    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            
            
            VStack{
                Text("Thank you for Volunteering!")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Image ("FocusHope")
                    .resizable()
                    .frame(height:250)
                Spacer()
                Text("Tuesday June 6, 2023 11am - 2pm")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Focus: HOPE")
                    .font(.title2)
                    .fontWeight(.semibold)
                Divider()
                VStack(alignment: .leading){
                    Text("Where: Park in the volunteer spaces in the lot on 1300 Oakman Blvd., Detroit 48238")
                    Divider()
                    Text ("Please bring photo identification")
                    Divider()
                    Text ("Wear comfortable shoes and clothing")
                    Divider()
                    Text ("If you have questions, please contact Focus: HOPE directly at volunteer@focushope.edu or 313.494.4600")
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


        
struct FocusHopeView_Previews: PreviewProvider {
    static var previews: some View {
        FocusHopeView()
    }
}
