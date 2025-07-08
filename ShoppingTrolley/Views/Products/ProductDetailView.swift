//
//  ProductDetailView.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 04/07/2025.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    var body: some View {
        VStack {
            ProductImageView(url: URL(string: product.image)!)
        }
    }
}

#Preview {
    ProductDetailView(product: .defaultProduct)
}
