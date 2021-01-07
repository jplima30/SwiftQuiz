//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by jplima on 05/01/21.
//  Copyright © 2021 jplima. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    
    @IBOutlet weak var viewTimer: UIView!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet var buttonAnswers: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
       
    @IBAction func SelectAnswer(_ sender: UIButton) {
         
    }
    
}
