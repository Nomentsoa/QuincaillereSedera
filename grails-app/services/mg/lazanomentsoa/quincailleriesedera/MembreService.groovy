package mg.lazanomentsoa.quincailleriesedera

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import mg.lazanomentsoa.Membre

@Transactional
class MembreService {
    def save(GrailsParameterMap params){
        Membre membre = new Membre(params)
        def reponse = AppUtil.saveResponse(false, membre)
        if(membre.validate()){
            membre.save(flush: true)
            if(!membre.hasErrors()){
                reponse.isSuccess = true
            }
        }

        return reponse
    }

    def update(Membre membre, GrailsParameterMap params){
        membre.properties = params
        def reponse = AppUtil.saveResponse(false, membre)
        if(membre.validate()){
            membre.save(flush: true)
            if(!membre.hasErrors()){
                reponse.isSuccess = true
            }
        }
        return reponse
    }

    def getById(Serializable id){
        return Membre.get(id)
    }
}
