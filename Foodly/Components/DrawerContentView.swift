//
//  DrawerContentView.swift
//  Foodly
//
//  Created by Atiqul Islam on 22/6/24.
//

import SwiftUI


struct MenuItem: View {
    var icon: String
    var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.gray)
                    .frame(width: 24, height: 24)
                Text(text)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .frame(height: 40)
            
            Divider() // Bottom border
        }
    }
}


struct DrawerContentView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            // Login button
                   Button(action: {
                       print("Login tapped")
                   }) {
                       Text("Login")
                          
                           .foregroundColor(.white)
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(Color.red)
                           .cornerRadius(8)
                   }
                   .padding(.horizontal)
            
            // Drawer content here
            MenuItem(icon: "questionmark.circle", text: "Help")
          
            MenuItem(icon: "bubble.left.and.bubble.right", text: "Chat")
        
            MenuItem(icon: "phone", text: "Contact Us")
           
            MenuItem(icon: "lock.shield", text: "Privacy")
    
            // Add more menu items here
            
            Spacer()
            
            
            
            
        }
    }
}

#Preview {
    DrawerContentView()
}
