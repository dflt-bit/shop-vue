<template>
    <div class="goods">
        <div class="item">
            <div class="img">
                <img src="../images/catalog/1.jpg" alt=""/>
            </div>
            <span>Куртка синяя</span>
            <span>5400 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/4.jpg" alt=""/>
            </div>
            <span>Кожаная куртка</span>
            <span>22500 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/3.png" alt=""/>
            </div>
            <span>Куртка с карманами</span>
            <span>9200 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/2.jpg" alt=""/>
            </div>
            <span>Куртка с капюшоном</span>
            <span>6100 руб.</span>
        </div>


        <div class="item">
            <div class="img">
                <img src="../images/catalog/5.jpg" alt=""/>
            </div>
            <span>Куртка Casual</span>
            <span>8800 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/6.jpg" alt=""/>
            </div>
            <span>Стильная кожаная куртка</span>
            <span>12800 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/7.jpg" alt=""/>
            </div>
            <span>Кеды серые</span>
            <span>2900 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/8.jpg" alt=""/>
            </div>
            <span>Кеды черные</span>
            <span>4500 руб.</span>
        </div>


        <div class="item">
            <div class="img">
                <img src="../images/catalog/9.jpg" alt=""/>
            </div>
            <span>Кеды Casual</span>
            <span>5900 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/10.jpg" alt=""/>
            </div>
            <span>Кеды всепогодные</span>
            <span>9200 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/11.jpg" alt=""/>
            </div>
            <span>Джинсы</span>
            <span>4800 руб.</span>
        </div>

        <div class="item">
            <div class="img">
                <img src="../images/catalog/12.jpg" alt=""/>
            </div>
            <span>Джинсы голубые</span>
            <span>4200 руб.</span>
        </div>
    </div>
</template>

<script>
    export default {
        name: "CategoryGoods"
    }
</script>

<style scoped>
    div.goods{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    div.goods > div.item{
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 6rem;
    }

    div.goods > div.item > div.img{
        width: 270px;
        height: 300px;
        position: relative;
        border: 1px solid lightgrey;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
    }

    div.goods > div.item > div.img > img{
        width: 100%;
        height: auto;
    }
    div.goods > div.item > span:nth-child(2){
        font-weight: bold;
        margin: 2rem 0 10px 0;
    }
</style>