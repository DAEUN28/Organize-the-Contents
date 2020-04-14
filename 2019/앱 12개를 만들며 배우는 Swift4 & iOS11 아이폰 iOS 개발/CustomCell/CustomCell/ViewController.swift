//
//  ViewController.swift
//  CustomCell
//
//  Created by baby1234 on 22/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var itemlist = [[String:String]]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = ["name":"사과","image":"apple.jpeg","amount":"6개", "value":"3000원"]
        let item2 = ["name":"블루베리","image":"blueberry.jpg","amount":"0개", "value":"5000원"]
        let item3 = ["name":"당근","image":"carrot.jpg","amount":"5개", "value":"200원"]
        let item4 = ["name":"체리","image":"cherry.png","amount":"2개", "value":"12000원"]
        let item5 = ["name":"포도","image":"grape.jpg","amount":"51개", "value":"25000원"]
        let item6 = ["name":"키위","image":"kiwi.png","amount":"2개", "value":"9000원"]
        let item7 = ["name":"레몬","image":"lemon.png","amount":"14개", "value":"4500원"]
        let item8 = ["name":"라임","image":"lime.jpg","amount":"4개", "value":"900원"]
        let item9 = ["name":"고기","image":"meat.jpg","amount":"8개", "value":"99999원"]
        let item10 = ["name":"딸기","image":"strawberry.jpg","amount":"9개", "value":"8600원"]
        let item11 = ["name":"토마토","image":"tomato.png","amount":"23개", "value":"2600원"]
        let item12 = ["name":"야채","image":"vegetable.jpg","amount":"7개", "value":"2200원"]
        let item13 = ["name":"멜론","image":"watermelon.png","amount":"18개", "value":"6800원"]
    
        itemlist = [item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        let dicTemp = itemlist[indexPath.row]
        
        cell.nameLabel.text = dicTemp["name"]
        cell.amountLabel.text = dicTemp["amount"]
        cell.valueLabel.text = dicTemp["value"]
        
        cell.imgView.image = UIImage(named:dicTemp["image"]! )
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"{
            (segue.destination as! DetailViewController).detaildata = itemlist[tableView.indexPathForSelectedRow!.row]
        }
    }

}

