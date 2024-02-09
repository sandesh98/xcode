//
//  Buttons.swift
//  Apple-Framework
//
//  Created by Sandesh Boedhoe on 07/02/2024.
//

import SwiftUI

struct Buttons: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    Buttons(title: "body")
}
