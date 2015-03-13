
import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController, text:String)
}

class ColorTwoViewController: UIViewController {

    var delegate:ColorTwoViewControllerDelegate? = nil
    
    var colorString = ""
    @IBOutlet weak var colorLabel: UILabel!
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var inclass: UILabel!
    
    @IBOutlet weak var midterm: UILabel!
    
    @IBOutlet weak var final: UILabel!
    
    @IBOutlet weak var table: UITableView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    

    
    
    @IBAction func Calculate(sender: UIBarButtonItem) {
        if (delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
 
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        colorLabel.text = colorString
    }


}
