//
//  ViewController.swift
//  InterfaceBuilder
//
//  Created by Apple on 20.12.2023.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var intensity: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
    }
    
    @objc func importPicture() {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        dismiss(animated: true)
        currentImage = image
    }

    @IBAction func changeFilter(_ sender: Any) {
    }
    
    @IBAction func save(_ sender: Any) {
    }
    
    @IBAction func intensityChange(_ sender: Any) {
    }
    
}

