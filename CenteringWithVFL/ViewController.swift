//
//  ViewController.swift
//  CenteringWithVFL
//
//  Created by Evgenii Neumerzhitckii on 11/10/2014.
//  Copyright (c) 2014 Evgenii Neumerzhitckii. All rights reserved.
//

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
    label.setTranslatesAutoresizingMaskIntoConstraints(false)
    label.text = "I am centered!"
    label.backgroundColor = UIColor.yellowColor()    
    return label
  }

  func createLabelConstrants(label: UILabel) {
    // Center horizontally
    // ------------------
    let views = ["superview":view, "label":label]

    var constraints = NSLayoutConstraint.constraintsWithVisualFormat(
      "V:[superview]-(<=1)-[label]",
      options: NSLayoutFormatOptions.AlignAllCenterX,
      metrics: nil,
      views: views)

    view.addConstraints(constraints)

    // Center vertically
    // ------------------
    constraints = NSLayoutConstraint.constraintsWithVisualFormat(
      "H:[superview]-(<=1)-[label]",
      options: NSLayoutFormatOptions.AlignAllCenterY,
      metrics: nil,
      views: views)

    view.addConstraints(constraints)
  }
}
