//
//  SignUpView.swift
//  VolunDeezy
//
//  Created by Radeen A on 5/9/23.
//

import SwiftUI

struct SignUpView: View {
    
    //VARIABLES GO HERE
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordConfirm: String = ""
    @State var selectedDate: Date = Date()
    @State private var birthDate = Date.now
    
    
    
    var body: some View {
        
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            VStack {
                Image("logo")
                    .resizable()
                    .clipShape(Circle())
                    .padding(.leading, 24.0)
                    .scaledToFit()
                    .frame(width: 500, height: 400)
                    .foregroundColor(.black)
                    
                Spacer()
                    .frame(height: 0)

                
                HStack{
                    Spacer()
                    TextField(
                        "Enter Email",
                        text: $email
                    )
                    .padding()
                    .frame(width: 300, height: 50)
                    
                    .background(Color("Platinum"))
                    .cornerRadius(10)
                    Spacer()
                    
                }
                Spacer()
                    .frame(height:20)
                HStack{
                    Spacer()
                    
                    SecureField(
                        "Enter Password",
                        text: $password
                    )
                    .padding()
                    .frame(width: 300, height: 50)
                    
                    .background(Color("Platinum"))
                    .cornerRadius(10)
                    
                    Spacer()
                }
                Spacer()
                    .frame(height:20)
                HStack{
                    Spacer()
                    SecureField(
                        "Confirm Password",
                        text: $passwordConfirm
                    )
                    .padding()
                    .frame(width: 300, height: 50)
                    
                    .background(Color("Platinum"))
                    .cornerRadius(10)
                    Spacer()
                    
                }
                
                HStack{
                    Spacer()
                        .frame(width:90)
                    DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                        Text("Enter Date of Birth")
                        
                    }
                    .padding(.horizontal)
                    Spacer()
                        .frame(width:85)

                }
                Spacer()
                    .frame(height:90)
                

                HStack{
                    Spacer()
                    
                    
                    if (password != passwordConfirm) || (password == "") {
                        Button("Sign Up") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray)
                        .foregroundColor(Color("RichBlack"))
                        .cornerRadius(10)
                        .padding(.bottom, 30)
                        .disabled(true)
                    }
                    else{
                        Button("Sign Up") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color("Flame"))
                        .foregroundColor(Color("RichBlack"))
                        .cornerRadius(10)
                        .padding(.bottom, 30)
                    }
                    
                    
                    
                    
                    Spacer()
                }
                
            }
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
