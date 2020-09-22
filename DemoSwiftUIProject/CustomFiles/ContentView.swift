//
//  ContentView.swift
//  DemoSwiftUIProject
//
//  Created by Vikash on 21/09/20.
//  Copyright © 2020 Vikash. All rights reserved.
//



/* https://www.hackingwithswift.com/quick-start/swiftui/wrap-up-our-swiftui-project-is-complete
 */

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {

        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationBarTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
