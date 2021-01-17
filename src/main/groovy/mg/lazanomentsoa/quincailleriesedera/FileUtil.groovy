package mg.lazanomentsoa.quincailleriesedera

import grails.util.Holders
import org.springframework.web.multipart.MultipartFile

class FileUtil {
    public static String getRootPath(){
        return Holders.servletContext?.getRealPath("")
    }

    public static File makeDirectory(String path){
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs()
        }
        return file
    }

    public static String uploadProduitImage(Integer produitId, MultipartFile multipartFile){
        if(produitId && multipartFile){
            println(getRootPath())
            String produitImagePath = "G:\\programmations\\ITU\\MBDS\\mr naina\\grails\\projets\\QuincaillereSedera\\grails-app\\assets\\images/"
            makeDirectory((produitImagePath))
            multipartFile.transferTo(new File(produitImagePath, produitId + "-" + multipartFile.originalFilename))
            return multipartFile.originalFilename
        }
        return ""
    }
}
