//
//  SampleViewController
//  Sample
//

import UIKit
import TILogger

class SampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TILogger().debug(message: "test")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
