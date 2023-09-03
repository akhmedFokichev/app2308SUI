//
//  App2308SUIApp.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

@main
struct App2308SUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabScreen(viewModel: TabScreenModel())
        }
    }
}
