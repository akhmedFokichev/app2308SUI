//
//  CatalogScreenModel.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

struct CatalogScreenState {
    let list: [Product]
}

final class CatalogScreenModel: ObservableObject {
    
    @Published var state: CatalogScreenState
    
    @Published var currentProduct: Product?
    
    init() {
        let products = [
            Product(id: UUID().uuidString, name: "Mango", image: Images.icMangoName),
            Product(id: UUID().uuidString, name: "Banana", image: Images.icBananaName),
            Product(id: UUID().uuidString, name: "Apples", image: Images.icApplesName),
            Product(id: UUID().uuidString, name: "Watermelon", image: Images.icWatermelonName)
        ]
        
        self.state = CatalogScreenState(list: products)
    }
    
    func didSelect(product: Product) {
        currentProduct = product
        print(currentProduct?.name)
    }
    
}

