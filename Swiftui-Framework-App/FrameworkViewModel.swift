//
//  FrameworkViewModel.swift
//  Swiftui-Framework-App
//
//  Created by Himanshu Kesharwani on 24/07/24.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
