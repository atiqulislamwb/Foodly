//
//  MainTabView.swift
//  Foodly
//
//  Created by Atiqul Islam on 22/6/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
          TabView {
              HomeView()
                  .tabItem {
                      Label("Home", systemImage: "house")
                  }
              CartView()
                  .tabItem {
                      Label("Carts", systemImage: "cart")
                  }
              OrderView()
                  .tabItem {
                      Label("Orders", systemImage: "menucard")
                  }
               
            
                
              ProfileView()
                  .tabItem {
                      Label("Profile", systemImage: "person")
                  }
          }
          .tint(.red)
      }
  }


#Preview {
    MainTabView()
}
