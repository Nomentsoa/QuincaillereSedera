<%--
  Created by IntelliJ IDEA.
  User: laza nomentsoa
  Date: 30/12/2020
  Time: 17:57
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="public">

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 mx-auto">
                    <h1 class="text-center login-title">Quincainllerie Sedera Login</h1>
                    <div class="account-wall">
                        <g:img dir="images" file="ic_logo_sedera.png" class="profile-img" />
                        <g:form controller="authentication" action="doLogin" class="form-signin">
                            <g:textField name="username" class="form-control" placeholder="Nom d'utilisateur" required="required"/>
                            <g:passwordField name="motDePasse" class="form-control" placeholder="Mot de passe" required="required"/>
                            <g:submitButton name="login" class="btn btn-lg btn-primary btn-block" value="Login"/>
                            <g:link controller="authentication" action="registration" class="btn btn-lg btn-primary btn-block">Nouveau membre</g:link>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>