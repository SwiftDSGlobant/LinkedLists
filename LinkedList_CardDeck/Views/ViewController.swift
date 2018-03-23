//
//  ViewController.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/20/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var list: DoublyLinkedList<Int> = DoublyLinkedList<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func append(_ sender: Any) {
        let num = Int(textField.text!)!
        list.append(value: num)
        label.text = list.description
        textField.text = ""
    }
    
    @IBAction func shuffle(_ sender: Any) {
        list.shuffle()
        label.text = list.description
    }
    
}

