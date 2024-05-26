import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var userLogout: UIImageView!
    var rectangle: UIView!
    var originalWidth: CGFloat = 50.0
    var originalHeight: CGFloat = 50.0
    var enlargedWidth: CGFloat = 200.0
    var label: UILabel!
    
    @IBOutlet weak var cardTable: UITableView!
    
    let pictures: [UIImage] = [UIImage(named: "alexandra.png")!, UIImage(named: "corte.png")!, UIImage(named: "justice.png")!]
    let titles: [String] = ["Justicia Medio Ambiental", "Todo pasa por justicia ambiental", "Opinion de la Corte internacional"]
    let descriptions: [String] = [
        "La justicia medioambiental es un concepto que se centra en la distribución equitativa de los beneficios y cargas ambientales entre todas las personas, independientemente de su raza, género, clase socioeconómica o ubicación geográfica. Este enfoque busca asegurar que ninguna comunidad soporte una carga desproporcionada de problemas ambientales y que todos tengan igual acceso a un entorno saludable.",
        "La justicia ambiental es un pilar fundamental para lograr un desarrollo sostenible y equitativo en nuestro planeta. Todo lo que hacemos, desde las políticas públicas hasta las acciones individuales, pasa por la justicia ambiental cuando consideramos su impacto en las comunidades y en el entorno natural. A continuación, exploramos cómo diferentes aspectos de nuestra vida cotidiana y de la sociedad están intrínsecamente ligados a este concepto.",
        "Importancia y Contribución Resolución Pacífica de Disputas: La CIJ contribuye a la resolución pacífica de disputas entre Estados, evitando conflictos armados y promoviendo la estabilidad internacional. Al proporcionar un foro imparcial y basado en el derecho para la resolución de conflictos, la CIJ desempeña un papel vital en el mantenimiento de la paz y la seguridad global."
    ]
    let date: [String] = ["28 de junio del 2024", "2 de marzo del 2023", "8 de septiembre del 2022"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
       
        
        // Configurar el fondo con gradiente
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
        
        // Crear una vista para contener el gradiente y agregarla al fondo de la vista principal
        let gradientView = UIView(frame: view.bounds)
        gradientView.layer.addSublayer(gradientLayer)
        view.insertSubview(gradientView, at: 0)
        cardTable.backgroundView = gradientView
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCellTableViewCell
        
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row], date: date[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar"{
            if let id = cardTable.indexPathForSelectedRow{
                let fila = titles[id.row]
                let pictures = pictures[id.row]
                let descriptions = descriptions[id.row]
                let dates = date[id.row]
                let destino = segue.destination as? NoticiasDetallesViewController
                destino?.datosLista = fila
                let destino2 = segue.destination as? NoticiasDetallesViewController
                destino2?.datosImg = pictures
                let destino3 = segue.destination as? NoticiasDetallesViewController
                destino3?.datosDesc = descriptions
                let destino4 = segue.destination as? NoticiasDetallesViewController
                destino4?.datosDate = dates
            }
        }
    }
    
}
