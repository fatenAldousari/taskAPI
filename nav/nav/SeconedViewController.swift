//
//  SeconedViewController.swift
//  nav
//
//  Created by faten aldosari on 28/02/2024.
//

import UIKit

class SeconedViewController: UIViewController {
    var receviedData: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = "second"
        
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
