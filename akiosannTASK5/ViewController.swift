//
//  ViewController.swift
//  akiosannTASK5
//
//  Created by IwasakIYuta on 2021/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var text1Field: UITextField!
    
    @IBOutlet private var text2Field: UITextField!
    
    @IBOutlet private var resultLabel: UILabel!
    private  let dividedBy = DividedBy()
    override func viewDidLoad() {
        super.viewDidLoad()
        dividedBy.delegate = self
        text1Field.keyboardType = .decimalPad
        text2Field.keyboardType = .decimalPad
    }
    
    @IBAction func dividedByButton(_ sender: UIButton) {
        //dividedByのメソッドをここで呼ぶ
        dividedBy.dividedBy()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
//処理をViewControllerに任せる
extension ViewController: DividedByAlertDelegate{
    //DividedByAlertDelegateの関数たちを定義
    func dialogAlert(message: String) {
        let alert = UIAlertController(title: "Task5", message: message, preferredStyle: .alert )
        
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        present(alert, animated: true)
    }
    
    func dividedBydidStart() {
        
        guard let text1 = Double(text1Field.text!) else {
            dialogAlert(message: "割られる数を入力してください")
            return
        }
        guard let text2 = Double(text2Field.text!) else {
            dialogAlert(message: "割る数を入力してください")
            return
        }
        //text2の値が0の時にdialogAlertを出してそれ以外の場合は結果を表示する
        if text2 == 0 {
            dialogAlert(message: "割る時は０以外を入力してください")
        } else {
            
            resultLabel.text = String(text1 / text2)
            
        }
    }
    
    
}
