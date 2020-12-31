<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 25/12/2020
  Time: 18:27
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="public">
<div class="card">
    <div class="card-header">
        <g:message code="accueil.produit"/>
        <span class="float-right">
            <div class="btn-group">
                <g:form controller="authentication" action="front" method="GET">
                    <div class="input-group" id="search-area">
                        <g:select name="colName" class="form-control" from="[label: 'Nom du produit', code: 'Code du produit']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit"><g:message code="recherche.produit"/> </button>
                            <g:link controller="authentication" action="login" class="btn btn-primary" type="submit">Se connecter</g:link>
                        </span>
                    </div>
                </g:form>
            </div>
        </span>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-light">
            <tr>
                <g:sortableColumn property="label" title="${g.message(code: "nom.produit")}" class="text-center"/>
                <g:sortableColumn property="code" title="${g.message(code: "code.produit")}" class="text-center"/>
                <g:sortableColumn property="quantite" title="${g.message(code: "quantite.produit")}" class="text-center"/>
                <g:sortableColumn property="prix" title="${g.message(code: "prix.produit")}" class="text-center"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${produitList}" var="produit">
                <tr>
                    <td>${produit?.label}</td>
                    <td>${produit?.code}</td>
                    <td class="text-center">${produit?.quantite}</td>
                    <td class="text-center">${produit?.prix} Ar</td>
                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>
