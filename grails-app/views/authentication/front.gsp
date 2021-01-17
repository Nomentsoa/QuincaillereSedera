<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 25/12/2020
  Time: 18:27
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="public">
<nav class="navbar navbar-light fixed-top" style="background-color: #e3f2fd; margin-bottom: 1em" >
    <a class="navbar-brand" href="#">

        <g:img dir="images" file="ic_logo_sedera.png"  width="30" height="30" class="d-inline-block align-top"/>
        <a class="navbar-brand">Quincaillerie Sedera</a>
        <form class="form-inline">
            <g:form controller="authentication" action="front" method="GET">
                <div class="input-group" id="search-area">
                    <g:select name="colName" class="form-control" from="[label: 'Nom du produit', code: 'Code du produit']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                    <g:textField name="colValue" class="form-control" value="${params?.colValue}" style="margin-left: 2px"/>
                    <span class="input-group-btn">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-left: 2px"><i class="fa fa-search" style="margin-right: 15px"></i><g:message code="recherche.produit"/> </button>
                        <g:link controller="authentication" action="login" class="btn btn-primary" type="submit"><i class="fa fa-sign-in-alt" style="margin-right: 15px"></i>Se connecter</g:link>
                    </span>
                </div>
            </g:form>
        </form>
    </a>
</nav>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <g:img dir="images" file="image1.png" class="d-block w-100" />
        </div>
        <div class="carousel-item">
            <g:img dir="images" file="image2.png" class="d-block w-100" />
        </div>
        <div class="carousel-item">
            <g:img dir="images" file="image3.png" class="d-block w-100" />
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<div class="row">
<g:each in="${produitList}" var="produit">
    <div class="col-sm-3 " style="margin-top: 1em; " >
        <g:if test="${produit.image}">
            <img src="${resource(dir: "images", file: "${produit.id}-${produit.image}")}" class="card-img-top" style="height: 210px"/>
        </g:if>
        <g:else>
            <div style="background: #5a6268; height: 210px">laza nomentsoa pas de photo</div>
        </g:else>

        <div class="card shadow p-3 mb-5 bg-white rounded">
            <div class="card-body">
                <h5 class="card-title">${produit?.label}</h5>
                <p class="card-text">Prix: ${produit?.prix} Ar <br>Quantité(s) restante: ${produit?.quantite}</p>
                <p>${produit?.description}</p>

            </div>
        </div>
    </div>
</g:each>
</div>
<div class="paginate"  style="background: #faf8f6">
    <g:paginate total="${total ?: 0}" />
</div>
