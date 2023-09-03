//
//  TabScreenModel.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI
import Combine

final class TabScreenModel: ObservableObject {
    
    @Published var tabSelection: Int = 0
    
    let homeScreenModel: HomeScreenModel
    let catalogScreenModel: CatalogScreenModel
    
    var cancellable: AnyCancellable?
    
    init() {
        homeScreenModel = HomeScreenModel()
        catalogScreenModel = CatalogScreenModel()
        
        bind()
    }
    
    private func bind() {
        cancellable = homeScreenModel.$tabSelection.sink { value in
            self.tabSelection = value
        }
    }
}
