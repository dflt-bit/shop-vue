<template>
    <div class="category">
        {{ this.id }}

        <span>Главная / Мужчинам</span>
        <CategoryTop></CategoryTop>
        <CategoryGoods></CategoryGoods>

    </div>
</template>

<script>
    import CategoryTop from './CategoryTop';
    import CategoryGoods from './CategoryGoods';
    export default {
        name: "Category",
        props: ['id'],
        components: {CategoryTop,CategoryGoods}
    }
</script>

<style scoped>
    div.category{
        /* display: flex; */
        padding: 3rem 0;
    }
    div.category > span{
        text-transform: uppercase;
        color: grey;
    }
</style>