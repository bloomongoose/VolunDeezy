
import SwiftUI
struct FocusHopeOpportunity: View {
    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            
            
            VStack{
                
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
                    Text("What: Box food items for homebound seniors or cut stock (opening boxes and putting food on pallets)")
                    Divider()
                    Text ("Where: West Side Food Center, 1300 Oakman Blvd. Detroit, MI 48238")
                    Divider()
                    Text ("What to Wear: Comfortable clothes you can move around in")
                    Divider()
                    Text ("Contact Information: volunteer@focushope.edu 313.494.4600")
                    Divider()
//                    Text ("Impact: In partnership with federal and state agencies, Focus: HOPE Detroit provides over 42,000 seniors with monthly food packages to help meet basic needs.")
                                
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
                    
                    
                    NavigationLink(destination: FocusHopeView()){
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
struct FocusHopeOpportunity_Previews: PreviewProvider {
    static var previews: some View {
        FocusHopeOpportunity()
    }
}

