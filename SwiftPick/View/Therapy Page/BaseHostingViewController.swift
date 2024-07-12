//
//  BaseHostingViewController.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/05/07.
//

import Foundation
import SwiftUI
import SafariServices

class BaseHostingViewController<T: View> {
    var hostingController: UIHostingController<T>
    var rootView: T
    
    init(width rootView: T ) {
        self.rootView = rootView
        self.hostingController = UIHostingController(rootView: rootView)
//        super.init(nibname: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(codeer:) has not been implemented")
    }
    
    func openURL(url: String) {
        if let url = URL(string: url) {
            let controller = SFSafariViewController(url: url)
//            self.present(controller, animated: true)
        }
    }
}
