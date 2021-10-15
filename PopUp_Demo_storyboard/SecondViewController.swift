//
//  ViewController.swift
//  PopUp_Demo_storyboard
//
//  Created by 준수김 on 2021/10/15.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myView.layer.cornerRadius = 15
        
    }

    @IBAction func dismissBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

