import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var start_button_out: UIButton!
    @IBAction func start_button(_ sender: Any) {
        imageSequence()
        start_button_out.isHidden = true
    }
    
    @IBOutlet weak var photo_side: UIImageView!
    
    var imagesArray : [UIImage] = [
        #imageLiteral(resourceName: "isla"),
        #imageLiteral(resourceName: "carretera"),
        #imageLiteral(resourceName: "cascada"),
        #imageLiteral(resourceName: "arboles"),
        #imageLiteral(resourceName: "barco"),
        #imageLiteral(resourceName: "playa")
    ]
    
    func imageSequence() {
        imagesArray.shuffle()
        ImgShuffle = imagesArray.shuffled()
        
        photo_side.image = ImgShuffle[0]
        
        var seconds: Double = 0
        
        for i in 1 ... 5 {
            
            seconds += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                let j = i
                self.photo_side.image = self.imagesArray[j]
                
                if j == 5 {
                    let seconds2 : Double = 1
                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds2) {
                        self.performSegue(withIdentifier: "enter_game_view" , sender: nil)
                    }
                }
            }
        }
    }
}

