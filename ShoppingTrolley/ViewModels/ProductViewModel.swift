//
//  ProductViewModel.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 03/07/2025.
//

import Foundation

@Observable
class ProductViewModel {
    var service: FakeStoreAPIService
    var products: [Product]?

    init(service: FakeStoreAPIService, products: [Product]? = nil) {
        self.service = service
        self.products = products
    }

    func getProducts() async {
        do throws(APIError) {
            try await self.products = service.getProducts().map { apiProduct in
                Product(
                    id: apiProduct.id,
                    title: apiProduct.title,
                    price: apiProduct.price,
                    description: apiProduct.description,
                    category: apiProduct.category,
                    image: apiProduct.image)
            }
        } catch {
            print(error)
        }

    }
}
