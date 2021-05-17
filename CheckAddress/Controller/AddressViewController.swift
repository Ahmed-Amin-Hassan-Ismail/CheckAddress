//
//  AddressViewController.swift
//  CheckAddress
//
//  Created by Amin  on 5/17/21.
//  Copyright © 2021 MAC. All rights reserved.
//

import UIKit

class AddressViewController: UITableViewController {
    
    var addressArray = [Address]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addressObject = Address(street: "Abou El-Fotouh Abd Allah", city: "Cairo", state: "Egypt", zipCode: "022")
        addressArray.append(addressObject)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return addressArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! AddressViewCell

        // Configure the cell...
        let address = addressArray[indexPath.row]
        cell.nameLabel.text = address.street
        cell.cityLabel.text = address.city
        cell.stateLabel.text = address.state
        cell.zipCodeLabel.text = address.zipCode
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
   
}
