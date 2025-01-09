document.addEventListener('DOMContentLoaded', function () {
    const productsContainer = document.getElementById('products-list');
    
    function fetchProducts(filters = {}) {
        console.log('Fetching products with url:', filters);
        fetch(filters)
            .then(response => {
                if (!response.ok) {
                    console.error('HTTP error! status:', response.status);
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                return response.text();
            })
            .then(data => {
                console.log('Response data:', data);
                const parser = new DOMParser();
                const doc = parser.parseFromString(data, 'text/html');
                if (filters.split('/').length > 3) {
                    const product = doc.querySelector('#product-container')
                    if (product) {
                        productsContainer.innerHTML = product.innerHTML;
                    }
                } else {
                    const products = doc.querySelector('#products-list')
                    if (products) {
                        productsContainer.innerHTML = products.innerHTML;
                    }
                }
                const pagination = doc.querySelector('#pagination')
                if (pagination) {
                    document.querySelector('#pagination').innerHTML = pagination.innerHTML;
                }
                window.history.pushState({ url: filters }, '', filters);
            })
            .catch(error => console.error('Error fetching products:', error));
    }
    window.addEventListener('popstate', function (event) {
        if (event.state) {
            fetchProducts(event.state.url)
        }
    });
});

