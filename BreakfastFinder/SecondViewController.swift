import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var facebookLoginBtn: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var textfieldPassword: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Creamos un CAGradientLayer
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 0.09, green: 0.60, blue: 0.00, alpha: 1.00).cgColor, // Color(hex: "169A00")
            UIColor(red: 0.09, green: 0.60, blue: 0.00, alpha: 1.00).cgColor, // Color(hex: "169A00")
            UIColor(red: 0.42, green: 0.71, blue: 0.12, alpha: 1.00).cgColor, // Color(hex: "6BB51E")
            UIColor(red: 0.60, green: 0.77, blue: 0.18, alpha: 1.00).cgColor, // Color(hex: "99C32F")
            UIColor(red: 0.80, green: 0.83, blue: 0.26, alpha: 1.00).cgColor, // Color(hex: "CCD441")
            UIColor(red: 1.00, green: 0.89, blue: 0.33, alpha: 1.00).cgColor  // Color(hex: "FFE353")
        ]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        // Creamos una UIView para contener el gradiente
        let gradientView = UIView(frame: view.bounds)
        gradientView.layer.addSublayer(gradientLayer)
        // Agregamos la UIView al fondo de la vista principal
        view.insertSubview(gradientView, at: 0)
        
        
        
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        print(textFieldEmail.text ?? "")
    }
    
    
    
    @IBAction func facebookLoginPressed(_ sender: UIButton) {
        // Implementar la lógica para iniciar sesión con Facebook
        // Por ejemplo, puedes usar SDKs de Facebook para autenticación
    }
    
    @IBAction func googleLoginPressed(_ sender: UIButton) {
        // Implementar la lógica para iniciar sesión con Google
        // Por ejemplo, puedes usar SDKs de Google para autenticación
    }
}



    
    
  
