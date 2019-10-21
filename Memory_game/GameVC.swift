import UIKit

class GameVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBOutlet weak var points_label: UILabel!
    
    var points : Int = 0
    var endGame : Bool = false
    
    @IBAction func button_1(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    @IBAction func button_2(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    @IBAction func button_3(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    @IBAction func button_4(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    @IBAction func button_5(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    @IBAction func button_6(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    func imagenButtonAction(imageButton : UIImage) {
       
    }
    
}
