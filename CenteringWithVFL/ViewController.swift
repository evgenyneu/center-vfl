import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    let label = createLabel()
    view.addSubview(label)
    createLabelConstrants(label)
  }

  private func createLabel() -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "I am centered!"
    label.backgroundColor = UIColor.yellowColor()    
    return label
  }

  func createLabelConstrants(label: UILabel) {
    // Center horizontally
    var constraints = NSLayoutConstraint.constraintsWithVisualFormat(
      "V:[superview]-(<=1)-[label]",
      options: NSLayoutFormatOptions.AlignAllCenterX,
      metrics: nil,
      views: ["superview":view, "label":label])

    view.addConstraints(constraints)

    // Center vertically
    constraints = NSLayoutConstraint.constraintsWithVisualFormat(
      "H:[superview]-(<=1)-[label]",
      options: NSLayoutFormatOptions.AlignAllCenterY,
      metrics: nil,
      views: ["superview":view, "label":label])

    view.addConstraints(constraints)
  }
}
