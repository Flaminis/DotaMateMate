//
//  BlurImage.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 22/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit


extension UIImageView{
    
    //Method 1
    func makeBlurImage(targetImageView:UIImageView?)
    {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.ExtraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = targetImageView!.bounds
        
        blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight] // for supporting device rotation
        targetImageView?.addSubview(blurEffectView)
    }
    //Method 2
    func convertToBlurImage(imageToBlur:UIImage) -> UIImage
    {
        let gaussianBlurFilter = CIFilter(name: "CIGaussianBlur")
        gaussianBlurFilter!.setValue(CIImage(CGImage: imageToBlur.CGImage!), forKey:kCIInputImageKey)
        
        let initialImage = CIImage(CGImage: imageToBlur.CGImage!)
        
        let finalImage = gaussianBlurFilter!.outputImage
        let finalImagecontext = CIContext(options: nil)
        
        let finalCGImage = finalImagecontext.createCGImage(finalImage!, fromRect: initialImage.extent)
        return UIImage(CGImage: finalCGImage)
    }
}
