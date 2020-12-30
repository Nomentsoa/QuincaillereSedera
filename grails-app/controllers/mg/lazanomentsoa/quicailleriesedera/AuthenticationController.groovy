package mg.lazanomentsoa.quicailleriesedera

import mg.lazanomentsoa.quincailleriesedera.AuthenticationService
import mg.lazanomentsoa.quincailleriesedera.MembreService

class AuthenticationController {

    AuthenticationService authenticationService;
    MembreService membreService
    def login(){
        if(authenticationService.isAuthenticated()){
            redirect(controller: "produit", action: "index")
        }
    }

    def doLogin(){
        if(authenticationService.doLogin(params.username, params.motDePasse)){
            redirect(controller: "produit", action: "index")
        }else{
            redirect(controller: "authentication", action: "login")
        }
    }

    def logout(){
        session.invalidate()
        redirect(controller: "authentication", action: "login")
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
