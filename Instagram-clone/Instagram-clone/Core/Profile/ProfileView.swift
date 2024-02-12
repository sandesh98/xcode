//
//  ProfileView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 09/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        ScrollView {
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
                    if let fullname = user.fullname {
                        Text(user.username)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    if let bio = user.bio {
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
            
            LazyVGrid(columns: gridItems, spacing: 1) {
                ForEach(1 ... 15, id: \.self) { index in
                    Image("bubba")
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(minHeight: 0, maxHeight: .infinity)
                        .aspectRatio(1, contentMode: .fill)
                        .clipped()
                        
                }
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
