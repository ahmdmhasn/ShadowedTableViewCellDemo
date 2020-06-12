//
//  ShadowedTableViewCell.swift
//  Shadowed Table View Cells
//
//  Created by Ahmed M. Hassan on 6/12/20.
//  Copyright © 2020 Ahmed M. Hassan. All rights reserved.
//

import UIKit

class ShadowedTableViewCell: UITableViewCell {
  
  // MARK: - Constants
  
  static let identifier = "\(ShadowedTableViewCell.self)"
  
  // MARK: - Outlets
  
  @IBOutlet weak var parentView: UIView!
  
  // MARK: - Lifecycle
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
    configureParentView()
    
    /// Update selection style or create your own selection view
    selectionStyle = .none
  }
  
  // MARK: - Configuration
  
  private func configureParentView() {
    /// Corner Radius
    parentView.layer.cornerRadius = 6
    /// Shadow
    parentView.layer.shadowColor = UIColor.black.cgColor
    parentView.layer.shadowOffset = CGSize(width: 0, height: 0)
    parentView.layer.shadowOpacity = 0.5
    parentView.layer.shadowRadius = 4.0
    parentView.layer.shouldRasterize = true
    /// Border
    parentView.layer.borderWidth = 0.5
    parentView.layer.borderColor = UIColor.lightGray.cgColor
  }
  
}
