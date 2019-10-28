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
        #imageLiteral(resourceName: "1"),
        #imageLiteral(resourceName: "2"),
        #imageLiteral(resourceName: "3"),
        #imageLiteral(resourceName: "4"),
        #imageLiteral(resourceName: "5"),
        #imageLiteral(resourceName: "6")
    ]
    
    
    func imageSequence() {
        
        imagesArray.shuffle()
        ImgShuffle = imagesArray.shuffled()
        
        var seconds: Double = 0
        
        for i in 0 ... 5 {
            
            seconds += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                let j = i
                self.photo_side.image = ImgShuffle[j]
                
                print("Array: ", ImgShuffle[j].imageAsset as Any)
                
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

