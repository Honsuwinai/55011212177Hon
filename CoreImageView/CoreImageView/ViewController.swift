//
//  ViewController.swift
//  CoreImageView
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary

class ViewController: UIViewController , UINavigationControllerDelegate , UIImagePickerControllerDelegate{

    @IBOutlet weak var amountsliders: UISlider!
  
    @IBOutlet weak var UIImageCiew: UIImageView!
    
    var context : CIContext!
    var filter : CIFilter!
    var beginImage : CIImage!
    var orientation : UIImageOrientation = .Up
    
    
    @IBAction func SavetoAlbum(sender: AnyObject) {
        //1
        let imageTosave = filter.outputImage
        //2
        let softwareContext = CIContext(options: [kCIContextUseSoftwareRenderer : true])
        //3
        let cgimg = softwareContext.createCGImage(imageTosave, fromRect: imageTosave.extent())
        //4
        let library = ALAssetsLibrary()
        library.writeImageToSavedPhotosAlbum(cgimg, metadata: imageTosave.properties(), completionBlock: nil)
        
    }
    
    
    
    @IBAction func LoadPhoto(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
            }
    
    
    

    @IBAction func amountSlider(sender: UISlider) {
        let sliderValue = sender.value
        
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        let newImage = UIImage(CGImage: cgimg, scale:1, orientation:orientation)
        self.UIImageCiew.image = newImage
    }
    
     func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: NSDictionary!) {
        self.dismissViewControllerAnimated(true, completion: nil)
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        beginImage = CIImage(image:gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        self.amountSlider(amountsliders)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //1
        let fileURL = NSBundle.mainBundle().URLForResource("Image", withExtension: "png")
        //2
        beginImage = CIImage(contentsOfURL: fileURL)
        //3
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        
        
        //1
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        //2
        let newImage = UIImage(CGImage: cgimg)
        self.UIImageCiew.image = newImage
        
        self.logAllfilters()    }
    
    func oldPhoto(img: CIImage, withAmount intensity: Float) -> CIImage{
        //1
        let sepia = CIFilter(name: "CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        //2
        let random = CIFilter(name: "CIRandomGenerator")
                //3
        let lighten = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        //4
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        //5
        let composite = CIFilter(name: "CIHardLightBlendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        //6
        let vignette = CIFilter(name: "CIVignette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 30, forKey: "inputRadius")
        //
        return vignette.outputImage
    }
    



    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func  logAllfilters() {
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        for filterName: AnyObject in properties {
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }


}

