//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Apple on 8/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var listOfToDo : [ToDoCD] = []
    
 /*   func createToDo() -> [ToDoClass] {
        let swiftToDo = ToDoClass()
        swiftToDo.description = "Lacrosse"
        swiftToDo.important = true
        let dogToDo = ToDoClass()
        dogToDo.description = "Tennis"
        // important is set false by defalt.
        
        return [swiftToDo, dogToDo]
    }
    */
    func getToDos() {
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let dataFromCoreData = try? accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                
                listOfToDo = dataFromCoreData
                tableView.reloadData()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
           // listOfToDo = createToDo()
        }
    // MARK: - Table view data source

//  override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // #warning Incomplete implementation, return the number of rows
    return listOfToDo.count
    }
    
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let eachToDo = listOfToDo [indexPath.row]
        
        if let thereIsDescription = eachToDo.descriptionInCD
        {
            if eachToDo.importantInCD {
            cell.textLabel?.text = "❗️" + thereIsDescription
            } else {
            cell.textLabel?.text = eachToDo.descriptionInCD
        }
        // Configure the cell...
        }
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
 override func viewWillAppear(_ animated: Bool) {
     getToDos()
 }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
        if let nextAddToDoVC = segue.destination as? AddToDoViewController {
         nextAddToDoVC.previousToDoTVC = self
    }

    if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
         if let choosenToDo = sender as? ToDoCD {
            //The ToDoCD may need to change back to ToDoClass. Fix this later if doesn't work.
              nextCompletedToDoVC.selectedToDo = choosenToDo
              nextCompletedToDoVC.previousToDoVC = self
         }
    }
}

 override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

     // this gives us a single ToDo
     let eachToDo = listOfToDo[indexPath.row]

     performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
     }
    
    }
