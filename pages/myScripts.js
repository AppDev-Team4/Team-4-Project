function applyFilter() {
    var selectedPrice = document.querySelector('input[name="price"]:checked');

    var filterLink = 'catalog.php?';

    if (selectedPrice) {
        filterLink += 'price=' + selectedPrice.value + '&';
    }

    window.location.href = filterLink;
}