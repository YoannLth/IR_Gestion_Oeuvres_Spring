<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="fr">
<head>
    <%@include file="snippets/header.jsp" %>
</head>

<body>
    <div class="wrapper">
        <%@include file="snippets/sidebar.jsp" %>

        <div class="main-panel">
            <%@include file="snippets/navbar.jsp" %>

            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Ajouter un adhérent</h4>
                                </div>
                                <div class="content">
                                    <form name='identification' method="post" action="modifierAdherentDB.htm">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Nom</label>
                                                    <input type="text" class="form-control" value="${adherant.nomAdherent}" name="txtnom" id ="nom" required>
                                                    <input type="hidden" name="id" value="${adherant.idAdherent}" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Prénom</label>
                                                    <input type="text" class="form-control" value="${adherant.prenomAdherent}" name="txtprenom" id ="prenom" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Ville</label>
                                                    <input type="text" class="form-control" value="${adherant.villeAdherent}" name="txtville" id ="ville" required>
                                                </div>
                                            </div>
                                        </div>

                                        <button type="submit" class="btn btn-info btn-fill pull-right" name="bt">Modifier</button>
                                        <a href="home.htm"><button class="btn btn-warning btn-fill pull-right" name="bt">Annuler</button></a>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%@include file="snippets/footer.jsp" %>
        </div>
    </div>
</body>

<%@include file="snippets/scripts.jsp" %>

</html>