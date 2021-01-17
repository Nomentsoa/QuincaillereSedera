<div class="form-group">
    <label><g:message code="nom.produit"/>*</label>
    <g:textField name="label" class="form-control" value="${produit?.label}" placeholder="Nom du produit"/>
    <UIHelper:renderErrorMessage fieldName="label" model="${produit}" errorMessage="Le champs Nom produit n'est pas rempli convenablement"/>
</div>

<div class="form-group">
    <label><g:message code="code.produit"/>*</label>
    <g:textField name="code" class="form-control" value="${produit?.code}" placeholder="Code du produit"/>
    <UIHelper:renderErrorMessage fieldName="code" model="${produit}" errorMessage="Le champs  code produit n'est pas rempli convenablement"/>
</div>

<div class="form-group">
    <label><g:message code="description.produit"/></label>
    <g:textField name="description" class="form-control" value="${produit?.description}" placeholder="Déscription du produit"/>
</div>


<label><g:message code="prix.produit"/>*</label>
<div class="input-group">

    <g:textField name="prix" class="form-control" value="${produit?.prix}" placeholder="Prix unitaire du produit en Ariary"/>
    <UIHelper:renderErrorMessage fieldName="prix" model="${produit}" errorMessage="Le champs  prix du produit n'est pas rempli convenablement"/>
    <div class="input-group-prepend">
        <span class="input-group-text" id="validationTooltipUsernamePrepend">Ariary</span>
    </div>
</div>


<div class="form-group">
    <label><g:message code="quantite.produit"/>*</label>
    <g:textField name="quantite" class="form-control" value="${produit?.quantite}" placeholder="Quantité achetée"/>
    <UIHelper:renderErrorMessage fieldName="quantite" model="${produit}" errorMessage="Le champs  quantité du produit n'est pas rempli convenablement"/>
</div>

<div class="form-group">
    <label>Image du produit</label>
    <g:field type="file" name="produitImage" class="form-control" placeholder="Selection une image"/>
</div>