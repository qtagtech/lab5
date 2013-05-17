package org.nest5

import grails.converters.JSON
import org.apache.commons.lang.RandomStringUtils
import org.jets3t.service.S3Service
import org.jets3t.service.acl.AccessControlList
import org.jets3t.service.acl.GroupGrantee
import org.jets3t.service.acl.Permission
import org.jets3t.service.impl.rest.httpclient.RestS3Service
import org.jets3t.service.model.S3Bucket
import org.jets3t.service.model.S3Object
import org.jets3t.service.security.AWSCredentials
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

class MyuploadController {





        static final int BUFF_SIZE = 100000;
        static final byte[] buffer = new byte[BUFF_SIZE];
//        def s3AssetService


    def upload(){
        if(request){
            MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
            CommonsMultipartFile uploadedFile = (CommonsMultipartFile)mpr.getFile("fileselect[]");
            if(!uploadedFile.empty){
                println "helloworld"
                println "Class: ${uploadedFile.class}"
                println "Name: ${uploadedFile.name}"
                println "OriginalFileName: ${uploadedFile.originalFilename}"
                println "Size: ${uploadedFile.size}"
                println "ContentType: ${uploadedFile.contentType}"



                String awsAccessKey = "AKIAIIQ5AOSHXVIRUSBA"
                String awsSecretKey = "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"

                AWSCredentials awsCredentials = new AWSCredentials(awsAccessKey, awsSecretKey)

                S3Service s3Service = new RestS3Service(awsCredentials)


                S3Bucket[] myBuckets = s3Service.listAllBuckets()
                S3Bucket planesBucket = s3Service.createBucket("org.nest5.articles");
                // Retrieve the bucket's ACL and modify it to grant public access,
                // ie READ access to the ALL_USERS group.
                AccessControlList bucketAcl = s3Service.getBucketAcl(planesBucket);
                bucketAcl.grantPermission(GroupGrantee.ALL_USERS, Permission.PERMISSION_READ);
                String charset = (('A'..'Z') + ('0'..'9')).join()
                Integer length = 5
                String randomString = RandomStringUtils.random(length, charset.toCharArray())
                File tmpFile = new File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") +
                        randomString + '_' + uploadedFile.getOriginalFilename());
                uploadedFile.transferTo(tmpFile);
                /*dot = uploadedFile.name.lastIndexOf(".")
                namePart    = (dot) ? uploadedFile.name[0..dot-1] : uploadedFile.name
                extension   = (dot) ? uploadedFile.name[dot+1..uploadedFile.name.length()-1] : ""*/



                S3Object archive = new S3Object(tmpFile)



                def content = uploadedFile.contentType as String
                archive.setContentType(content)
                archive.setAcl(bucketAcl)
                s3Service.putObject(planesBucket,archive)
                //subio el archivo y continua la ejecucion entonces guardo el Archivo en DB


                def archivo = new Archivo(
                        name: archive.key,
                        tipo: archive.contentType,
                        isMain: false,
                        description: '',
                        ruta: 'http://s3.amazonaws.com/'+planesBucket.getName()+'/'+archive.key

                )
                if(!archivo.save()){
                    response.setStatus(200)
                    def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                    println archivo.errors.allErrors
                }
                else
                {
                    println archivo
                    response.setStatus(200)
                    response.setContentType('application/json')
                    def result = [success: true, uploadName: archivo.name, fileId: archivo.id, fileSize: uploadedFile.size, ruta: archivo.ruta]
                    render result as JSON
                }


            }
            else{
                response.setStatus(500)
            }
        }
         return
    }

    /*def uploadUser(){
        if(request){
            MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
            CommonsMultipartFile uploadedFile = (CommonsMultipartFile)mpr.getFile("upfile");
            if(!uploadedFile.empty){
                println "helloworld"
                println "Class: ${uploadedFile.class}"
                println "Name: ${uploadedFile.name}"
                println "OriginalFileName: ${uploadedFile.originalFilename}"
                println "Size: ${uploadedFile.size}"
                println "ContentType: ${uploadedFile.contentType}"



                String awsAccessKey = "AKIAIIQ5AOSHXVIRUSBA"
                String awsSecretKey = "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"

                AWSCredentials awsCredentials = new AWSCredentials(awsAccessKey, awsSecretKey)

                S3Service s3Service = new RestS3Service(awsCredentials)


                S3Bucket[] myBuckets = s3Service.listAllBuckets()
                S3Bucket planesBucket = s3Service.createBucket("com.puertadembarque.com.lunademiel.usuarios");
                // Retrieve the bucket's ACL and modify it to grant public access,
                // ie READ access to the ALL_USERS group.
                AccessControlList bucketAcl = s3Service.getBucketAcl(planesBucket);
                bucketAcl.grantPermission(GroupGrantee.ALL_USERS, Permission.PERMISSION_READ);
                String charset = (('A'..'Z') + ('0'..'9')).join()
                Integer length = 5
                String randomString = RandomStringUtils.random(length, charset.toCharArray())
                File tmpFile = new File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") +
                        randomString + '_' + uploadedFile.getOriginalFilename());
                uploadedFile.transferTo(tmpFile);
                *//*dot = uploadedFile.name.lastIndexOf(".")
                namePart    = (dot) ? uploadedFile.name[0..dot-1] : uploadedFile.name
                extension   = (dot) ? uploadedFile.name[dot+1..uploadedFile.name.length()-1] : ""*//*



                S3Object archive = new S3Object(tmpFile)



                def content = uploadedFile.contentType as String
                archive.setContentType(content)
                archive.setAcl(bucketAcl)
                s3Service.putObject(planesBucket,archive)
                //subio el archivo y continua la ejecucion entonces guardo el Archivo en DB


                def archivo = new Picture(
                        name: archive.key,
                        tipo: archive.contentType,
                        isMain: false,
                        descripcion: '',
                        ruta: 'http://s3.amazonaws.com/'+planesBucket.getName()+'/'+archive.key

                )
                if(!archivo.save()){
                    response.setStatus(200)
                    def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                    println archivo.errors.allErrors
                }
                else
                {
                    println archivo
                    response.setStatus(200)
                    response.setContentType('application/json')
                    def result = [success: true, uploadName: archivo.name, fileId: archivo.id, fileSize: uploadedFile.size]
                    render result as JSON
                }


            }
            else{
                response.setStatus(500)
            }
        }
        return
    }*/

   /*def uploadCouplePosition(){
       if(request){
           println params
           MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
           CommonsMultipartFile uploadedFile = (CommonsMultipartFile)mpr.getFile("fileselect[]");
           if(!uploadedFile.empty){
               println "helloworld"
               println "Class: ${uploadedFile.class}"
               println "Name: ${uploadedFile.name}"
               println "OriginalFileName: ${uploadedFile.originalFilename}"
               println "Size: ${uploadedFile.size}"
               println "ContentType: ${uploadedFile.contentType}"



               String awsAccessKey = "AKIAIIQ5AOSHXVIRUSBA"
               String awsSecretKey = "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"

               AWSCredentials awsCredentials = new AWSCredentials(awsAccessKey, awsSecretKey)

               S3Service s3Service = new RestS3Service(awsCredentials)


               S3Bucket[] myBuckets = s3Service.listAllBuckets()
               S3Bucket planesBucket = s3Service.createBucket("com.puertadembarque.com.lunademiel.usuarios");
               // Retrieve the bucket's ACL and modify it to grant public access,
               // ie READ access to the ALL_USERS group.
               AccessControlList bucketAcl = s3Service.getBucketAcl(planesBucket);
               bucketAcl.grantPermission(GroupGrantee.ALL_USERS, Permission.PERMISSION_READ);
               String charset = (('A'..'Z') + ('0'..'9')).join()
               Integer length = 5
               String randomString = RandomStringUtils.random(length, charset.toCharArray())
               File tmpFile = new File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") +
                       randomString + '_' + uploadedFile.getOriginalFilename());
               uploadedFile.transferTo(tmpFile);
               *//*dot = uploadedFile.name.lastIndexOf(".")
               namePart    = (dot) ? uploadedFile.name[0..dot-1] : uploadedFile.name
               extension   = (dot) ? uploadedFile.name[dot+1..uploadedFile.name.length()-1] : ""*//*



               S3Object archive = new S3Object(tmpFile)



               def content = uploadedFile.contentType as String
               archive.setContentType(content)
               archive.setAcl(bucketAcl)
               s3Service.putObject(planesBucket,archive)
               //subio el archivo y continua la ejecucion entonces guardo el Archivo en DB


               def archivo = new Picture(
                       name: archive.key,
                       tipo: archive.contentType,
                       isMain: false,
                       descripcion: '',
                       ruta: 'http://s3.amazonaws.com/'+planesBucket.getName()+'/'+archive.key

               )
               if(!archivo.save()){
                   response.setStatus(200)
                   def result = [success: false, uploadName: '', fileId: '', fileSize: '',ruta: '',position: '']
                   println archivo.errors.allErrors
               }
               else
               {
                   def pareja = Pareja.get(params.pareja as Long)
                   if(!pareja)
                   {
                       response.setStatus(200)
                       def result = [success: false, uploadName: '', fileId: '', fileSize: '', ruta: '',position: '']
                       render result as JSON
                   }
                   else{
                       def currentInPosition = MediaPareja.findAllByParejaAndPosition(pareja,params.position)
                       if(currentInPosition)
                       {
                           currentInPosition.each {
                               it.position = "other"
                               it.save(flush: true)
                           }

                       }
                       def media = new MediaPareja(
                              pareja: pareja,
                              file: archivo,
                              isMain: false,
                               position: params.position
                       )
                       if(!media.save(flush: true)){
                           response.setStatus(200)
                           def result = [success: false, uploadName: '', fileId: '', fileSize: '', ruta: '',position: '']
                           render result as JSON
                           println media.errors.allErrors
                       }
                       else{
                           println archivo
                           response.setStatus(200)
                           response.setContentType('application/json')
                           def result = [success: true, uploadName: archivo.name, fileId: archivo.id, fileSize: uploadedFile.size,ruta: archivo.ruta,position: params.position]
                           render result as JSON
                       }

                   }

               }


           }
           else{
               response.setStatus(500)
           }
       }
       return


    }*/

    /*def download(){
        def fileName = params.archivo as String

        String awsAccessKey = "AKIAIIQ5AOSHXVIRUSBA"
        String awsSecretKey = "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"

        AWSCredentials awsCredentials = new AWSCredentials(awsAccessKey, awsSecretKey)

        S3Service s3Service = new RestS3Service(awsCredentials)
        S3Bucket planesBucket = s3Service.getBucket("com.puertadembarque.com.lunademiel.planes")
        S3Object file = s3Service.getObject(planesBucket, fileName)
       // println("S3Object, complete: " + file)
        response.setStatus(200)



        InputStream inStream = null
        OutputStream outStream = null


        try {
            inStream = file.getDataInputStream()
            outStream = response.outputStream

            while (true) {
                synchronized (buffer) {
                    int amountRead = inStream.read(buffer);
                    if (amountRead == -1) {
                        break
                    }
                    outStream.write(buffer, 0, amountRead)
                }
            }
            outStream.flush()


        } catch (Exception e) {
            // whoops, looks like something went wrong
            response.setStatus(500)


        } finally {
            if (inStream != null) inStream.close()
            if (outStream != null) outStream.close()
        }



    return

    }

    def downloadpareja(){
        def fileName = params.archivo as String

        String awsAccessKey = "AKIAIIQ5AOSHXVIRUSBA"
        String awsSecretKey = "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"

        AWSCredentials awsCredentials = new AWSCredentials(awsAccessKey, awsSecretKey)

        S3Service s3Service = new RestS3Service(awsCredentials)
        S3Bucket planesBucket = s3Service.getBucket("com.puertadembarque.com.lunademiel.usuarios")
        S3Object file = s3Service.getObject(planesBucket, fileName)
        // println("S3Object, complete: " + file)
        response.setStatus(200)



        InputStream inStream = null
        OutputStream outStream = null


        try {
            inStream = file.getDataInputStream()
            outStream = response.outputStream

            while (true) {
                synchronized (buffer) {
                    int amountRead = inStream.read(buffer);
                    if (amountRead == -1) {
                        break
                    }
                    outStream.write(buffer, 0, amountRead)
                }
            }
            outStream.flush()


        } catch (Exception e) {
            // whoops, looks like something went wrong
            response.setStatus(500)


        } finally {
            if (inStream != null) inStream.close()
            if (outStream != null) outStream.close()
        }



        return

    }

    def deletePlan(){
       def plan = Plan.get(params.plan as Long)
       def file = Archivo.get(params.file as Long)
        def result
        if(!plan || !file)
        {
            result = [status: 0, message: 'no existe el plan o el archivo especificado', media: 0, file: 0, plan: 0]
            render result as JSON
            return
        }
        def media = Media.findByPlanAndFile(plan,file)
        if(!media)
        {
            result = [status: 0, message: 'no existe media con ese plan y ese archivo', media: 0, file: 0, plan: 0]
            render result as JSON
            return
        }
        plan.removeFromMedia(media)
        file.removeFromMedia(media)
        media.delete(flush:true)

        result = [status: 1, message: 'Borrado con éxito', media: media.id, file: file.id, plan: plan.id]
        render result as JSON
        return
    }*/

    def setMain(){
        def post = Post.get(params.plan as Long)
        def archivo = Archivo.get(params.file as Long)

        def result
        if(!post || !archivo)
        {
          result= [status: 0, message: "No existe post o archivo con los id especificados"]
            render result as JSON
            return
        }
        def media = Media.findByPostAndFile(post,archivo)
        if(!media)
        {
            result= [status: 0, message: "No existe Media con ese arhivo y ese plan especificados"]
            render result as JSON
            return
        }
        def allMedia = post.media

        allMedia.each {
            it.isMain = false
            it.save(failOnError: false)

        }
        media.isMain = true
        if(!media.save(failOnError: true))
        {
            result= [status: 0, message: "No se puedo guardar como archivo principal"]
            render result as JSON
            return
        }
        result= [status: 1, message: "Imagen puesta como principal con exito"]
        render result as JSON
        return
    }





}
