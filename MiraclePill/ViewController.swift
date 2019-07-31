//
//  ViewController.swift
//  MiraclePill
//
//  Created by Vuk Knežević on 12/30/18.
//  Copyright © 2018 Teodora Knežević. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    @IBOutlet weak var successImgView: UIImageView!
    
    @IBOutlet weak var pillImg: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextFiled: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    let states = ["Alaska","Arkansas","Alabama","California","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        pillImg.isHidden = true
        pillLabel.isHidden = true
        priceLabel.isHidden = true
        dividerView.isHidden = true
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        addressLabel.isHidden = true
        addressTextFiled.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
        buyNowBtn.isHidden = true
        successImgView.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControl.State.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipLabel.isHidden = false
        zipTextField.isHidden = false
    }
    
    
}

