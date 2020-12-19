//
//  ViewController.swift
//  AutoLayoutUIKitOnly
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/12/20.
//

import UIKit

class MainController: UIViewController {

    var mainView: MainView!
    
    var swct: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView
        
        self.title = "Main View"
        
        self.mainView.mainButton.addTarget(self, action: #selector(buttonGetPressed), for: .touchUpInside)
    }

    @objc
    private func buttonGetPressed(){
        self.mainView.textlabel.textColor = .green
        self.mainView.textlabel.text = "Red"
        swct += 1
        if swct == 2 {
            self.mainView.textlabel.textColor = .red
            self.mainView.textlabel.text = "Green"
            swct = 0
        }
    }
}

