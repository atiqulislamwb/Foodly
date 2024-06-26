//
//  DetailHeaderView.swift
//  Foodly
//
//  Created by Atiqul Islam on 25/6/24.
//

import SwiftUI

struct DetailHeaderView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        HStack {
            // Back button
            Button(action: {
                dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 2, x: 1, y: 1)
            }

            Spacer()

            // Title
            Text("Detail")
                .font(.title3)
                .fontWeight(.semibold)

            Spacer()

            // Heart icon
            Button(action: {
                // Add action for the heart button
            }) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 2, x: 1, y: 1)
            }
        }
        
        
        
        
       
    }
}

#Preview {
    DetailHeaderView()
}
