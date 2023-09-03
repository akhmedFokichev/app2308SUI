//
//  ProductScreenModel.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

final class ProductDetailsScreenModel: ObservableObject {
    
    let product: Product
    
    init(product: Product) {
        self.product = product
    }
    
}
