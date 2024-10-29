//
//  ViewController.swift
//  FirstProject
//
//  Created by Nova Labs on 10/26/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configurarLayout()
    }

    func configurarLayout(){
        outletButton.layer.cornerRadius = 50
    }
    
    @IBOutlet weak var outletButton: UIButton!
    
    @IBAction func clickButton(_ sender: Any) {
        print("BUTTON CLICKED")
    }
    
}

