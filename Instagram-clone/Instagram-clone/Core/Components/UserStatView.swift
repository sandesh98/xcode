//
//  UserStatView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 09/02/2024.
//

import SwiftUI

struct UserStatView: View {
    
    var value: Int
    var title: String

    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
            
        }
        .frame(width: 72)
    }
}

#Preview {
    UserStatView(value: 12, title: "posts")
}
