document.addEventListener('DOMContentLoaded', function () {
    const cartItemsList = document.querySelector('.cart-items');
    const cartTotalElement = document.querySelector('.cart-total');
    const cartCountElement = document.querySelector('.cart-count');
    function updateCartTotal() {
        let cart = JSON.parse(localStorage.getItem('cart') || '[]');
        let total = cart.reduce((acc, item) => acc + item.price * item.quantity, 0);
        cartTotalElement.textContent = total.toFixed(2);
    }
    function updateCartCount() {
        let cart = JSON.parse(localStorage.getItem('cart') || '[]');
        let totalCount = cart.reduce((acc, item) => acc + item.quantity, 0);
        cartCountElement.textContent = totalCount + ' шт';
    }

    function updateCartDisplay() {
        let cart = JSON.parse(localStorage.getItem('cart') || '[]');
        cartItemsList.innerHTML = '';
        cart.forEach(item => {
            const imageHTML = item.image ? `<img class="cart_item_img" src="${item.image}" alt="${item.title}">` : '';
            const li = document.createElement('div');
            li.innerHTML = `
                <div class="cart_items cart" data-product-id="${item.id}" data-category-id="${item.category_id}">
                   <div class="cart_items_img">
                        ${imageHTML}
                   </div>
                   <div class="cart_items_desc">
                        <div class="cart_items_desc_title">${item.title}</div>
                      <div class="cart_items_desc_brand">Брэнд: ${item.brand_id || ''}</div>
                       <div class="cart_items_desc_size">Размер: ${item.size_id || ''}</div>
                      <div class="cart_items_desc_color">Цвет: ${item.color_id || ''}</div>
                    </div>
                    <div class="cart_items_count">${item.quantity}</div>
                     <div class="cart_items_price">${item.price}</div>
                 <div class="cart_items_remove product" data-product-id="${item.id}" data-category-id="${item.category_id}">удалить</div>
               </div>
            `;
            cartItemsList.appendChild(li);
        });
        updateCartTotal();
        updateCartCount();
        const removeButtons = document.querySelectorAll('.cart_items_remove');
        removeButtons.forEach(button => {
            button.addEventListener('click', function (event) {
                const productId = event.target.getAttribute('data-product-id');
                const productCategoryId = event.target.getAttribute('data-category-id');
                let cart = JSON.parse(localStorage.getItem('cart') || '[]');
                cart = cart.filter(item => !(item.id === productId && item.category_id === productCategoryId));
                localStorage.setItem('cart', JSON.stringify(cart));
                updateCartDisplay();
            });
        });
    }
    updateCartDisplay();
});