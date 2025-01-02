document.addEventListener('DOMContentLoaded', function () {
    const searchInput = document.getElementById('searchInput');
    const searchResults = document.getElementById('searchResults');

    if (!searchInput || !searchResults) {
        return;
    }

    searchInput.addEventListener('input', function () {
        const searchTerm = searchInput.value.trim();
        if (searchTerm.length < 2) {
            searchResults.style.display = 'none';
            return;
        }
        fetch(`/search?query=${encodeURIComponent(searchTerm)}`)
            .then(response => response.json())
            .then(data => {
                searchResults.innerHTML = '';
                if (data.length === 0) {
                    searchResults.style.display = 'none';
                    return
                }
                data.forEach(item => {
                    const link = document.createElement('a');
                    link.href = item.url;
                    link.textContent = item.title;
                    link.classList.add('search-result-item')
                    searchResults.appendChild(link);
                });
                searchResults.style.display = 'block';
            })
            .catch(error => {
                console.error('Error fetching search results:', error);
                searchResults.innerHTML = '<p>Произошла ошибка</p>';
                searchResults.style.display = 'block';
            });
    });
    document.addEventListener('click', function (event) {
        if (!searchInput.contains(event.target) && !searchResults.contains(event.target)) {
            searchResults.style.display = 'none';
        }
    });
});