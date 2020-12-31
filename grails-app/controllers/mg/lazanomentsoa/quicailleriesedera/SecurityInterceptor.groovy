package mg.lazanomentsoa.quicailleriesedera

import mg.lazanomentsoa.quincailleriesedera.AuthenticationService


class SecurityInterceptor {
    AuthenticationService authenticationService
    SecurityInterceptor(){
        matchAll().excludes(controller: "authentication")
    }

    boolean before(){
        if(!authenticationService.isAuthenticated()){
            redirect(controller: "authentication", action: "front")
            return false
        }
        return true
    }
}
