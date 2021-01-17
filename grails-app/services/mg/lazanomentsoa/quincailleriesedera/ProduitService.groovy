package mg.lazanomentsoa.quincailleriesedera

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import mg.lazanomentsoa.Produit

import javax.servlet.http.HttpServletRequest


@Transactional
class ProduitService {

    def save(GrailsParameterMap params, HttpServletRequest request){
        Produit product = new Produit(params)
        def response = AppUtil.saveResponse(false, product)
        if(product.validate()){
            product.save(flush: true, failOnError: true)
            if(!product.hasErrors()){
                response.isSuccess = true
                uploadImage(product, request)
            }
        }
        return response
    }

    def update(Produit produit, GrailsParameterMap params, HttpServletRequest request){
        produit.properties = params
        def reponse = AppUtil.saveResponse(false, produit)

        if(produit.validate()){
            produit.save(flush: true)
            if(!produit.hasErrors()){
                reponse.isSuccess = true
                uploadImage(produit, request)
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

    def uploadImage(Produit produit, HttpServletRequest request){

        if(request.getFile("produitImage") && !request.getFile("produitImage").filename.equals("")){
            String image = FileUtil.uploadProduitImage(produit.id, request.getFile("produitImage"))
            if(!image.equals("")){
                produit.image = image
                produit.save(flush:true)
            }
        }
    }
}
