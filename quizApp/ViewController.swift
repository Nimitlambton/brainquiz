//
//  ViewController.swift
//  quizApp
//
//  Created by JASI on 19/11/19.
//  Copyright © 2019 Nimit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var question: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    
    
    
    }


    
    @IBAction func next(_ sender: UIButton) {
    
    
let path = Bundle.main.path(forResource: "questionList", ofType: "plist")
    
        let dict = NSDictionary(contentsOfFile: path!)
        
        let data = dict?.object(forKey: "questions") as! [[String]]
        let try1 =  data.randomElement()
        print(try1![1])
        
        
    }
    
    
    
    
    
    
    
    
}

