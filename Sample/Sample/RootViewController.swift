//
//  RootViewController
//  Sample
//

import UIKit
import TILogger

class RootViewController: UITableViewController, UIAdaptivePresentationControllerDelegate {

    let separatorStyle: UITableViewCell.SeparatorStyle = .singleLine

    var section1 = ["Test1",  "Test2"]

    @IBOutlet weak var baseTextView:UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return section1.count
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath)

            let text = section1[indexPath.row]
            cell.textLabel!.text = text
            return cell
        }

        return UITableViewCell.init()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)

        if indexPath.section == 0 {
            if indexPath.row == 0 {
                TILogger().debug("test")
            } else if indexPath.row == 1 {
                TILogger().verbose("test")
            }
        }

        tableView.deselectRow(at: indexPath, animated: true)
    }

    // MARK: - function

}
