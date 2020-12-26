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

    <g:layoutHead/>
</head>

<body>

<header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-change">
        <asset:image src="ic_logo_sedera.png" alt="Grails Logo"  width="50"/>
        <a class="navbar-brand" href="#"><h2>Quincaillerie Sedera</h2></a>
    </nav>
</header>

<div class="container-fluid">
    <div class="row">
        <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
            <ul class="list-group">
                <li class="list-group-item"> <g:link controller="produit" action="index">Liste des produits</g:link> </li>
                <li class="list-group-item"><g:link controller="produit" action="create">Ajouter un produit</g:link></li>
                <li class="list-group-item"><a href="#">Déconnexion</a></li>
            </ul>
        </nav>

        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
            <g:layoutBody/>
        </main>
    </div>

</div>

<asset:javascript src="application.js"/>

</body>
</html>
