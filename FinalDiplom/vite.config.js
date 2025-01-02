import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/js/app.js',
                'resources/js/cart-save.js',
                'resources/js/cart-display.js',
                'resources/js/order.js',
                'resources/js/find.js',
                'resources/js/banner.js',
                'resources/js/banner.js',
                'resources/js/filter.js',
                'resources/js/preventD.js',
            ],
            refresh: true,
        }),
    ],
});
