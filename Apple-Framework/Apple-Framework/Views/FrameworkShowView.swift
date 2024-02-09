//
//  FrameworkShowView.swift
//  Apple-Framework
//
//  Created by Sandesh Boedhoe on 07/02/2024.
//

import SwiftUI

struct FrameworkShowView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .frame(width: 32, height: 32)
                        .background(Color(white: 0.9, opacity: 0.7))
                        .clipShape(Circle())
                }
            }
            .padding()
            
            Spacer()
            
            IconItem(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView.toggle()
            } label: {
                Buttons(title: "Learn more")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString)!)
            })
        }
    }
}

#Preview {
    FrameworkShowView(framework: MockData.exampleFramework, isShowingDetailView: .constant(false))
}
