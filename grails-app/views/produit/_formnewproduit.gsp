<div class="form-group">
    <label><g:message code="nom.produit"/>*</label>
    <g:textField name="label" class="form-control" value="${produit?.label}" placeholder="Nom du produit"/>
</div>

<div class="form-group">
    <label><g:message code="code.produit"/>*</label>
    <g:textField name="code" class="form-control" value="${produit?.code}" placeholder="Code du produit"/>
</div>

<div class="form-group">
    <label><g:message code="description.produit"/></label>
    <g:textField name="description" class="form-control" value="${produit?.description}" placeholder="Déscription du produit"/>
</div>

<div class="form-group">
    <label><g:message code="prix.produit"/>*</label>
    <g:textField name="prix" class="form-control" value="${produit?.prix}" placeholder="Prix unitaire du produit"/>
</div>

<div class="form-group">
    <label><g:message code="quantite.produit"/>*</label>
    <g:textField name="quantite" class="form-control" value="${produit?.quantite}" placeholder="Quantité achetée"/>
</div>