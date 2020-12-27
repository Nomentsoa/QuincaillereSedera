jQuery(document).ready(function () {
    jQuery('.delete-confirmation').confirm({
        title: 'Confirmation de la suppression',
        content: 'Etes-vous sûr de vouloir supprimer le produit'
    });
});