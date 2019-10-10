<template>
    <div class="category">
        {{ this.id }}

        <span>Главная / Мужчинам</span>
        <CategoryTop></CategoryTop>
        <CategoryGoods></CategoryGoods>
        <CategoryPageSelector></CategoryPageSelector>
    </div>
</template>

<script>
    import CategoryTop from './CategoryTop';
    import CategoryGoods from './CategoryGoods';
    import CategoryPageSelector from './CategoryPageSelector';

    export default {
        name: "Category",
        props: ['id'],
        components: {CategoryTop,CategoryGoods,CategoryPageSelector}
    }
</script>

<style scoped>
    div.category{
        padding: 3rem 0;
    }
    div.category > span{
        text-transform: uppercase;
        color: grey;
    }
</style>