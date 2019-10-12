<template>
    <div class="category">
        {{ id }}

        <!-- <span>Главная / Мужчинам</span>
        <CategoryTop></CategoryTop>
        <CategoryGoods></CategoryGoods>
        <CategoryPageSelector></CategoryPageSelector> -->
    </div>
</template>

<script>
    // import CategoryTop from './CategoryTop';
    // import CategoryGoods from './CategoryGoods';
    // import CategoryPageSelector from './CategoryPageSelector';

    export default {
        name: "Category",
        props: ['id'],
        mounted(){
            fetch(
                'http://localhost/shop_dev/api/goods.php?SUBCID='+this.id,
                {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    }
                }
            ).then(res => res.json()).then(res => {
                console.log(res);
            });
        }
        // components: {CategoryTop,CategoryGoods,CategoryPageSelector}
    }
</script>

<style scoped>
    /* div.category{
        padding: 3rem 0;
    }
    div.category > span{
        text-transform: uppercase;
        color: grey;
    } */
</style>