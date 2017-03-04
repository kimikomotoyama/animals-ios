//
//  DetailViewController.swift
//  Animals
//
//  Created by Kimiko Motoyama on 2017/03/04.
//  Copyright © 2017 Kimiko Motoyama. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var info: AnimalInfo!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = info.name
        label.text = info.description
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
