<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 26/12/2020
  Time: 09:03
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main">

<div class="card">
    <div class="card-header">
        <g:message code="mofication.produit"/>
    </div>
    <div class="card-body">
        <g:form controller="produit" action="update">
            <g:hiddenField name="id" value="${produit.id}"/>
            <g:render template="formnewproduit"/>
            <div class="form-action-panel">
                <g:submitButton name="update" class="btn btn-primary" value="${g.message(code: "modifier.produit")}"/>
                <g:link controller="produit" action="index" class="btn btn-primary"><g:message code="annuler"/> </g:link>
            </div>
        </g:form>
    </div>
</div>