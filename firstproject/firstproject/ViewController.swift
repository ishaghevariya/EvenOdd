//
//  ViewController.swift
//  firstproject
//
//  Created by DCS on 09/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myButton :UIButton={
        let button=UIButton()
        button.setTitle("Even/Odd", for:.normal)
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        button.layer.cornerRadius=6
        return button
    }()
    @objc private func handleEvent(){
        print("recived..")
        let vc = EvenOddCheckVC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the viezzz
        view.addSubview(myButton)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame=CGRect(x:40, y:(view.height/2)-30, width:view.width-80, height: 60)
    }
    
}

