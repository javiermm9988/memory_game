import UIKit

class GameVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        success_label.isHidden = true
        failure_label.isHidden = true
        finish_game_label.isHidden = true
        points.text = "Puntos: 0"
        
    }
    
    @IBOutlet weak var success_label: UILabel!
    @IBOutlet weak var failure_label: UILabel!
    @IBOutlet weak var points: UILabel!
    @IBOutlet weak var finish_game_label: UILabel!
    
    var actuallyPoints : Int = 0
    var endGame : Bool = false
    var clickNow : Int = 0
    
    /// Con esta función, recibo el botón, cogo la imágen de su interior y la mando a otro método
    ///
    /// - Parameter sender: La imágen del botón
    @IBAction func button_1(_ sender: UIButton) {
        let imgButton: UIImage = (sender.imageView?.image!)!
        if endGame == false {
            imagenButtonAction(imageButton: imgButton)
        }
    }
    
    /// Compara la imágen del botón recibida con el array de imágenes pasado.
    ///
    /// - Parameter imageButton: <#imageButton description#>
    func imagenButtonAction(imageButton : UIImage) {

        if (ImgShuffle[clickNow]==imageButton) {
            success_label.isHidden = false
            failure_label.isHidden = true
            
            // Sumo un punto si la imágen es igual
            actuallyPoints += 1
            points.text! = ("Puntos: \(actuallyPoints)")
            
        } else {
            
            failure_label.isHidden = false
            success_label.isHidden = true
            
        }
        
        clickNow += 1
        
        // Cuando el número de clicks es 6, el juego acaba
        if clickNow == 6 {
            endGame = true
            finish_game_label.isHidden = false
        }
        
    }

}
