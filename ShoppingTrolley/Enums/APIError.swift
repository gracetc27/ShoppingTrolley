//
//  APIError.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 03/07/2025.
//
import Foundation

enum APIError: LocalizedError {
    case invalidURL
    case decodingFailed
    case noData
    var errorDescription: String? {
        switch self {
        case .invalidURL: 
            return "Invalid URL"
        case .decodingFailed: 
            return "Decoding Failed"
        case .noData: 
            return "No Data"
        }
    }
}
