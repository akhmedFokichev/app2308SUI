//
//  CatalogScreen.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

struct CatalogScreen: View {
    
    @StateObject var viewModel: CatalogScreenModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.state.list) { product in
                    let vm = ProductDetailsScreenModel(product: product)
                    NavigationLink(destination: ProductDetailsScreen(viewModel: vm)) {
                        Text(product.name)
                    }
                }
            }
            
        }
        .navigationTitle("Catalog")

    }
}

//struct CatalogScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        CatalogScreen()
//    }
//}

