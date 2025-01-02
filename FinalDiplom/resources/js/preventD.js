$(document).ready(function () {
    const $productsContainer = $('#products-list');
    if (!$productsContainer.length) {
        console.error('Filter elements not found');
        return;
    }
    function fetchProducts(filters = {}) {
        console.log('Fetching products with url:', filters);
        $.ajax({
            url: filters,
            method: 'GET',
            dataType: 'html',
            success: function (data) {
                console.log('Response data:', data);
                const $doc = $(data);
                let $content;
                if (filters.split('/').length > 3) {
                    $content = $doc.find('#product-container');
                } else {
                    $content = $doc.find('#products-list');
                }
                if ($content.length) {
                    $productsContainer.html($content.html());
                } else {
                    console.error('Target element not found');
                }
                const $pagination = $doc.find('#pagination');
                if ($pagination.length) {
                    $('#pagination').html($pagination.html());
                }
            },
            error: function (xhr, status, error) {
                console.error('Error fetching products:', error);
            }
        });
    }
    const $sortSelect = $('#sort-select');
    const $orderSelect = $('#order-select');
    if (!$sortSelect.length) {
        console.error('Sort elements not found');
        return;
    }
    if (!$orderSelect.length) {
        console.error('Order elements not found');
        return;
    }
    function getUrlParams() {
        let currentUrl = window.location.href;
        if (currentUrl.includes('?')) {
            currentUrl = currentUrl.split('?')[0];
        }
        return currentUrl
    }
    function updateSort() {
        const sortBy = $sortSelect.val();
        const sortOrder = $orderSelect.val();
        fetchProducts(`${getUrlParams()}?sort=${encodeURIComponent(sortBy)}&order=${encodeURIComponent(sortOrder)}`);
    }
    $sortSelect.on('change', updateSort);
    $orderSelect.on('change', updateSort);
});