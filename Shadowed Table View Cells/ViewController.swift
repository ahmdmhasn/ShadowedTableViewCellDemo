//
//  ViewController.swift
//  Shadowed Table View Cells
//
//  Created by Ahmed M. Hassan on 6/12/20.
//  Copyright © 2020 Ahmed M. Hassan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    registerCells()
    
    /// You will need to remove separators to make your layout looks better with corner radius
    tableView.separatorStyle = .none
  }

  private func registerCells() {
    let nib = UINib(nibName: ShadowedTableViewCell.identifier, bundle: nil)
    tableView.register(nib, forCellReuseIdentifier: ShadowedTableViewCell.identifier)
  }

}

extension ViewController {
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: ShadowedTableViewCell.identifier) as! ShadowedTableViewCell
    return cell
  }
}

