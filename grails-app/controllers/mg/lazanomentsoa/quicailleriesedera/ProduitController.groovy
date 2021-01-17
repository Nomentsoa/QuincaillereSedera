package mg.lazanomentsoa.quicailleriesedera

import mg.lazanomentsoa.quincailleriesedera.AppUtil
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
        def response = produitService.save(params, request)

        if(!response.isSuccess){
            println("tafiditra erreur => kel"+response)
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage("Erreur de sauvegarde du produit.", false)
            redirect(controller: "produit", action: "create")
        }else{
            println("tafiditra enregistrement")
            flash.message = AppUtil.infoMessage("Le produit a été créé.")
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
                flash.message = AppUtil.infoMessage("Le produit est invalide.", false)
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
            flash.message = AppUtil.infoMessage("Le produit est invalide.", false)
            redirect(controller: "produit", action: "index")
        }else{
            reponse = produitService.update(reponse, params)
            println("tafiditra ato @ erreur modification izy => "+reponse)
            if(!reponse.isSuccess){
                flash.redirectParams = reponse.model
                flash.message = AppUtil.infoMessage("Erreur sur la modification.", false)
                redirect(controller: "produit", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage("Produit modifié.")
                redirect(controller: "produit", action: "index")
            }
        }
    }

    def delete(Integer id){
        def reponse = produitService.getById(id)
        if(!reponse){
            flash.message = AppUtil.infoMessage("Erreur sur la modification.", false)
            redirect(controller: "produit", action: "index")
        }else{
            reponse = produitService.delete(reponse)
            if(!reponse){
                flash.message = AppUtil.infoMessage("Le produit ne peut pas être supprimer", false)
            }else{
                flash.message = AppUtil.infoMessage("Le produit est supprimé")
            }
            redirect(controller: "produit", action: "index")
        }
    }
}
