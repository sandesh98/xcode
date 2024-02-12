//
//  CreatePasswordView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 12/02/2024.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment (\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 22) {
            Text("Maak een wachtwoord aan")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Het wachtwoord moet minimaal 6 karakters lang zijn")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $password)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CompleteSignupView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Volgende")
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
    CreatePasswordView()
}
