document.addEventListener('DOMContentLoaded', function () {
    const addToCartButtons = document.querySelectorAll('.add-to-cart');
    addToCartButtons.forEach(button => {
        button.addEventListener('click', function (event) {
            const productDiv = event.target.closest('.show_right_box');
            const productShow = productDiv.closest('.show');
            const productLeftDiv = productShow.querySelector('.show_left_box');
            const productId = productDiv.getAttribute('data-product-id');
            const productCategoryId = productDiv.getAttribute('data-category-id');
            const productTitle = productDiv.querySelector('.show_right_box_title').textContent;
            let productPrice;
            const priceDiscount = productDiv.querySelector('.show_right_box_price_summa');
            if (priceDiscount) {
                const priceWithDiscount = priceDiscount.querySelector('b').textContent.trim().replace(/[^\d\.]/g, '');
                productPrice = parseFloat(priceWithDiscount);
            } else {
                const priceNoDiscount = productDiv.querySelector('.show_right_box_price_summa_noSale');
                const priceWithoutDiscount = priceNoDiscount.querySelector('b').textContent.trim().replace(/[^\d\.]/g, '');
                productPrice = parseFloat(priceWithoutDiscount);
            }
            const productDesc = productDiv.querySelector('.show_right_box_title').textContent;
            const productColor = productDiv.querySelector('.show_right_box_color')?.textContent.split(': ')[1] || null;
            const productBrand = productDiv.querySelector('.show_right_box_brend')?.textContent.split(': ')[1] || null;
            const productSize = productDiv.querySelector('.show_right_box_title_size')?.textContent.split(': ')[1] || null;

            const productImage = productLeftDiv.querySelector('.box_img')?.src || null;

            let cart = JSON.parse(localStorage.getItem('cart') || '[]');
            let existingItem = cart.find(item => item.id === productId && item.category_id === productCategoryId); 
            if (existingItem) {
                existingItem.quantity++;
            } else {
                cart.push({
                    id: productId,
                    category_id: productCategoryId, 
                    title: productTitle,
                    desc: productDesc,
                    price: productPrice,
                    color_id: productColor,
                    brand_id: productBrand,
                    size_id: productSize,
                    image: productImage,
                    quantity: 1
                });
            }
            localStorage.setItem('cart', JSON.stringify(cart));
        });
    });
});