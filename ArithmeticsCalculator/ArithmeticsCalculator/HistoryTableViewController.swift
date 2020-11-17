//
//  HistoryTableViewController.swift
//  ArithmeticsCalculator
//
//  Created by Student on 11/16/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {

    // Creating local guess array to store guesses array
    private var historyResults:[ArithCalculator.Result] = []
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Making empty array to add new elements of guesses
        historyResults = []
        // addding elements into historyGuesses array by calling history function
        history()
        // Reloading data after retrieve data
        self.tableView.reloadData()

    }

    // This function is used to retrieve data from guesser and store in local variable
    func history() {
        
        
        let num:Int = ArithCalculator.shared.resultsCount();
        print("count \(num)");
        // iterate through guesses array and appendin elements to local array
        for i in stride(from: 0, to: num, by: 1){
            historyResults.append(ArithCalculator.shared.results(index: i))
        }
    }
    

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // Returns count of historyGuesses array i.e; number of cells
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return historyResults.count
    }
    
    
    // This function display required rows of historyGuesses
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cellIdentifier"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HistoryTableViewCell  else {
            fatalError("The dequeued cell is not an instance of HistoryTableViewCell.")
        }
        
        let hist = historyResults[indexPath.row]
        
        // It updates labels of cell with requied values
        cell.queriesLBL.text = "\(hist.query)"
        cell.answersLBL.text = "\(hist.answer)"
        
        return cell
    }
    

}
