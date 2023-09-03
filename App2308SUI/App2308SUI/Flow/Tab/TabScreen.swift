//
//  TabScreen.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

struct TabScreen: View {
    
    @StateObject var viewModel: TabScreenModel
    
    var body: some View {
        VStack {
            TabView(selection: $viewModel.tabSelection) {
                HomeScreen(viewModel: viewModel.homeScreenModel)
                    .tag(0)
                    .tabItem {
                        Label("Home", image: Images.icHomeName)
                    }
                
                CatalogScreen(viewModel: viewModel.catalogScreenModel)
                    .tag(1)
                    .tabItem {
                        Label("Catalog", image: Images.icCatalogName)
                    }
                
                ProfileScreen()
                    .tag(2)
                    .tabItem {
                        Label("profile", image: Images.icProfileName)
                    }
            }
        }
    }
}

//struct TabScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        TabScreen()
//    }
//}
