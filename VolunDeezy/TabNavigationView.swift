//
//  TabNavigationView.swift
//  VolunDeezy
//
//  Created by Radeen A on 5/10/23.
//

import SwiftUI


struct TabNavigationView: View {
    var body: some View {
        
        VStack {
            
            TabView {
                
                LandingPageView()                    .tabItem {
                    Label("Home", systemImage: "house")
                }
                SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                RewardsView()
                    .tabItem {
                        Label("Rewards", systemImage: "trophy")
                    }
                
            }
            
            
            
        }
    }
    
    struct TabNavigationView_Previews: PreviewProvider {
        static var previews: some View {
            TabNavigationView()
        }
    }
}
