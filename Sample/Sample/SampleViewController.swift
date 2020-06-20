//
//  SampleViewController
//  Sample
//

import UIKit
import TILogger

class SampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TILogger().debug("test")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
