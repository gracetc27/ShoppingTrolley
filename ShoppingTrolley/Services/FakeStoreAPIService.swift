//
//  FakeStoreAPIService.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 01/07/2025.
//

import Foundation

class FakeStoreAPIService: FakeStoreServiceProtocol {
    let apiURLString = "https://fakestoreapi.com/products"

    func getProducts() async throws(APIError) -> [APIProduct] {
        guard let url = URL(string: apiURLString) else {
            throw .invalidURL
        }
        let request = URLRequest(url: url)

        let (data, _): (Data, URLResponse)
        do {
            (data, _) = try await URLSession.shared.data(for: request)
        } catch {
            throw .noData
        }

        do {
            let decoder = JSONDecoder()
            let apiProducts = try decoder.decode([APIProduct].self, from: data)
            return apiProducts
        } catch {
            print(error)
            throw .decodingFailed
        }
    }
}
