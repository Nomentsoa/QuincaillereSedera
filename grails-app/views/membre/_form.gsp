<div class="form-group">
    <label><g:message code="first.name"/>*</label>
    <g:textField name="nom" class="form-control" value="${member?.nom}" placeholder="Votre Nom de famille"/>
    <UIHelper:renderErrorMessage fieldName="nom" model="${member}" errorMessage="Le nom de famille est obligatoire"/>
</div>

<div class="form-group">
    <label><g:message code="last.name"/> </label>
    <g:textField name="prenom" class="form-control" value="${member?.prenom}" placeholder="Votre prénom(s)"/>
    <UIHelper:renderErrorMessage fieldName="nom" model="${member}" errorMessage="Le prénom est obligatoire"/>
</div>

<div class="form-group">
    <label><g:message code="username.name"/> </label>
    <g:textField name="username" class="form-control" value="${member?.username}" placeholder="Nom d'utilisateur"/>
    <UIHelper:renderErrorMessage fieldName="nom" model="${member}" errorMessage="Le nom d'utilisateur est obligatoire"/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/>*</label>
        <g:passwordField name="motDePasse" class="form-control" value="${member?.motDePasse}" placeholder="Votre mot de passe"/>
        <UIHelper:renderErrorMessage fieldName="nom" model="${member}" errorMessage="Le mot de passe est obligatoire"/>
    </div>
</g:if>