//
//  ProfileScreen.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI

struct ProfileScreen: View {

    @State var showSheet: Bool = false

    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Ivanov")
                Spacer()
                
                Image(Images.icProfileName)
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .fixedSize()
                
                Button {
                    showSheet = true
                } label: {
                    Text("open Sheet")
                        .padding()
                }
                .sheet(isPresented: $showSheet, onDismiss: nil) {
                    ProfileDetailsScreen(viewModel: ProfileDetailsScreenModel())
                }
                
                Spacer()
            }
        }

    }
}

//struct ProfileScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileScreen()
//    }
//}
