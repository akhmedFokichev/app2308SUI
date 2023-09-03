//
//  CustomButton.swift
//  App2308SUI
//
//  Created by Azapsh on 03.09.2023.
//

import SwiftUI
import UIKit

struct CustomButton: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        
    }
    
    
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "blue")
        button.setTitleColor(.white, for: .normal)
        button.setTitle("button", for: .normal)
        return button
    }
    
}
