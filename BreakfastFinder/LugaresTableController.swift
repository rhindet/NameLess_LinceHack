import UIKit

class LugaresTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!

    let pictures: [UIImage] = [UIImage(named: "alexandra.png")!, UIImage(named: "corte.png")!, UIImage(named: "justice.png")!, UIImage(named: "alexandra.png")!, UIImage(named: "corte.png")!, UIImage(named: "justice.png")!, UIImage(named: "alexandra.png")!, UIImage(named: "corte.png")!]
    let titles: [String] = ["Centro de reciclaje", "Centro de reciclaje TEC", "Recyclados Villareal S.A de C.V", "Recoleccion y Reciclados Mty", "Reciclajes Panteras", "Compra de material reciclable", "Reciclaje desmantelamiento de industrias monterrey", "Centro de Reciclados"]
    let descriptions: [String] = ["carton,aluminio,acero,etc", "PET,taparoscas ,carton etc", "plastico,vidrio,carton", "carton alumnio , vidrio", "Pilas , aluminio , bronce ", "papel ,carton,plastico", "pet, vidrio, alumnio", "solo metales"]

    override func viewDidLoad() {
        super.viewDidLoad()
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
        TableView.backgroundView = gradientView
        
        // Asignamos los delegados
        TableView.delegate = self
        TableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! CardCellTableViewCellReciclaje
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "enviar", sender: self)
        
 }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar"{
            if let id = TableView.indexPathForSelectedRow{
                let destino = segue.destination as? MapsViewController
            }
        }
    }
}
