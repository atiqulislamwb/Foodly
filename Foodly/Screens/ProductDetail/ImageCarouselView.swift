//
//  ImageCarouselView.swift
//  Foodly
//
//  Created by Atiqul Islam on 25/6/24.
//

import SwiftUI

struct ImageCarouselView: View {
    var images = ["burger-1", "burger", "pizza", "sandwich"]
     
     var body: some View {
         TabView {
             ForEach(images, id: \.self) { image in
             
                     Image(image)
                         .resizable()
                         .scaledToFill()
                         .frame( width:220, height: 220)
                         
             
                
             }
         }
         .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
     }
 }

#Preview {
    ImageCarouselView()
}
