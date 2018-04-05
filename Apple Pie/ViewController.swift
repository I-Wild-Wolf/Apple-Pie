//
//  ViewController.swift
//  Apple Pie
//
//  Created by student on 29.03.2018.
//  Copyright © 2018 Wolf Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correktWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false;
    }
    
    var listOfWords = ["Абстракция", "Наследование", "Полиморфизм", "Инкапсуляция"];
    
    let incorrevtMovesAllowed = 7;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newRound();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var currentGame: Game!;

    func newRound() {
        let newWord = listOfWords.removeFirst();
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrevtMovesAllowed);
        updateUI();
    }
    
    func updateUI() {
        let name = "Tree \(currentGame.incorrectMovesRemaining)";
        treeImageView.image = UIImage(named: name);
    }
    
    
}

