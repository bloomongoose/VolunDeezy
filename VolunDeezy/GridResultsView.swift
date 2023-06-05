
// SearchOptionsPagae.swift
// VolunDeezy
//
// Created by Jamison Faliski on 5/15/23.
//
import SwiftUI
struct GridResultsView: View {
    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Results near 48211")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                
                
                NavigationLink(destination: MichiganHumaneOpportunity()){
                    HStack{
                        Image ("MichiganHumane")
                            .resizable()
                            .frame(width:170,height:150)
                        Text("Saturday May 20, 2023 1pm - 3pm")
                            .foregroundColor(Color.black)
                    }
                    
                }
                Divider()
                
                NavigationLink(destination: GreeningDetroitOpportunity()){
                    HStack{
                        Image ("GreeningDetroit")
                            .resizable()
                            .frame(width:170,height:150)
                        Text("Saturday May 27, 2023 9am - 12pm")
                            .foregroundColor(Color.black)
                    }
                    
                }
                Divider()
                
                NavigationLink(destination: MichiganHumaneOpportunity()){
                    HStack{
                        Image ("FocusHope")
                            .resizable()
                            .frame(width:170,height:150)
                        Text("Tuesday June 6, 2023 11am - 2pm")
                            .foregroundColor(Color.black)
                    }
                }
                
                
            }.padding()
        }
    }
}
struct GridResultsView_Previews: PreviewProvider {
    static var previews: some View {
        GridResultsView()
    }
}


