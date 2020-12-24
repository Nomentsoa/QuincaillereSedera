package mg.lazanomentsoa

class Produit {
    Integer id
    String label
    String description
    String code

    Date dateAchat


    static constraints = {
        id(nullable: false, unique: true, blank: false)
        label(nullable: false, blank: false)
        description(nullable: true)
        code(nullable: false, blank: false)
    }
}
