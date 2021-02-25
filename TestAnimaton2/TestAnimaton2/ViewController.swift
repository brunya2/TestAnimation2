//
//  ViewController.swift
//  TestAnimaton2
//
//  Created by Brunya on 25.02.2021.
//

import UIKit

class ViewController: UIViewController {

    private(set) lazy var colorView : UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(colorView)
        colorView.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 25, y: UIScreen.main.bounds.height / 2 - 25, width: 50, height: 50)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        colorView.addGestureRecognizer(tapGesture)
    }
    
    @objc func tap() {
        
        UIView.animate(withDuration: 0.5) {
            self.colorView.transform = self.colorView.transform.scaledBy(x: 2, y: 2)
        }
        
    }
}
