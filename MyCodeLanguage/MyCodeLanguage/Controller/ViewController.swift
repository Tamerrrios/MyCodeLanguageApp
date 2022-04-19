//
//  ViewController.swift
//  MyCodeLanguage
//
//  Created by Temur Juraev on 18.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var dataCopy = LanguageData()

    @IBOutlet var labelText: UILabel!
    
    @IBOutlet var choice1: UIButton!
    @IBOutlet var choice2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceButtomPressed(_ sender: UIButton) {
        dataCopy.nextQuestion(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
}

extension ViewController {
    func updateUI() {
        labelText.text = dataCopy.getTitle()
        choice1.setTitle(dataCopy.getChoice1(), for: .normal)
        choice2.setTitle(dataCopy.getChoice2(), for: .normal)
    }
    
    
}
