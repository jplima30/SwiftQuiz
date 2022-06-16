import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var labelAnswered: UILabel!
    @IBOutlet weak var labelCorrected: UILabel!
    @IBOutlet weak var labelWrong: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnwers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelAnswered.text = "Perguntas respondidas: \(totalAnwers)"
        labelCorrected.text = "Perguntas corretas: \(totalCorrectAnswers)"
        labelWrong.text = "Perguntas erradas: \(totalAnwers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers*100/totalAnwers
        labelScore.text = "\(score)%"
        
    }
    
    @IBAction func Close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        }
        
    }
    

