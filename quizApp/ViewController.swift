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
    
    @IBOutlet weak var option1: UILabel!
    
    @IBOutlet weak var option2: UILabel!
    
    
    @IBOutlet weak var option3: UILabel!
    
    @IBOutlet weak var option4: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    
    
    
    }


    
    @IBAction func next(_ sender: UIButton) {
    
    
let path = Bundle.main.path(forResource: "questionList", ofType: "plist")
    
        let dict = NSDictionary(contentsOfFile: path!)
        
        let data = dict?.object(forKey: "questions") as! [[String]]
        let try1 =  data.randomElement()
    
        print(try1)

        question.text = try1![0]
        
        option1.text = try1![2]
        option2.text = try1![2]
        option3.text = try1![3]
        option4.text = try1![4]
      
        img.image = UIImage(named: try1![5])


    }
    
    
    
    
    
    
    
    
}

