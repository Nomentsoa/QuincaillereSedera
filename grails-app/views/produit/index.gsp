<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 25/12/2020
  Time: 18:27
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main">

<div class="card">
    <div class="card-header">
        <g:message code="tableau.produit"/>
        <span class="float-right">
            <div class="btn-group">
                <g:form controller="produit" action="index" method="GET">
                    <div class="input-group" id="search-area">
                        <g:select name="colName" class="form-control" from="[label: 'Nom du produit', code: 'Code du produit']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit"><g:message code="recherche.produit"/> </button>
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
                    <th class="action-row"><g:message code="action"/> </th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${produitList}" var="produit">
                    <tr>
                        <td>${produit?.label}</td>
                        <td>${produit?.code}</td>
                        <td class="text-center">${produit?.quantite}</td>
                        <td>
                            <div class="btn-group">
                                <g:link controller="produit" action="details" class="btn btn-secondary" id="${produit.id}"><i class="fas fa-eye"></i></g:link>
                                <g:link controller="produit" action="edit" class="btn btn-secondary" id="${produit.id}"><i class="fas fa-edit"></i></g:link>
                                <g:link controller="produit" action="delete" class="btn btn-danger delete-confirmation" id="${produit.id}"><i class="fas fa-trash"></i></g:link>
                            </div>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>