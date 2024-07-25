//
//  SafariViewController.swift
//  Swiftui-Framework-App
//
//  Created by Himanshu Kesharwani on 24/07/24.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {
    }
    
    
}
