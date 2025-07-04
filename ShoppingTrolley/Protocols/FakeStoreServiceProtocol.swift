//
//  FakeStoreServiceProtocol.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 04/07/2025.
//

import Foundation

protocol FakeStoreServiceProtocol {
    func getProducts() async throws(APIError) -> [APIProduct]

}

