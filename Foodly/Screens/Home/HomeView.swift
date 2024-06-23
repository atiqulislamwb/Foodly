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
            .padding(.top)
            
            //Search Button
            HomeSearchView()
            HomeScrollButtonView()
                .padding(.top, 5)
            BannerView()
                .padding(.top, 5)
              
          
        }
        .padding()
        
        
    }
        
}

#Preview {
    HomeView()
}
