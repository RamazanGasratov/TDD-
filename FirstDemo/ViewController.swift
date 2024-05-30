//
//  ViewController.swift
//  FirstDemo
//
//  Created by Ramazan Gasratov on 17.05.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfVowels(in string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u",
                                   "A", "E", "I", "O", "U"]
        return string.reduce(0) {
            $0 + (vowels.contains($1) ? 1 : 0)
        }
    }


}

