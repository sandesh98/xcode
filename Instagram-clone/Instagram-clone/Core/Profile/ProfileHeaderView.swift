//
//  ProfileHeaderView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 13/02/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Image(user.ProfileImageURL ?? "profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 12, title: "posts")
                    UserStatView(value: 345, title: "Followers")
                    UserStatView(value: 341, title: "Following")

                }
            }
            .padding(.horizontal)
            
            VStack (alignment: .leading) {
                if user.fullname != nil {
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if user.bio != nil {
                    Text(user.bio!)
                        .font(.footnote)
                }

            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.horizontal)
            
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                    }
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
