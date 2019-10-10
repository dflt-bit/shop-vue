<template>
    <div class="goods">
        <div class="item">
            <img src="../images/catalog/1.jpg" alt=""/>
            <span>Куртка синяя</span>
            <span>5400 руб.</span>
        </div>

        <div class="item">
            <img src="../images/catalog/1.jpg" alt=""/>
            <span>Куртка синяя</span>
            <span>5400 руб.</span>
        </div>

        <div class="item">
            <img src="../images/catalog/1.jpg" alt=""/>
            <span>Куртка синяя</span>
            <span>5400 руб.</span>
        </div>

        <div class="item">
            <img src="../images/catalog/1.jpg" alt=""/>
            <span>Куртка синяя</span>
            <span>5400 руб.</span>
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
        width: 300px;
        height: 400px;
        position: relative;
    }
    div.goods > div.item > img{
        width: 100%;
        height: auto;
        border: 1px solid grey;
    }
</style>