//
//  DetailContentView.swift
//  Foodly
//
//  Created by Atiqul Islam on 25/6/24.
//

import SwiftUI

struct DetailContentView: View {
    var productName: String = "Karkenopo Burger"
       var productPrice: String = "$29.99"
       var storeName: String = "Rose Garden Kitchen"
       var rating: String = "4.6"
       var numberOfRatings: String = "(987+ ratings)"
       
       var descriptionText: String = "This is a detailed description of the product. It provides all the necessary information a customer needs to know about the product."

    
    
       var distance: String = "4km"
       var calories: String = "545 cal"
       var time: String = "45 min"
       
    
    @State private var selectedIngredients: Set<String> = []
     var ingredients: [String] = ["onion", "oil", "garlic", "tomato", "pepper", "salt"]
     
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(productName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Text(productPrice)
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .padding(.bottom, 5)
            
            HStack {
                HStack {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(.green)
                    Text(storeName)
                        .font(.subheadline)
                }
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("\(rating) \(numberOfRatings)")
                        .font(.subheadline)
                }
            }
            
            // Description Title
            Text("Description")
                .font(.headline)
                .padding(.top, 10)
            
            // Description Text and See More Button
            HStack(alignment: .lastTextBaseline) {
                Text(descriptionText)
                    .font(.footnote)
                    .lineLimit(3) // Limit number of lines to show initially
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                //                 Button(action: {
                //                     // Add action for see more button
                //                     // e.g., navigate to a detailed view or expand the description
                //                 }) {
                //                     Text("See More")
                //                         .font(.subheadline)
                //                         .foregroundColor(.blue)
                //                 }
            }
            
            GeometryReader { geometry in
                VStack {
                    HStack(spacing: 20) {
                        // Location
                        HStack {
                            Image(systemName: "location.fill")
                                .foregroundColor(.red)
                            Text(distance)
                                .font(.title3)
                        }
                        
                        Divider() // Vertical Divider
                            .background(Color.gray)
                        
                        // Calories
                        HStack {
                            Image(systemName: "flame.fill")
                                .foregroundColor(.red)
                            Text(calories)
                                .font(.title3)
                        }
                        
                        Divider() // Vertical Divider
                            .background(Color.gray)
                        
                        // Time
                        HStack {
                            Image(systemName: "clock.fill")
                                .foregroundColor(.orange)
                            Text(time)
                                .font(.title3)
                        }
                    }
                    .padding()
                    .padding(.top, 20)
                    .frame(width: geometry.size.width * 1)
               
                  
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
            
            
            
            
            VStack(alignment: .leading, spacing: 10) {
                    // Header with Ingredient text and See All button
                    HStack {
                        Text("Ingredient")
                            .font(.title3)
                         
                        Spacer()
                        Button(action: {
                            // Action for See All button
                        }) {
                            Text("See All")
                                .font(.headline)
                                .foregroundColor(.red)
                        }
                    }
                   
                    
                    // Horizontal Scroll View with ingredients
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(ingredients, id: \.self) { ingredient in
                                Button(action: {
                                    // Add or remove the ingredient from the selected set
                                    if selectedIngredients.contains(ingredient) {
                                        selectedIngredients.remove(ingredient)
                                    } else {
                                        selectedIngredients.insert(ingredient)
                                    }
                                }) {
                                    VStack {
                                        Image(systemName: "leaf")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(selectedIngredients.contains(ingredient) ? .red : .primary)
                                            .padding()
                                            .background(Color.white)
                                            .cornerRadius(50)
                                            .shadow(radius: 1)
                                        Text(ingredient.capitalized)
                                            .font(.subheadline)
                                            .foregroundColor(.primary)
                                    }
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 20)
            
            
        }
        
        
        
        
       
     }
 }
#Preview {
    DetailContentView()
}
