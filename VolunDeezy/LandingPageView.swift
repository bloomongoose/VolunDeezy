//
//  LandingPageView.swift
//  VolunDeezy
//
//  Created by Radeen A on 5/10/23.
//

import SwiftUI

struct LandingPageView: View {
    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
     
            VStack{
                Image("volundeezy")
                    .resizable()
                    .padding(.leading, 24.0)
                    .scaledToFit()
                    .frame(width: 2000, height: 850)
                    .foregroundColor(.black)
                
                Spacer()
                    .frame(height:550)
  
            }
            
            
            VStack{
                
                HStack{
                    Spacer()
                        .frame(width: 50)

                    Button("Messages") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(Color("Flame"))
                    .foregroundColor(Color("RichBlack"))
                    .cornerRadius(10)
                    .padding(.bottom, 30)
                    
                    Button("Calender") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(Color("Flame"))
                    .foregroundColor(Color("RichBlack"))
                    .cornerRadius(10)
                    .padding(.bottom, 30)
                    
                    Spacer()
                        .frame(width: 50)
                }
                
                Text("Upcoming Events!")
                    .font(.system(size: 30))
                    
                    
                
                HStack{
                    
                    Spacer()
            
                    Image("focusHope2")
                              .resizable()
                              .clipShape(Rectangle())
                              .scaledToFit()
                              .frame(width: 180, height: 150)
                              .foregroundColor(.black)
                              .cornerRadius(10)
                              .padding(.leading, 120)
                    Spacer().frame(width: 20)
                    VStack{
                        Text("Focus Hope")
                        Text("11am - 3pm")
                        Text("Detroit, MI")
                    }.padding(.trailing, 160)
               
                    Spacer()
                }.overlay(Rectangle().frame(width: 370, height: 2, alignment: .top).foregroundColor(Color.gray), alignment: .bottom)
                
                HStack{
                    Spacer()
            
                    Image("dogs")
                              .resizable()
                              .clipShape(Rectangle())
                              .scaledToFit()
                              .frame(width: 180, height: 150)
                              .foregroundColor(.black)
                              .cornerRadius(10)
                              .padding(.leading, 120)
                    Spacer().frame(width: 20)
                    VStack{
                        Text("MHS")
                        Text("9am - 2pm")
                        Text("Redford, MI")
                    }.padding(.trailing, 160)
               
                    Spacer()
                }.overlay(Rectangle().frame(width: 370, height: 2, alignment: .top).foregroundColor(Color.gray), alignment: .bottom)
                
                HStack{
                    
                }
            }
     
        }
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
