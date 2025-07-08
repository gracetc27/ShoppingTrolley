//
//  ProductImageView.swift
//  ShoppingTrolley
//
//  Created by Grace couch on 04/07/2025.
//

import SwiftUI

struct ProductImageView: View {
    let url: URL
    var body: some View {
        AsyncImage(url: url) { image in
            Color.clear
                .overlay {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)

                }
        } placeholder: {
            ProgressView()
        }

    }
}

#Preview {
    ProductImageView(url: URL(string: "hi")!)
}
