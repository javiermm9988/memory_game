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
        let ImgShuffle = imagesArray.shuffled()
        
        photo_side.image = ImgShuffle[0]
        
        let seconds: Double = 2
        
        for i in 0 ... 5 {

            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                
            }
            
        }
    }
}

