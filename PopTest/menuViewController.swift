import UIKit

class menuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var links : [String] = ["Share", "Manage"]
    var currentPopover:UIPopoverController!

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return links.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.item == 0 {
            let alertController = UIAlertController(title: "Share", message: "No Bookmarks to Share", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Dismiss", style: .Cancel) { (_) in }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true) {}
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 
        
        cell.textLabel?.text = links[indexPath.row] as String
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
