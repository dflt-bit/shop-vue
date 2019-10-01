<template>
    <footer>
        <div class="wrapper">
            <div class="links-shop">
                <h4>Коллекции</h4>
                <a href="#">Женщинам (<span id="counter1">1725</span>)</a>
                <a href="#">Мужчинам (<span id="counter2">635</span>)</a>
                <a href="#">Детям (<span id="counter3">2514</span>)</a>
                <a href="#">Новинки (<span id="counter4">76</span>)</a>
            </div>

            <div class="links-info">
                <div class="body">
                    <h4>Магазин</h4>
                    <a href="#">О нас</a>
                    <a href="#">Доставка</a>
                    <a href="#">Работай с нами</a>
                    <a href="#">Контакты</a>
                </div>
            </div>

            <div class="links-social">
                <h4>Мы в социальных сетях</h4>
                <span>Сайт разработан inordic.ru</span>
                <span>2018 © Все права защищены</span>
                <div class="social-icons">
                    <img src="../images/icons/twitter.png" alt="twitter logo"/>
                    <img src="../images/icons/facebook.png" alt="facebook logo"/>
                    <img src="../images/icons/instagram.png" alt="instagram logo"/>
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
    export default {
        name: "Footer"
    }
</script>

<style scoped>
    footer {
        background-color: white;
        padding-bottom: 4rem;
    }

    footer > div.wrapper {
        display: flex;
        justify-content: space-between;
    }

    footer > div.wrapper > div.links-shop {
        display: flex;
        flex-direction: column;
        text-align: left;
    }

    footer > div.wrapper > div.links-shop > h4 {
        color: #222222;
        text-transform: uppercase;
    }

    footer > div.wrapper > div.links-shop > a {
        color: #222222;
        text-decoration: none;
        text-decoration: none;
        margin-bottom: 10px;
    }

    footer > div.wrapper > div.links-shop > a:hover {
        text-decoration: underline;
    }

    footer > div.wrapper > div.links-info {
        display: flex;
        justify-content: center;
        border-right: 1px solid lightgrey;
        border-left: 1px solid lightgrey;
        width: 35%;
        text-align: left;
    }

    footer > div.wrapper > div.links-info > div.body {
        display: flex;
        flex-direction: column;
    }

    footer > div.wrapper > div.links-info > div.body > h4 {
        color: #222222;
        text-transform: uppercase;
    }

    footer > div.wrapper > div.links-info > div.body > a {
        color: #222222;
        text-decoration: none;
        text-decoration: none;
        margin-bottom: 10px;
    }

    footer > div.wrapper > div.links-info > div.body > a:hover {
        text-decoration: underline;
    }

    footer > div.wrapper > div.links-social {
        display: flex;
        flex-direction: column;
        text-align: left;
    }

    footer > div.wrapper > div.links-social > h4 {
        color: #222222;
        text-transform: uppercase;
    }

    footer > div.wrapper > div.links-social > span {
        color: #222222;
        margin-bottom: 15px;
    }

    footer > div.wrapper > div.links-social > div.social-icons {
        display: flex;
    }

    footer > div.wrapper > div.links-social > div.social-icons > img {
        height: 20px;
        width: 20px;
        border: 1px solid #222222;
        margin-right: 20px;
        padding: 5px;
    }
</style>