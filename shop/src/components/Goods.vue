<template>
    <!-- <article class="goods-categories"> -->

        <!-- <div class="category-item">
            <div class="content">
                <span>Джинсовые куртки</span>
                <span>New Arrival</span>
            </div>
        </div>

        <div class="category-item">
        </div>

        <div class="category-item">
            <div class="content">
                <div class="img">
                    <hr/>
                    <img src="../images/icons/attention-sign-outline.png" alt=""/>
                    <hr/>
                </div>
                <span>
                    каждый сезон мы подготавливаем
                    для Вас исключительно лучшую
                    модную одежду. Следите за нашими 
                    новинками.
                </span>
            </div>
        </div>

        <div class="category-item">
            <div class="content">
                <span>Джинсы</span>
                <span>от 3200 руб.</span>
            </div>
        </div>

        <div class="category-item">
            <div class="content">
                <span>←</span>
                <span>Аксессуары</span>
            </div>
        </div>

        <div class="category-item">
        </div>

        <div class="category-item">
            <div class="content">
                <div class="img">
                    <hr/>
                    <img src="../images/icons/attention-sign-outline.png" alt=""/>
                    <hr/>
                </div>
                <span>
                    Самые низкие цены в Москве.
                    Нашли дешевле? Вернём разницу.
                </span>
            </div>
        </div>
        
        <div class="category-item">
            <div class="body">
                <div class="content">
                    <span>Спортивная одежда</span>
                    <span>от 590 руб.</span>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="content">
                <span>←</span>
                <span>Элегантная обувь</span>
                <span>Ботинки, кроссовки</span>
            </div>
        </div>

        <div class="category-item">
            <div class="content">
                <span>Детская одежда</span>
                <span>New Arrival</span>
            </div>
        </div> -->

    <!-- </article> -->

    <div class="goods">
        <Goodsitem v-for="(item, id) in items" :item="item" :classProp="id % 6 === 0 ? 'two-row' : ''"></Goodsitem>
    </div>
</template>

<script>
    import Goodsitem from './Goodsitem';

    export default {
        name: "Goods",
        components : {Goodsitem},
        data(){
            return {
                items: []
            };
        },
        mounted(){
            fetch(
                'http://localhost/shop_dev/api/subcategory.php',
                {
                    method: 'GET',
                    headers:{
                        'Content-Type': 'application/json'
                    }
                }
            ).then(res => res.json()).then(res => {
                this.items = res;
            });
        }
    }
</script>

<style scoped>
    .goods{
        display: flex;
        flex-wrap: wrap;
    }
    /* main article.goods-categories {
        background-color: white;
        display: flex;
        flex-direction: column;
        flex-wrap: wrap;
        position: relative;
        max-height: 900px;  
        height: 100%;
    }

    main article.goods-categories > div.category-item {
        max-width: 25%;
        width: 100%;
        min-height: 300px;
        max-height: 600px;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        position: relative;
    }

    main article.goods-categories > div.category-item:nth-child(1) {
        background-image: url(../images/1.jpg);
        background-size: cover;
        background-position: center;
        height: 600px;
    }

    main article.goods-categories > div.category-item:nth-child(1) > div.content {
        width: 60%;
        display: flex;
        flex-direction: column;
    }

    main article.goods-categories > div.category-item:nth-child(1) > div.content > span {
        color: white;
        font-size: 1.5rem;
        text-transform: uppercase;
    }

    main article.goods-categories > div.category-item:nth-child(1) > div.content > span:last-child {
        font-style: italic;
        font-size: 1.25rem;
    }

    main article.goods-categories > div.category-item:nth-child(2) {
        background-image: url(../images/5.jpg);
        background-size: cover;
        background-position: center;
    }

    main article.goods-categories > div.category-item:nth-child(3) {
        background-size: cover;
        background-position: center;
        background-color: #bbbbbb;
    }

    main article.goods-categories > div.category-item:nth-child(3) > div.content {
        width: 60%;
        display: flex;
        flex-direction: column;
    }

    main article.goods-categories > div.category-item:nth-child(3) > div.content > div.img {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }

    main article.goods-categories > div.category-item:nth-child(3) > div.content > div.img > hr {
        width: 30px;
        height: 1px;
        background: white;
        border: none;
    }

    main article.goods-categories > div.category-item:nth-child(3) > div.content > div.img > img {
        height: 40px;
        width: 40px;
    }

    main article.goods-categories > div.category-item:nth-child(3) > div.content > span {
        color: white;
        font-style: italic;
    }

    main article.goods-categories > div.category-item:nth-child(4) {
        background-image: url(../images/2.jpg);
        background-size: cover;
        background-position: center;
    }

    main article.goods-categories > div.category-item:nth-child(4) > div.content {
        width: 60%;
        display: flex;
        flex-direction: column;
    }

    main article.goods-categories > div.category-item:nth-child(4) > div.content > span {
        color: white;
        font-size: 1.5rem;
        text-transform: uppercase;
    }

    main article.goods-categories > div.category-item:nth-child(4) > div.content > span:last-child {
        font-style: italic;
        font-size: 1.25rem;
        text-transform: none;
    }

    main article.goods-categories > div.category-item:nth-child(5) {
        background-size: cover;
        background-position: center;
        background-color: #606060;
    }

    main article.goods-categories > div.category-item:nth-child(5) > div.content {
        display: flex;
        flex-direction: column;
    }

    main article.goods-categories > div.category-item:nth-child(5) > div.content > span {
        font-size: 1.75rem;
        text-transform: uppercase;
        color: white;
    }

    main article.goods-categories > div.category-item:nth-child(6) {
        background-image: url(../images/3.jpg);
        background-size: cover;
        background-position: center;
    }

    main article.goods-categories > div.category-item:nth-child(7) {
        background-size: cover;
        background-position: center;
        background-color: #bbbbbb;
    }

    main article.goods-categories > div.category-item:nth-child(7) > div.content {
        width: 60%;
        display: flex;
        flex-direction: column;
    }

    main article.goods-categories > div.category-item:nth-child(7) > div.content > div.img {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }

    main article.goods-categories > div.category-item:nth-child(7) > div.content > div.img > hr {
        width: 30px;
        height: 1px;
        background: white;
        border: none;
    }

    main article.goods-categories > div.category-item:nth-child(7) > div.content > div.img > img {
        height: 40px;
        width: 40px;
    }

    main article.goods-categories > div.category-item:nth-child(7) > div.content > span {
        color: white;
        font-style: italic;
    }

    main article.goods-categories > div.category-item:nth-child(8) {
        background-image: url(../images/6.jpg);
        background-size: cover;
        background-position: center;
        position: relative;
    }

    main article.goods-categories > div.category-item:nth-child(8) > div.body {
        position: absolute;
        height: 100%;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: rgba(0, 0, 0, 0.5);
    }

    main article.goods-categories > div.category-item:nth-child(8) > div.body > div.content {
        width: 60%;
        display: flex;
        flex-direction: column;
    }

    main article.goods-categories > div.category-item:nth-child(8) > div.body > div.content > span {
        color: white;
        font-size: 1.5rem;
        text-transform: uppercase;
    }

    main article.goods-categories > div.category-item:nth-child(8) > div.body > div.content > span:last-child {
        font-style: italic;
        font-size: 1.25rem;
        text-transform: none;
    }

    main article.goods-categories > div.category-item:nth-child(9) {
        background-size: cover;
        background-position: center;
        background-color: #606060;
    }

    main article.goods-categories > div.category-item:nth-child(9) > div.content {
        display: flex;
        flex-direction: column;
        width: 70%;
    }

    main article.goods-categories > div.category-item:nth-child(9) > div.content > span {
        font-size: 1.5rem;
        text-transform: uppercase;
        color: white;
    }

    main article.goods-categories > div.category-item:nth-child(9) > div.content > span:last-child {
        font-style: italic;
        font-size: 1.1rem;
    }

    main article.goods-categories > div.category-item:nth-child(10) {
        background-image: url(../images/4.jpg);
        background-size: cover;
        background-position: center;
        height: 600px;
    }

    main article.goods-categories > div.category-item:nth-child(10) > div.content {
        width: 60%;
        display: flex;
        flex-direction: column;
    }

    main article.goods-categories > div.category-item:nth-child(10) > div.content > span {
        color: white;
        font-size: 1.5rem;
        text-transform: uppercase;
    }

    main article.goods-categories > div.category-item:nth-child(10) > div.content > span:last-child {
        font-style: italic;
        font-size: 1.25rem;
    } */
</style>