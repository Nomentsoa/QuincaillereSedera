package mg.lazanomentsoa.quicailleriesedera

import mg.lazanomentsoa.quincailleriesedera.AuthenticationService
import mg.lazanomentsoa.quincailleriesedera.MembreService
import mg.lazanomentsoa.quincailleriesedera.ProduitService

class AuthenticationController {

    AuthenticationService authenticationService;
    MembreService membreService
    ProduitService produitService

    def front(){
        println("laza kely")
        def reponse = produitService.list(params)
        [produitList: reponse.list, total: reponse.count]
    }
    def login(){
        if(authenticationService.isAuthenticated()){
            redirect(controller: "produit", action: "index")
        }
    }

    def doLogin(){
        if(authenticationService.doLogin(params.username, params.motDePasse)){
            redirect(controller: "produit", action: "index")
        }else{
            redirect(controller: "authentication", action: "front")
        }
    }

    def logout(){
        session.invalidate()
        redirect(controller: "authentication", action: "front")
    }

    def registration(){
        [member: flash.redirectParams]
    }

    def doRegistration(){
        def reponse = membreService.save(params)
        if(reponse.isSuccess){
            authenticationService.setMemberAuthorization(reponse.model)
            redirect(controller: "produit", action: "index")
        }else {
            flash.redirectParams = reponse.model
            redirect(controller: "authentication", action: "registration")
        }
    }
}
