package mg.lazanomentsoa.quicailleriesedera

import mg.lazanomentsoa.quincailleriesedera.ProduitService

class ProduitController {
    ProduitService produitService
    def index() {
        println("laza kely")
        def reponse = produitService.list(params)
        [produitList: reponse.list, total: reponse.count]
    }

    def create(){
        [produit: flash.redirectParams]
    }

    def save(){
        println("tafiditra ato ilay izy")
        def response = produitService.save(params)

        if(!response.isSuccess){
            println("tafiditra erreur => kel"+response)
            flash.redirectParams = response.model
            redirect(controller: "produit", action: "create")
        }else{
            println("tafiditra enregistrement")
            redirect(controller: "produit", action: "index")
        }
    }

    def details(Integer id){
        def reponse = produitService.getById(id)
        if(!reponse){
            redirect(controller: "produit", action: "index")
        }else{
            [produit: reponse]
        }
    }

    def edit(Integer id){
        if(flash.redirectParams){
            [produit: flash.redirectParams]
        }else{
            def reponse = produitService.getById(id)
            if(!reponse){
                redirect(controller: "produit", action: "index")
            }else{
                [produit: reponse]
            }
        }
    }

    def update(){
        println("tafiditra ato @ modification izy")
        def reponse = produitService.getById(params.id)
        if(!reponse){
            println("tafiditra ato @ mety modification izy")
            redirect(controller: "produit", action: "index")
        }else{
            reponse = produitService.update(reponse, params)
            println("tafiditra ato @ erreur modification izy => "+reponse)
            if(!reponse.isSuccess){
                flash.redirectParams = reponse.model
                redirect(controller: "produit", action: "edit")
            }else{
                redirect(controller: "produit", action: "index")
            }
        }
    }

    def delete(Integer id){
        def reponse = produitService.getById(id)
        if(!reponse){
            redirect(controller: "produit", action: "index")
        }else{
            reponse = produitService.delete(reponse)
            redirect(controller: "produit", action: "index")
        }
    }
}
