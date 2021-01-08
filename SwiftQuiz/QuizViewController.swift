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
    
    let quizManager = QuizManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viewTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear, animations: {
            self.viewTimer.frame.size.width = 0
        }) { (sucess) in
            self.showResults()
        }
        
        getNewQuiz()
    }
    
    func getNewQuiz() {
        quizManager.refreshQuiz()
        labelQuestion.text = quizManager.question
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            let button = buttonAnswers[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults() {
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewcontroller = segue.destination as! ResultViewController
        resultViewcontroller.totalAnwers = quizManager.totalAnswers
        resultViewcontroller.totalCorrectAnswers = quizManager.totalAnswers
    }
       
    @IBAction func SelectAnswer(_ sender: UIButton) {
         
        let index = buttonAnswers.index(of: sender)!
        quizManager.validateAnswer(index: index)
        getNewQuiz()
    }
    
}
