//
//  ProductScreen.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

struct ProductDetailsScreen: View {
    @StateObject var viewModel: ProductDetailsScreenModel
    
    var body: some View {
        VStack {
            Text("")
                .navigationTitle(viewModel.product.name)
            
            Spacer()
            
            Image(viewModel.product.image)
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .fixedSize()
            
            Spacer()
        }
    }
}

//struct ProductScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductScreen()
//    }
//}
