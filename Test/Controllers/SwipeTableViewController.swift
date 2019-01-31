//
//  SwipeTableViewController.swift
//  Test
//
//  Created by Alex Mendes on 1/31/19.
//  Copyright © 2019 Alex Mendes. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    //MARK : Table View Data Source Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
                
        cell.delegate = self
        
        return cell
        
    }
    
    
        
        func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
            
            guard orientation == .right else { return nil }
            
            let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
                // handle action by updating model with deletion
                
                self.updateModel(at: indexPath)
            }
            // customize the action appearance
            deleteAction.image = UIImage(named: "deleteIcon")
            return [deleteAction]
        }
    
        
        func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
            
            var options = SwipeOptions()
            options.expansionStyle = .destructive
            options.transitionStyle = .border
            
            return options
        }
    
    func updateModel(at indexPath: IndexPath) {
        // Model data being deleted inside the controllers
    }
        
   

}

