//
//  ContentViewModel.swift
//  Apple-Framework
//
//  Created by Sandesh Boedhoe on 07/02/2024.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
