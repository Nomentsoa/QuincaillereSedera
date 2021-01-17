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
      <g:if test="${produit.image}">
        <img src="${resource(dir: "images", file: "${produit.id}-${produit.image}")}" class="card-img-top" style="width: 190px; text-align: center"/>
      </g:if>
      <g:else>
        <div style="background: #5a6268; width: 190px; height: 190px">laza nomentsoa pas de photo</div>
      </g:else>

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
      <g:link controller="produit" action="index" class="btn btn-secondary"><i class="fa fa-list" style="margin-right: 10px"></i> Retour à la liste </g:link>
      <g:link controller="produit" action="edit" id="${produit.id}" class="btn btn-primary"><i class="fa fa-edit" style="margin-right: 10px"></i> <g:message code="modifier.produit"/> </g:link>
      <g:link controller="produit" action="delete" id="${produit.id}" class="btn btn-danger"><i class="fa fa-trash" style="margin-right: 10px"></i><g:message code="supprimer.produit"/> </g:link>
    </div>
  </div>
</div>
