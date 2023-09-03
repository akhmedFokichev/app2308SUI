//
//  HomeScreen.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject var viewModel: HomeScreenModel
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("HomeScreen")
                Spacer()
                
                Button("go to Catalog") {
                    viewModel.tabSelection = 1
                }
                
                Spacer()
                
                CustomButton()
                    .frame(width: 200, height: 56)
                    .fixedSize()
                
                Spacer()
                
            }
        }

    }
}

//struct HomeScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeScreen()
//    }
//}
