//
//  ViewController.swift
//  Clock
//
//  Created by Ben Gohlke on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import SwiftUI

class ClockViewController: UIViewController {
    
    let clockView: ClockView = {
        let cv = ClockView()
        cv .translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        clockView.timezone = TimeZone(abbreviation: "EST")
    }
    
    private func setupSubViews() {
        view.backgroundColor = UIColor(red: 255 / 255, green: 162 / 255, blue: 0 / 255, alpha: 1)
        view.addSubview(clockView)
        clockView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        clockView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        clockView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        clockView.widthAnchor.constraint(equalTo: clockView.heightAnchor, multiplier: 1).isActive = true
    }
}

struct ClockPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func updateUIViewController(_ uiViewController: ClockPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ClockPreview.ContainerView>) {
            
        }
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ClockPreview.ContainerView>) -> UIViewController {
            return ClockViewController()
        }
    }
}
