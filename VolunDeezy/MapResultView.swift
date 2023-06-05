//
//  MapResultView.swift
//  VolunDeezy
//
//  Created by Radeen A on 5/9/23.
//

import SwiftUI
import MapKit

struct MapResultView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.3314, longitude: -83.0458), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        ZStack {
            Color("Vanilla")
                .ignoresSafeArea()
            VStack{
                
                Map(coordinateRegion: $region)
                    .frame(width: 400, height: 300)
                Spacer()
                Text("Results near 48211")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                
                VStack{
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
                            Text("Saturday May 27, 2023 9am - 12pm")}
                        .foregroundColor(Color.black)
                    }
                }.padding()
            }
        }
        
    }
    }


struct MapResultView_Previews: PreviewProvider {
    static var previews: some View {
        MapResultView()
    }
}
