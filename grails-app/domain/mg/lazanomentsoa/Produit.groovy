package mg.lazanomentsoa

class Produit {
    Integer id
    String label
    String description
    String code
    Integer quantite
    Integer prix
    String image

    Date dateCreated
    Date lastUpdated


    static constraints = {
        label(nullable: false)
        description(nullable: true)
        code(nullable: false)
        quantite(nullable: false)
        prix(nullable: false)
        image(nullable: true)
    }

}
