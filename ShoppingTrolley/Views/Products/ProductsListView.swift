//
//  ProductsListView.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 03/07/2025.
//

import SwiftUI

struct ProductsListView: View {
    @State private var vm = ProductViewModel(service: FakeStoreAPIService())
    var body: some View {
        NavigationStack {
            List(vm.products) { product in
                NavigationLink {
                    ProductDetailView(product: product)
                } label: {
                    Text(product.title)
                }
            }
            .task {
                await vm.getProducts()
            }
        }
    }
}

#Preview {
    ProductsListView()
}
