//
//  ViewController.swift
//  Animals
//
//  Created by Kimiko Motoyama on 2017/03/04.
//  Copyright © 2017 Kimiko Motoyama. All rights reserved.
//

import UIKit

struct AnimalInfo {
    var name: String
    var description: String
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    let items = [
        AnimalInfo(name: "ライオン",
                   description: "百獣の王。一般的に最も強い動物として知られている。"),
        AnimalInfo(name: "サイ",
                   description: "頭部に硬いツノを持っている。巨体に似合わず最高時速５０kmで走る。"),
        AnimalInfo(name: "シマウマ",
                   description: "白黒の模様の動物。視覚や嗅覚、聴覚が優れている。"),
        AnimalInfo(name: "キリン",
                   description: "最も背が高い動物。首が長いところが特徴。"),
        AnimalInfo(name: "ゾウ",
                   description: "陸生動物では世界最大の動物。鼻は立っていても地面に届くほど長い。")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedRow = tableView.indexPathForSelectedRow {
            let controller = segue.destination as! DetailViewController
            controller.info = items[selectedRow.row]
            
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "NameCell")
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
    
    

}

