<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 30/12/2020
  Time: 20:20
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="public"/>
<div class="card">
    <div class="card-header">
        Enregistrement nouveau Membre
    </div>
    <div class="card-body">
        <g:form controller="authentication" action="doRegistration">
            <g:render template="/membre/form"/>
            <g:submitButton name="registration" value="Enregistrer" class="btn btn-primary"/>
            <g:link controller="authentication" action="login" class="btn btn-primary">Se Connecter</g:link>
        </g:form>
    </div>
</div>