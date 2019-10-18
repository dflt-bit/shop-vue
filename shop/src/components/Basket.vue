<template>
    <div>
        <article class="basket-top">
            <h2>Ваша корзина</h2>
            <span>Товары регистрируются на ограниченное время</span>
        </article>

        <BasketGoods></BasketGoods>

        <div class="divider">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="shipping-fast" class="svg-inline--fa fa-shipping-fast fa-w-20" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><path fill="currentColor" d="M624 352h-16V243.9c0-12.7-5.1-24.9-14.1-33.9L494 110.1c-9-9-21.2-14.1-33.9-14.1H416V48c0-26.5-21.5-48-48-48H112C85.5 0 64 21.5 64 48v48H8c-4.4 0-8 3.6-8 8v16c0 4.4 3.6 8 8 8h272c4.4 0 8 3.6 8 8v16c0 4.4-3.6 8-8 8H40c-4.4 0-8 3.6-8 8v16c0 4.4 3.6 8 8 8h208c4.4 0 8 3.6 8 8v16c0 4.4-3.6 8-8 8H8c-4.4 0-8 3.6-8 8v16c0 4.4 3.6 8 8 8h208c4.4 0 8 3.6 8 8v16c0 4.4-3.6 8-8 8H64v128c0 53 43 96 96 96s96-43 96-96h128c0 53 43 96 96 96s96-43 96-96h48c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zM160 464c-26.5 0-48-21.5-48-48s21.5-48 48-48 48 21.5 48 48-21.5 48-48 48zm320 0c-26.5 0-48-21.5-48-48s21.5-48 48-48 48 21.5 48 48-21.5 48-48 48zm80-208H416V144h44.1l99.9 99.9V256z"></path></svg>
        </div>
        
        <BasketShipping></BasketShipping>
    </div>
</template>

<script>
    import BasketGoods from './BasketGoods';
    import BasketShipping from './BasketShipping';

    export default {
        name: 'Basket',
        components: {BasketGoods,BasketShipping}
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

    div.divider{
        padding: 6rem 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    div.divider > svg{
        width: 100px;
        height: auto;
        color: orange;
    }
</style>