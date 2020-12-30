<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Quincaillerie Sedera"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="ic_logo_sedera.png" type="image/x-ico"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="login.css"/>
    <asset:javascript src="application.js"/>

    <script type="text/javascript">
        <g:if test="${flash?.message && flash?.message?.info}">
            jQuery(document).ready(function (){
               QUINCAILLERIE.messageBox.showMessage(Boolean(${flash.message?.success}), "${flash.message?.info}");
            });
        </g:if>
    </script>
    <g:layoutHead/>
</head>

<body>



<div class="container-fluid">
    <div class="row">
        <main role="main" class="col-sm-12 ml-sm-auto col-md-12 pt-3">
            <g:layoutBody/>
        </main>
    </div>

</div>

</body>
</html>
