//
//  MainTabView.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 01/07/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            ProductsListView()
                .tabItem {
                    Image(systemName: "cart")
                }
        }
    }
}

#Preview {
    MainTabView()
}
