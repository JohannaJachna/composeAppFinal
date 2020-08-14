//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Apple on 8/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    
    var previousToDoTVC = ToDoTableViewController()
    
    
    @IBOutlet weak var promptLabel: UILabel!
    
    
    @IBOutlet weak var descriptionInput: UITextField!
    @IBOutlet weak var switchInput: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func randomPrompt(_ sender: Any) {
        let array = ["Name what is enough for you.","Write the words you want to hear right now.", "What can you learn from your biggest mistakes?", "I feel happiest in my skin when....", "I really wish others knew this about me....","Write about your first love — whether a person, place or thing.", "What’s surprised you the most about your life or life in general?", "What’s one topic you need to learn more about to help you live a more fulfilling life?", "When I’m in pain — physical or emotional — the kindest thing I can do for myself is…", "The words I’d like to live by are…", "Describe a day in your life that was especially enjoyable. What made the day so good?", "Write a thank-you note to yourself"]
        promptLabel.text = array.randomElement()
    }
    
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
             return
        }

        //this line stores the information from Core Data into the object (dataFromCoreData) that we can access.
             let dataFromCoreData = accessToCoreData.persistentContainer.viewContext

        //this line creates an empty object that is the same data type as the ToDoCD entry within Core Data.  This means this object will have all the properties of ToDoCD.
             let newToDo = ToDoCD(context: dataFromCoreData)

        //these lines give the object information from the user input
        newToDo.descriptionInCD = descriptionInput.text
        newToDo.importantInCD = switchInput.isOn

        //This is like clicking "save"! Our new object is now safe in Core Data!
             accessToCoreData.saveContext()

        //this send the user back to the Table View Controller
             navigationController?.popViewController(animated: true)
        }

        /*let newToDo = ToDoClass()
        
        if let checkForInput = descriptionInput.text {
            newToDo.description = checkForInput
            newToDo.important = switchInput.isOn
        }
        previousToDoTVC.listOfToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
 */
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
