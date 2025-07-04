//
//  ShoppingTrolleyApp.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 01/07/2025.
//

import SwiftUI

@main
struct ShoppingTrolleyApp: App {
    @State private var service = FakeStoreAPIService()
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
