//
//  HomeProductsView.swift
//  Foodly
//
//  Created by Atiqul Islam on 24/6/24.
//

import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var imageName: String
    var rating: Double
    var price: Double
}





struct HomeProductsView: View {
    
    let products = [
           Product(title: "Burger", description: "Delicious beef burger with cheese and lettuce.", imageName: "burger", rating: 4.5, price: 8.99),
           Product(title: "Sandwich", description: "Fresh turkey sandwich with tomato and lettuce.", imageName: "sandwich", rating: 4.0, price: 5.49),
           Product(title: "Pizza", description: "Cheesy pizza with pepperoni and olives.", imageName: "pizza", rating: 4.8, price: 12.99)
       ]
    
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(products) { product in
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text(String(format: "%.1f", product.rating))
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        HStack {
                                      Spacer()
                                      Image(product.imageName)
                                          .resizable()
                                          .aspectRatio(contentMode: .fit)
                                          .frame(height: 90)
                                      Spacer()
                                  }
                            
                        
                        Text(product.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        Text(product.description)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .padding(.top, -10)
                        
                        HStack {
                            Text(String(format: "$%.2f", product.price))
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding(.top, -5)
                            
                            Spacer()
                            
                            Button(action: {
                                // Action for the love button
                            }) {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .frame(width: 200, height: 240)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                }
                .padding(.vertical, 5)
            }
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    HomeProductsView()
}
