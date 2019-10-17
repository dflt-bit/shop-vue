<template>
    <div>
        <article class="basket-top">
            <h2>Ваша корзина</h2>
            <span>Товары регистрируются на ограниченное время</span>
        </article>

        <BasketGoods></BasketGoods>
    </div>
</template>

<script>
    import BasketGoods from './BasketGoods';

    export default {
        name: 'Basket',
        components: {BasketGoods}
    }
</script>

<style scoped>
    .basket-top{
        text-align: center;
        padding: 6rem 0;
    }
    .basket-top > h2{
        text-transform: uppercase;
        color: black;
        font-size: 1.75rem;
    }
    .basket-top > span{
        font-style: italic;
        color: grey;
        font-size: 1.25rem;
    }
</style>