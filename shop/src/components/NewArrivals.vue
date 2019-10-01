<template>
    <article class="main-top">
        <h1>Новые поступления весны</h1>
        <h4>Мы подготовили для Вас лучшие новинки сезона</h4>
        <div>
            <a href="#">Посмотреть новинки</a>
        </div>
    </article>
</template>

<script>
    export default {
        name: "NewArrivals"
    }
</script>

<style scoped>
    main > article.main-top {
    background-color: white;
    padding: 5rem 30px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
    }

    main > article.main-top > h1 {
    font-weight: normal;
    font-size: 4rem;
    text-transform: uppercase;
    margin-bottom: 0;
    color: #303030;
    }

    main > article.main-top > h4 {
    font-weight: normal;
    font-size: 1.75rem;
    font-style: italic;
    margin-top: 10px;
    color: #5c5c5c;
    }

    main > article.main-top > div {
    margin-top: 40px;
    }

    main > article.main-top > div > a {
    color: #222222;
    text-decoration: none;
    padding: 20px 35px;
    text-transform: uppercase;
    color: #6b6b6b;
    border: 1px solid #6b6b6b;
    }
</style>