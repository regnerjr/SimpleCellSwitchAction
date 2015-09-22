import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var options1Label: UILabel!

    @IBOutlet weak var options2Label: UILabel!

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        let option1 = NSUserDefaults.standardUserDefaults().boolForKey("option1")
        let option2 = NSUserDefaults.standardUserDefaults().boolForKey("option2")

        options1Label.text = option1.description
        options2Label.text = option2.description

    }

}
