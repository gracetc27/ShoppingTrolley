//
//  Product.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 03/07/2025.
//

struct Product: Identifiable {
    let id: Int
    let title: String
    let price: Float
    let description: String
    let category: String
    let image: String

    static var defaultProduct: Product {
        Product(
            id: 1,
            title: "Timberland Boots",
            price: 150.00,
            description: "Waterproof, perfect for hiking",
            category: "Shoes",
            image: "imageStr")
    }
}
