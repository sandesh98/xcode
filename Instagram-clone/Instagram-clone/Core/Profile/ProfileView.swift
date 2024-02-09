//
//  ProfileView.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 09/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(spacing: 12) {
                    HStack {
                        Image("profile")
                            .resizable()
                            .scaledToFit()
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
                        Text("Sandesh Boedhoe")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Bubba de daggoe")
                            .font(.footnote)
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
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
