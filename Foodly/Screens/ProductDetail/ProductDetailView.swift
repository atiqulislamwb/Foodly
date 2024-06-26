//
//  ProductDetailView.swift
//  Foodly
//
//  Created by Atiqul Islam on 25/6/24.
//

import SwiftUI

struct ProductDetailView: View {
    
   
      @State private var showAlert = false
         

    var body: some View {
        
        ScrollView(){
            DetailHeaderView()
            ImageCarouselView()
                .frame(width: .infinity  ,height: 250)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .clipped()
            
            DetailContentView()
    
            
            
            
        }
        .padding(.horizontal, 10)
        .toolbar(.hidden, for: .tabBar)
        .overlay( alignment: .bottom){
                 VStack(){
                   
                       
                         Button(action: {
                                    showAlert = true
                                }) {
                                    Text("ORDER NOW")
                                        .foregroundColor(.white)
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .frame(width: 320, height: 45)
                                        .background(Color.red)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                .alert(isPresented: $showAlert) {
                                    Alert(title: Text("Do you want to order ?"), message: Text("Are you sure you want to order?"), primaryButton: .default(Text("Yes")), secondaryButton: .cancel(Text("No")))
                                }
                     
                     .padding(.horizontal, 32)
                 }
                 .background(.white)
          
             }
             .background(.white)
        
        
    }
    
}

#Preview {
    ProductDetailView()
}
