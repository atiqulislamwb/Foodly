//
//  HomeView.swift
//  Foodly
//
//  Created by Atiqul Islam on 22/6/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical , showsIndicators: false){
            HomeHeaderView()
            HStack() {
               
                    Text("Hello Atiqul,")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundStyle(.gray)
                    Text("Good Morning")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundStyle(.black)
                
                Spacer()
            }
            .padding(.top, -1)
            
            //Search Button
            HomeSearchView()
                .padding(.top, -4)
            HomeScrollButtonView()
                .padding(.top, 5)
            BannerView()
                .padding(.top, 5)
            
            HStack(){
                Text("Open Restaurants")
                    .font(.title2)
                    .fontWeight(.medium)
                Spacer()
                Text("See All")
                    .font(.title3)
                    .foregroundStyle(.red)
                    .fontWeight(.light)
            }
            .padding(.top, 5)
            
            HomeProductsView()
                .padding(.top, -14)
                
            
              
          
        }
        .padding()
        
        
    }
        
}

#Preview {
    HomeView()
}
