
import UIKit
import PlaceholderLabel

class TableViewController: UITableViewController {

  @IBOutlet weak var nameLabel: PlaceholderLabel!
  @IBOutlet weak var genderLabel: PlaceholderLabel!
  @IBOutlet weak var birthdayLabel: PlaceholderLabel!

  var label: PlaceholderLabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    nameLabel.text = "Eric"
    genderLabel.text = "Male"
  }

}
