import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var start_button_out: UIButton!
    
    /// Comienza el juego cuando pulsas el botón
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func start_button(_ sender: Any) {
        imageSequence()
        start_button_out.isHidden = true
    }
    
    @IBOutlet weak var photo_side: UIImageView!
    
    /// Creas el array de imágenes
    var imagesArray : [UIImage] = [
        #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6")
    ]
    
    /// Crea la sequencia de imágenes que sale después de pulsar el botón
    func imageSequence() {
        
        // Mezcla el array de imágenes en orden aleatorio
        imagesArray.shuffle()
        ImgShuffle = imagesArray.shuffled()
        
        var seconds: Double = 0
        
        for i in 0 ... 5 {
            
            seconds += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                let j = i
                self.photo_side.image = ImgShuffle[j]
                
                if j == 5 {
                    let seconds2 : Double = 1
                    
                    // Pasa a la segunda pantalla cuando la secuencia de imágenes ya se ha acabado
                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds2) {
                        self.performSegue(withIdentifier: "enter_game_view" , sender: nil)
                    }
                }
            }
        }
    }
}

