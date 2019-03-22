//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Felipe Costa on 3/21/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var label: UILabel!
    
    struct Color{
        var name:String
        var uiColor: UIColor
    }
    
    var colors = [
        Color(name: "Red", uiColor: UIColor.red),
        Color(name: "Orange", uiColor: UIColor.orange),
        Color(name: "Yellow", uiColor: UIColor.yellow),
        Color(name: "Green", uiColor: UIColor.green),
        Color(name: "Blue", uiColor: UIColor.blue),
        Color(name: "Purple", uiColor: UIColor.purple)]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colors[0].uiColor
        label.text = colors[0].name
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        view.backgroundColor = colors[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    


}
