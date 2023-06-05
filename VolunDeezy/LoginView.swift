//
//  LoginView.swift
//  VolunDeezy
//
//  Created by Radeen A on 5/9/23.
//

import SwiftUI


struct LoginView: View {
    
    @State private var email: String = ""
    @State var password: String = ""
    //TODO: (regex) let emailPattern = #"^\S+@\S+\.\S+$"#
    
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
                    .frame(height:90)
                HStack{
                    Spacer()
                    
                
                    
                    if (email == "") || (password == "") || (!email.contains("@")) {
                        
                            Text("Sign In")
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.gray)
                                .foregroundColor(Color("RichBlack"))
                                .cornerRadius(10)
                                .disabled(true)
                        
                    }
                    else{
                        NavigationLink(destination: TabNavigationView()){
                            Text("Sign In")
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color("Flame"))
                                .foregroundColor(Color("RichBlack"))
                                .cornerRadius(10)
                        }
                    }
                    
                    
                    
                    
                    
                    
                    Spacer()
                }
                NavigationLink(destination: SignUpView()) {
                    Text("Create an Account")
                }
                
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
