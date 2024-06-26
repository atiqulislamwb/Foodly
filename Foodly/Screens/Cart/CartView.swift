//
//  CartView.swift
//  Foodly
//
//  Created by Atiqul Islam on 22/6/24.
//

import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let price: Double
    let size : String
}

struct CartView: View {
    @State private var cartItems = [
        CartItem(image: "cart_image", title: "Lowbrase Burger", price: 10.0, size:"Large"),
        CartItem(image: "cart_image", title: "karkenopo Burger", price: 15.0, size:"Small"),
        CartItem(image: "cart_image", title: "Teriyaki pineapple Burger", price: 159.0, size:"Medium")
    ]
    
    @State private var quantities = [UUID: Int]()
    @State private var selectedItems = Set<UUID>()
    @State private var showAlert = false
       


    var body: some View {
        CartHeaderView()
            .padding(.horizontal, 10)
        ScrollView {
         
            ForEach(cartItems) { item in
                
        
                HStack {
                    Image(systemName: selectedItems.contains(item.id) ? "checkmark.square.fill" : "square")
                        
                        .foregroundColor(selectedItems.contains(item.id) ? .red : .gray)
                        .onTapGesture {
                            if selectedItems.contains(item.id) {
                                selectedItems.remove(item.id)
                            } else {
                                selectedItems.insert(item.id)
                            }
                        }
                    
                    Image("burger-1")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                    
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.system(size: 18))
                          
                        
                        HStack(){
                            Text("Size :")
                                .font(.system(size: 16))
                               
                            Text(item.size)
                                .font(.system(size: 16))
                            
                        }.padding(.top, -5)
                      
                        
                        HStack {
                            HStack(spacing: 13) {
                                Button(action: {
                                    if let quantity = quantities[item.id], quantity > 1 {
                                        quantities[item.id] = quantity - 1
                                    }
                                }) {
                                    Image(systemName: "minus")
                                        .foregroundColor(.black)
                                        .frame(width: 30, height: 30)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .shadow(radius: 2)
                                }
                                
                                Text("\(quantities[item.id, default: 1])")
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                
                                Button(action: {
                                    quantities[item.id, default: 1] += 1
                                }) {
                                    Image(systemName: "plus")
                                        .foregroundColor(.black)
                                        .frame(width: 30, height: 30)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .shadow(radius: 2)
                                }
                            }
                            .padding(.horizontal, 5)
                            .padding(.vertical, 5)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(12)
               
                            Spacer()
                            Text("$\(item.price * Double(quantities[item.id, default: 1]), specifier: "%.2f")")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                        .padding(.top, -5)
                        
                       
                    }
                }
            }
          
        }
        .padding()
        .toolbar(.hidden, for: .tabBar)
        .overlay( alignment: .bottom){
            VStack(){
                
                
                Button(action: {
                    showAlert = true
                }) {
                    Text("CHECKOUT")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .frame(width: 320, height: 45)
                        .background(Color.red)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Do you want to checkout?"), message: Text("Are you sure you want to checkout?"), primaryButton: .default(Text("Yes")), secondaryButton: .cancel(Text("No")))
                }
                
                .padding(.horizontal, 32)
            }
            .background(.white)
            
        }
        .background(.white)
    }
}

#Preview {
    CartView()
}
