package mg.lazanomentsoa.quincailleriesedera

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import mg.lazanomentsoa.Produit

@Transactional
class ProduitService {

    def save(GrailsParameterMap params){
        Produit product = new Produit(params)
        def response = AppUtil.saveResponse(false, product)
        if(product.validate()){
            product.save(flush: true, failOnError: true)
            if(!product.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Produit produit, GrailsParameterMap params){
        produit.properties = params
        def reponse = AppUtil.saveResponse(false, produit)

        if(produit.validate()){
            produit.save(flush: true)
            if(!produit.hasErrors()){
                reponse.isSuccess = true
            }
        }
        return reponse
    }

    def getById(Serializable id){
        return Produit.get(id)
    }

    def list(GrailsParameterMap params){
        params.max = params.max ?: GlobalConfig.itemParPage()
        List<Produit> produitList = Produit.createCriteria().list(params){
            if(params?.colName && params?.colValue){
                like(params.colName, "%"+params.colValue + "%")
            }
            if(!params.sort){
                order("id","desc")
            }
        }

        return [list: produitList, count: Produit.count()]
    }

    def delete(Produit produit){
        try{
            produit.delete(flush: true)
        }catch(Exception e){
            return false
        }
        return true
    }
}
