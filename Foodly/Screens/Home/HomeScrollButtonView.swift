//
//  HomeScrollButtonView.swift
//  Foodly
//
//  Created by Atiqul Islam on 23/6/24.
//

import SwiftUI

struct FoodSelectionView: View {
    @State private var selectedFood: String? = "burger"
    
    let foods = ["burger", "pizza", "sandwich"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(foods, id: \.self) { food in
                    Button(action: {
                        selectedFood = food
                    }) {
                        HStack(spacing: 15) {
                            Image(food) // Use PNG images named "burger", "pizza", "sandwich"
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text(food.capitalized)
                                .foregroundColor(selectedFood == food ? Color.white : Color.black)
                                .font(.title3)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(selectedFood == food ? Color.red : Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.gray.opacity(0.3), radius: 4, x: 1, y: 1)
                    }
                }
            }
            .padding(.vertical, 5)
           
        }
        .padding(.horizontal, 5)
    }
}



struct HomeScrollButtonView: View {
    var body: some View {
            VStack {
                FoodSelectionView()
                    
                
                Spacer()
            }
        }
}

#Preview {
    HomeScrollButtonView()
}
