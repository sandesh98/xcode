//
//  AddEmailView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 12/02/2024.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 22) {
            Text("Vul je email in")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Je gebruikt dit email adres om in te loggen")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $email)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
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
    AddEmailView()
}
