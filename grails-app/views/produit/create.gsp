<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 25/12/2020
  Time: 21:37
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main">

<div class="card">
    <div class="card-header">
        <g:message code="ajouter.produit" />
    </div>

    <div class="card-body">
        <g:form controller="produit" action="save">
            <g:render template="formnewproduit"/>
            <div class="form-action-panel">
                <g:submitButton name="save" class="btn btn-primary" value="${g.message(code: "enregistrer")}"/>
                <g:link controller="produit" action="index" class="btn btn-primary"><g:message code="annuler"/> </g:link>
            </div>
        </g:form>
    </div>
</div>