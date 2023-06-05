


import SwiftUI

struct ProfileView: View {
   @State private var enableBlogger = true

    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            NavigationView{
                Form {
                    Image("logo")
                        .resizable()
                        .clipped()
                        .frame(width:100, height:100, alignment:  .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                    Section(header: Text("Basic Information")) {
                        HStack {
                            Text("First Name")
                            Spacer(minLength:100)
                            Text("Liz")
                        }
                        HStack {
                            Text("Last Name")
                            Spacer(minLength: 100)
                            Text( "Target MOM")
                        }
                        HStack{ Text("Location Zipcode")
                            Spacer(minLength: 100)
                            Text("48226")}
                    }
                    Section(header: Text("Additional")){
                        VStack{
                            HStack{
                                Text("Interest")
                                    .multilineTextAlignment(.leading)
                                    .padding(.vertical)
                                Spacer(minLength: 100)
                                Text("Coding")
                                    .multilineTextAlignment(.leading)
                            }
                            
                            HStack{  Text("Skills")
                                Spacer(minLength: 100)
                                Text("Teaching")
                                    .multilineTextAlignment(.center)
                                    .padding(.leading)
                            }
                            Spacer(minLength: 5)
                            HStack{ Text("Causes")
                                Spacer(minLength: 100)
                                Text("Mental Health")
                                    .padding(.leading, 50.0)
                            }
                            Spacer(minLength:20)
                            HStack{
                                Toggle(isOn: $enableBlogger) {
                                    Text("Link to Calendar")}}
                        }
                        
                    }
                    
                }.navigationBarTitle(Text("Profile"))
            }
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
