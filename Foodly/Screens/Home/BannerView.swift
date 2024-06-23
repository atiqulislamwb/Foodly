//
//  BannerView.swift
//  Foodly
//
//  Created by Atiqul Islam on 23/6/24.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
          HStack {
              VStack(alignment: .leading, spacing: 8) {
                  Text("Deals for Days")
                      .font(.title3)
                      .fontWeight(.medium)
                  
                  Text("Get 30 delivery fee on")
                      .font(.footnote)
                      .foregroundColor(.gray)
                  Text("your first order over $1000")
                      .font(.footnote)
                      .foregroundColor(.gray)
                      .padding(.top , -10)
                  
                  Button(action: {
                      // Action for Learn More button
                  }) {
                      Text("Learn More")
                          .font(.subheadline)
                          .foregroundColor(.white)
                          .padding(.vertical, 8)
                          .padding(.horizontal, 10)
                          .background(Color.red)
                          .cornerRadius(8)
                          .padding(.top, 10)
                  }
              }
              .padding()
              Spacer()
              
              Image("banner") // Replace with your image name
                  .resizable()
                  .scaledToFill()
                  .frame(width: 150, height: 140) // Adjust size as needed
                  .padding(.trailing, 20)
                  
               
          }
          .frame(height: 150)
          .background(Color.white)
          .cornerRadius(10)
          .shadow(color: Color.gray.opacity(0.2), radius: 5, x: 0, y: 2)
      }
  }

#Preview {
    BannerView()
}
