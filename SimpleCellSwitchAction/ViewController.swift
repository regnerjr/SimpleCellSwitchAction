import UIKit

class ViewController: UITableViewController {

    let items = ["option1", "option2"]

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SwitchCell", forIndexPath: indexPath) as! MySwitchCell

        cell.switchCellLabel.text = items[indexPath.row]
        cell.action = { [weak self] sender in
            if let tableViewController = self {
                NSUserDefaults.standardUserDefaults().setBool(sender.on, forKey: tableViewController.items[indexPath.row]) }
        }
        return cell
    }

}

class MySwitchCell: UITableViewCell {

    @IBOutlet weak var switchCellLabel: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!

    var action: ((sender: UISwitch) -> Void)?

    @IBAction func switchAction(sender: UISwitch) {
        action?(sender: sender)
    }

}
