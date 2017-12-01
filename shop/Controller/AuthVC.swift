//
//  AuthVC.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 12. 01..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import UIKit
import LocalAuthentication

class AuthVC: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func useTouchIdWasPressed(_ sender: Any) {
        authenticateBiometrics { (authenticated) in
            if authenticated{
                DispatchQueue.main.async {
                    //Authentication was successful
                    self.navigateToAuthenticatedVC()
                }
            }
        }
    }
    
    func authenticateBiometrics(completion: @escaping(Bool)-> Void){
        let myContext = LAContext()
        let myLocalizedReasonString = "Our app uses Touch ID / Face ID to secure your app"
        
        var authError: NSError?
        
        
        if #available(iOS 8.0, macOS 10.12.1, *) {
            if myContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
                myContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: myLocalizedReasonString) { success, evaluateError in
                    if success {
                        // User authenticated successfully, take appropriate action

                        completion(true)
                    } else {
                        // User did not authenticate successfully, look at error and take appropriate action
                        guard let evaluateErrorString = evaluateError?.localizedDescription else { return }
                        self.showAlert(message: evaluateErrorString)
                        completion(false)
                    }
                }
            } else {
                // Could not evaluate policy; look at authError and present an appropriate message to user
                guard let authErrorString = authError?.localizedDescription else { return }
                self.showAlert(message: authErrorString)
                completion(false)
            }
        } else {
            // Fallback on earlier versions
            completion(false)
            
        }
    }
    
    func navigateToAuthenticatedVC(){
        if let loggedinVC = storyboard?.instantiateViewController(withIdentifier: "ShopVC"){
            DispatchQueue.main.async {
                self.navigationController?.pushViewController(loggedinVC, animated: true)
            }
            
        }
    }
    
    func showAlert(message: String){
        let alertVC = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertVC.addAction(action)
        present(alertVC, animated: true, completion: nil)
    }
    
}
