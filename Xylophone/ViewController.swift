import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender)
    }
    
    func playSound(_ sender: UIButton) {
            //
            //        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
            //        player = try! AVAudioPlayer(contentsOf: url!)
            //        player.play()
            //        print(sender.tag)
        
        ////Short Version
        let url = Bundle.main.url(forResource: sender.titleLabel!.text, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { 
            sender.alpha = 1
        }
        
        ///Long way
        ///
//        switch sender.tag{
//        case 1:
//            let url = Bundle.main.url(forResource: "C", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//            break
//        case 2:
//            let url = Bundle.main.url(forResource: "D", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//            break
//        case 3:
//            let url = Bundle.main.url(forResource: "E", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//            break
//        case 4:
//            let url = Bundle.main.url(forResource: "F", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//            break
//        case 5:
//            let url = Bundle.main.url(forResource: "G", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//            break
//        case 6:
//            let url = Bundle.main.url(forResource: "A", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//            break
//        case 7:
//            let url = Bundle.main.url(forResource: "B", withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//            break
//        default: print("Check switch ")
//            break
//        }
    }
}
