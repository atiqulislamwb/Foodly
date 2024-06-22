//
//  HomeHeaderView.swift
//  Foodly
//
//  Created by Atiqul Islam on 22/6/24.
//

import SwiftUI

struct HomeHeaderView: View {
    @State private var isDrawerOpen = false
    @State private var badgeCount = 5 // Example badge count
     
     var body: some View {
         ZStack {
             // Main content view
             HStack(spacing: 20) {
                 Button(action: {
                     withAnimation {
                         isDrawerOpen.toggle()
                     }
                 }, label: {
                     Image(systemName: "line.horizontal.3")
                         .resizable()
                         .frame(width: 20, height: 20)
                         .padding()
                         .background(Color.gray.opacity(0.2))
                         .clipShape(Circle())
                         .foregroundStyle(.black)
                 })
                 
                 VStack(alignment: .leading ) {
                     Text("DELIVER TO")
                         .foregroundStyle(.red)
                         .fontWeight(.semibold)
                         .font(.subheadline)
                         .padding(.bottom, -5)
                     HStack(spacing: 10) {
                         Text("Mirpur office")
                             .foregroundStyle(.black)
                             .fontWeight(.medium)
                             .font(.subheadline)
                         Image(systemName: "arrowtriangle.down.fill")
                             .frame(width: 5, height: 5)
                           
                     }
                 }
                 Spacer()
                 Button(action: {
                                  print("sss")
                              }, label: {
                                  ZStack {
                                      Image(systemName: "bell")
                                          .resizable()
                                          .frame(width: 20, height: 20)
                                          .padding()
                                          .background(Color.gray.opacity(0.2))
                                          .clipShape(Circle())
                                          .foregroundStyle(.black)
                                      
                                      if badgeCount > 0 {
                                          Text("\(badgeCount)")
                                              .font(.footnote)
                                              .foregroundColor(.white)
                                              .padding(4)
                                              .background(Color.red)
                                              .clipShape(Circle())
                                              .offset(x: 10, y: -10)
                                      }
                                  }
                              })
                          }
                          .padding()
             
             // Drawer view
             GeometryReader { geometry in
                 HStack {
                     VStack {
                         Spacer()
                         // Drawer content here
                         DrawerContentView()
                         Spacer()
                     }
                     .frame(width: geometry.size.width * 0.75)
                     .background(Color.white)
                     .offset(x: isDrawerOpen ? 0 : -geometry.size.width * 0.75)
                 
                     Spacer()
                 }
             }
             .background(Color.black.opacity(isDrawerOpen ? 0.5 : 0).edgesIgnoringSafeArea(.all))
             .onTapGesture {
                 withAnimation {
                     isDrawerOpen = false
                 }
             }
         }
     }
 }

#Preview {
    HomeHeaderView()
}
