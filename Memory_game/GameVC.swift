import UIKit

class GameVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        success_label.isHidden = true
        failure_label.isHidden = true
        finish_game_label.isHidden = true
        points.text = "Puntos: 0"
        
        for i in 0...5 {
            print("Array pantalla 2: ", ImgShuffle[i].imageAsset as Any)
        }
    }
    
    @IBOutlet weak var points_label: UILabel!
    @IBOutlet weak var success_label: UILabel!
    @IBOutlet weak var failure_label: UILabel!
    @IBOutlet weak var points: UILabel!
    @IBOutlet weak var finish_game_label: UILabel!
    
    var actuallyPoints : Int = 0
    var endGame : Bool = false
    var clickNow : Int = 0
    
    @IBAction func button_1(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    
    func imagenButtonAction(imageButton : UIImage) {
        
        print("Boton:", imageButton.imageAsset as Any)
        print("array:", ImgShuffle[clickNow].imageAsset as Any)

        if (ImgShuffle[clickNow]==imageButton) {
            success_label.isHidden = false
            failure_label.isHidden = true
            
            actuallyPoints += 1
            
            points.text! = ("Puntos: \(actuallyPoints)")
            
        } else {
            failure_label.isHidden = false
            success_label.isHidden = true
            
        }
        
        clickNow += 1
        
        if clickNow == 6 {
            endGame = true
            finish_game_label.isHidden = false
        }
        
        print("clicks \(clickNow)")
        
    }

}
