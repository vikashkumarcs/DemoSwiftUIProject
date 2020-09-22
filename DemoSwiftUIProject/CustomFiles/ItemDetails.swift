//
//  ItemDetails.swift
//  DemoSwiftUIProject
//
//  Created by Vikash on 21/09/20.
//  Copyright © 2020 Vikash. All rights reserved.
//

import SwiftUI

struct ItemDetails: View {
    
    @EnvironmentObject var order:Order
    var item:MenuItem
    
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text(item.photoCredit)
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -25, y: -5)
            }
            
            Text(item.description)
                .padding()
            
            Button("Order this") {
                self.order.add(item: self.item)
            }.font(.headline)
                    
            Spacer()
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
        
    }
}

struct ItemDetails_Previews: PreviewProvider {
    
    static let order = Order()
    
    static var previews: some View {
        NavigationView {
            ItemDetails(item: MenuItem.example).environmentObject(order)
        }
    }
}
