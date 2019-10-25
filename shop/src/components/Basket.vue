<template>
    <div>
        <article class="basket-top">
            <h2>Ваша корзина</h2>
            <span>Товары регистрируются на ограниченное время</span>
        </article>

        <BasketGoods v-if="!!items"></BasketGoods>
        <div class="items" v-if="!!items">
            <div class="item" v-for="item in items">
                <div class="item-info">
                    <div class="item-photo">
                        <img :src="`http://localhost${item['IMG']}`" alt=""/>
                    </div>
                    <div class="item-name">
                        <span class="name">
                            {{ item['NAME'] }}
                        </span>
                        <span class="vcode">
                            {{ item['VENDORCODE'] }}
                        </span>
                    </div>
                </div>
                <div class="item-params">
                    <span class="size">
                        {{ item['SIZE'] }}
                    </span>
                    <input type="number" value="1" :max="`${item['COUNT']}`" min="1"/>
                    <span class="price">
                        {{ item['PRICE'] }}
                    </span>
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
                </div>
            </div>
        </div>
        <div class="priceSum">
            <span>Итого:</span>
            <span>12345</span>
        </div>

        <div class="divider">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="shipping-fast" class="svg-inline--fa fa-shipping-fast fa-w-20" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><path fill="currentColor" d="M624 352h-16V243.9c0-12.7-5.1-24.9-14.1-33.9L494 110.1c-9-9-21.2-14.1-33.9-14.1H416V48c0-26.5-21.5-48-48-48H112C85.5 0 64 21.5 64 48v48H8c-4.4 0-8 3.6-8 8v16c0 4.4 3.6 8 8 8h272c4.4 0 8 3.6 8 8v16c0 4.4-3.6 8-8 8H40c-4.4 0-8 3.6-8 8v16c0 4.4 3.6 8 8 8h208c4.4 0 8 3.6 8 8v16c0 4.4-3.6 8-8 8H8c-4.4 0-8 3.6-8 8v16c0 4.4 3.6 8 8 8h208c4.4 0 8 3.6 8 8v16c0 4.4-3.6 8-8 8H64v128c0 53 43 96 96 96s96-43 96-96h128c0 53 43 96 96 96s96-43 96-96h48c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zM160 464c-26.5 0-48-21.5-48-48s21.5-48 48-48 48 21.5 48 48-21.5 48-48 48zm320 0c-26.5 0-48-21.5-48-48s21.5-48 48-48 48 21.5 48 48-21.5 48-48 48zm80-208H416V144h44.1l99.9 99.9V256z"></path></svg>
        </div>
        
        <BasketShipping></BasketShipping>

        <div class="divider">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cash-register" class="svg-inline--fa fa-cash-register fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M511.1 378.8l-26.7-160c-2.6-15.4-15.9-26.7-31.6-26.7H208v-64h96c8.8 0 16-7.2 16-16V16c0-8.8-7.2-16-16-16H48c-8.8 0-16 7.2-16 16v96c0 8.8 7.2 16 16 16h96v64H59.1c-15.6 0-29 11.3-31.6 26.7L.8 378.7c-.6 3.5-.9 7-.9 10.5V480c0 17.7 14.3 32 32 32h448c17.7 0 32-14.3 32-32v-90.7c.1-3.5-.2-7-.8-10.5zM280 248c0-8.8 7.2-16 16-16h16c8.8 0 16 7.2 16 16v16c0 8.8-7.2 16-16 16h-16c-8.8 0-16-7.2-16-16v-16zm-32 64h16c8.8 0 16 7.2 16 16v16c0 8.8-7.2 16-16 16h-16c-8.8 0-16-7.2-16-16v-16c0-8.8 7.2-16 16-16zm-32-80c8.8 0 16 7.2 16 16v16c0 8.8-7.2 16-16 16h-16c-8.8 0-16-7.2-16-16v-16c0-8.8 7.2-16 16-16h16zM80 80V48h192v32H80zm40 200h-16c-8.8 0-16-7.2-16-16v-16c0-8.8 7.2-16 16-16h16c8.8 0 16 7.2 16 16v16c0 8.8-7.2 16-16 16zm16 64v-16c0-8.8 7.2-16 16-16h16c8.8 0 16 7.2 16 16v16c0 8.8-7.2 16-16 16h-16c-8.8 0-16-7.2-16-16zm216 112c0 4.4-3.6 8-8 8H168c-4.4 0-8-3.6-8-8v-16c0-4.4 3.6-8 8-8h176c4.4 0 8 3.6 8 8v16zm24-112c0 8.8-7.2 16-16 16h-16c-8.8 0-16-7.2-16-16v-16c0-8.8 7.2-16 16-16h16c8.8 0 16 7.2 16 16v16zm48-80c0 8.8-7.2 16-16 16h-16c-8.8 0-16-7.2-16-16v-16c0-8.8 7.2-16 16-16h16c8.8 0 16 7.2 16 16v16z"></path></svg>
        </div>

        <BasketPayment></BasketPayment>
    </div>
</template>

<script>
    import BasketGoods from './BasketGoods';
    import BasketShipping from './BasketShipping';
    import BasketPayment from './BasketPayment';

    export default {
        name: 'Basket',
        data(){
            return{
                items: []
            };
        },
        mounted(){
            if(localStorage.getItem('basketItems')){
                // console.log(typeof(localStorage.getItem('basketItems')));
                fetch(
                    'http://localhost/shop_dev/api/basket.php',
                    {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: localStorage.getItem('basketItems')
                    }
                ).then(res => res.json()).then(res => {


                    // console.log('typeof(res)',typeof(res));
                    // console.log('isArray(res)',Array.isArray(res));
                    // console.log('res',res);
                    this.items = res.items;
                });
            }
        },
        components: {BasketGoods,BasketShipping,BasketPayment}
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


    div.items{
        padding: 1rem 0;
    }
    div.items > div.item{
        display: flex;
        justify-content: space-between;
    }
    div.items > div.item:first-child{
        border-top: 1px solid lightgrey;
        border-bottom: 1px solid lightgrey;
    }
    div.items > div.item:not(:first-child){
        border-bottom: 1px solid lightgrey;
    }

    div.items > div.item > div.item-info{
        padding: 1rem 0;
        display: flex;
        align-items: center;
    }
    div.items > div.item > div.item-info > div.item-photo{
        width: 100px;
        height: 100px;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
        margin-right: 2.25rem;
        border: 1px solid lightgrey;
    }
    div.items > div.item > div.item-info > div.item-photo > img{
        width: 100%;
        height: auto;
    }

    div.items > div.item > div.item-info > div.item-name{
        display: flex;
        flex-direction: column;
    }
    div.items > div.item > div.item-info > div.item-name span:first-child{
        text-transform: uppercase;
        color: black;
        font-weight: bold;
    }
    div.items > div.item > div.item-info > div.item-name span:last-child{
        font-size: 90%;
        color: grey;
    }


    div.items > div.item > div.item-params{
        display: flex;
        align-items: center;
        color: black;
        margin-right: 1rem;
    }
    div.items > div.item > div.item-params > *:not(:last-child){
        margin-right: 6rem;
    }
    div.items > div.item > div.item-params > input{
        width: 40px;
        border: none;
        text-align: center;
    }
    div.items > div.item > div.item-params > svg{
        height: 20px;
        width: 20px;
    }

    div.priceSum{
        text-align: right;
        margin-right: 6rem;
    }
    div.priceSum > span:last-child{
        color: orange;
    }
</style>