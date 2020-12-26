<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 26/12/2020
  Time: 08:52
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main">

<div class="card">
  <div class="card-header">
    <g:message code="detail"/>
  </div>
  <div class="card-body">
    <g:if test="${produit}">
      <table class="table">
        <tr>
          <th class="text-right"> <g:message code="nom.produit"/></th><td class="text-left">${produit.label}</td>
        </tr>
        <tr>
          <th class="text-right"> <g:message code="code.produit"/></th><td class="text-left">${produit.code}</td>
        </tr>
        <tr>
          <th class="text-right"> <g:message code="description.produit"/></th><td class="text-left">${produit.description}</td>
        </tr>
        <tr>
          <th class="text-right"> <g:message code="prix.produit"/></th><td class="text-left">${produit.prix} Ariary</td>
        </tr><tr>
        <th class="text-right"> <g:message code="quantite.produit"/></th><td class="text-left">${produit.quantite}</td>
      </tr>
      </table>
    </g:if>
    <div class="form-action-panel">
      <g:link controller="produit" action="index" class="btn btn-primary"><g:message code="annuler"/> </g:link>
    </div>
  </div>
</div>
