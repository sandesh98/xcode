//
//  CompleteSignupView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 12/02/2024.
//

import SwiftUI

struct CompleteSignupView: View {
    
    @Environment (\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 22) {
            Spacer()
            
            Text("Welkom bij Instagram Bubba de Daggoe")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Klik hier om je registratie compleet te maken. En gebruik instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                print("complete singup")
            } label: {
                Text("Registratie compleet maken")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CompleteSignupView()
}
