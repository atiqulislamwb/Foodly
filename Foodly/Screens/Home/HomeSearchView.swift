//
//  HomeSearchView.swift
//  Foodly
//
//  Created by Atiqul Islam on 23/6/24.
//

import SwiftUI

struct HomeSearchView: View {
    @State private var searchText: String = ""

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .padding(.leading, 8)

                TextField("Search dishes and restaurants", text: $searchText)
                    .padding(8)
                    .background(Color(.white))
                    .cornerRadius(8)
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 2)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(0.2), radius: 3, x: 1, y: 1)
            
            Button(action: {
                // Action for filter button
            }) {
                Image(systemName: "line.horizontal.3.decrease.circle")
                    .foregroundColor(.black)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 14)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(color: Color.gray.opacity(0.2), radius: 3, x: 1, y: 2)
            }
         
        }
        .padding(.horizontal, 3)
    }
}



#Preview {
    HomeSearchView()
}
