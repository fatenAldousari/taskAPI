//
//  secondViewController.swift
//  Task: NavigationController
//
//  Created by faten aldosari on 29/02/2024.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    var receviedData: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        title = "second page"
        
        print(receviedData ?? "nothing recevied")
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
