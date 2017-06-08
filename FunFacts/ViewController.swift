sdsdassd//
//  ViewController.swift
//  FunFacts
//
//  Created by Arno de Jonge on 16/05/2017.
//  Copyright © 2017 Arno de Jonge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
let factProvider = FactProvider()
let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        funFactLabel.text = factProvider.facts[0]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
    }
    
}

