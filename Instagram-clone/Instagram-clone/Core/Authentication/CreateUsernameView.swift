//
//  CreateUsernameView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 12/02/2024.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username = ""
    @Environment (\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 22) {
            Text("Vul je gebruikersnaam in")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Dit gebruikersnaam gebruik je ook om in te loggen")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("username", text: $username)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CreatePasswordView()
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
    CreateUsernameView()
}
