//
//  ViewController.swift
//  NSUserDefaults
//
//  Created by IwasakIYuta on 2021/07/08.
//https://qiita.com/uhooi/items/429cac9b798b9c0937ae
//CRUD操作

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // String?で返すのであんラップしてる
        //保存してる値をforKeyを指定して取得
        if let text1 = UserDefaults.standard.string(forKey: "text1") {
            //値が保存されてる時にそのまま値を表示する
            textField.text = text1
        }
    }
    //editingChangedにすることで変更を検出することができる
    @IBAction func editingChanged(_ sender: Any) {
        print(textField.text ?? "")
    }
    //UserDefaultsにStringを保存してみる
    @IBAction func seveButton(_ sender: UIButton) {
        //textField.textをforKeyで指定して保存する
        UserDefaults.standard.set(textField.text, forKey: "text1")
    }
    
}

