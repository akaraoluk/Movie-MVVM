//
//  MainViewController.swift
//  Movie-MVVM
//
//  Created by Abdurrahman Karaoluk on 19.04.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    //IBOutletes:
    @IBOutlet var tableView: UITableView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }


    func configureView() {
        self.title = "Main View"
        self.view.backgroundColor = .red
        
        setupTableView()
    }

}
