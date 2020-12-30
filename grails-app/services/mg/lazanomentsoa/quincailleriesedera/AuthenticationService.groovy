package mg.lazanomentsoa.quincailleriesedera

import mg.lazanomentsoa.Membre

class AuthenticationService {
    private static final String AUTHORIZED = "AUTHORIZED"

    def setMemberAuthorization(Membre membre){
        def authorization = [isLoggedIn: true, membre: membre]
        AppUtil.getAppSession()[AUTHORIZED] = authorization
    }

    def doLogin(String username, String password){
        password = password.encodeAsMD5()
        Membre membre = Membre.findByUsernameAndMotDePasse(username, password)
        if(membre){
            setMemberAuthorization(membre)
            return true
        }
        return false
    }

    boolean isAuthenticated(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        if(authorization && authorization.isLoggedIn){
            return true
        }
        return false
    }

    def getMembre(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        return authorization?.membre
    }

    def getNomMembre(){
        def membre = getMembre()
        return "${membre.nom} ${membre.prenom}"
    }
}
