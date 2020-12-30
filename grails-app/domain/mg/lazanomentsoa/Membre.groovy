package mg.lazanomentsoa

import mg.lazanomentsoa.quincailleriesedera.GlobalConfig

class Membre {

    Integer id;
    String nom;
    String prenom;
    String username;
    String motDePasse;
    String typeMembre = GlobalConfig.USER_TYPE.MEMBER_NORMAL
    Boolean isActive = true

    Date dateCreated

    static constraints = {
        motDePasse(blank: false)
        nom(nullable: false, blank: false)
        prenom(nullable: false, blank: false)
        username(nullable: false, blank: false, unique: true)
    }

    def beforeInsert(){
        this.motDePasse = this.motDePasse.encodeAsMD5()
    }

    def beforeUpdate(){
        this.motDePasse = this.motDePasse.encodeAsMD5()
    }
}
