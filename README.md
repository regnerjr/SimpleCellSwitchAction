# SimpleCellSwitchAction
Ever wondered how to hook up a UISwitch or UIButton inside of a tableViewCell. Here is how. 

This simple project sets up a tableView with 2 cells. Each cell has a switch allowing you to toggle a default property for the app.

When you have an UIControl (UIButton, UISwitch, other thing you can interact with) inside of a cell it can be difficult to know how to hook that action up. The way that I have found that works for me is attaching the action to be run to a property of the cell. 

    class cell: UITableViewCell {
      
      @IBOutlet var weak button: UIButton!
      
      var action: (() -> Void)?
      
      @IBAction buttonAction(sender: UIButton){
        action?()
      }
    }
    
