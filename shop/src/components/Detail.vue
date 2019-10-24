<template>
    <div class="product">
        <div class="img"><img :src="`http://localhost${item.IMG}`" alt=""/></div>
        <div class="body">
            <h2>{{item.NAME}}</h2>
            <h4>Артикул {{item.VENDORCODE}}</h4>
            <div class="price">{{item.PRICE}} руб.</div>
            <div class="desc">{{item.DESCRIPTION}}</div>
        </div>
        <h4>Размеры</h4>
        <div class="sizes">
            <div class="size"
            :class="{
                'disabled': item.SIZES.indexOf(id) === -1,
                'active': id === sizeId && item.SIZES.indexOf(id) !== -1
            }"
            @click="selectSize(id)"
            :key="`size_${id}`"
            v-for="(size, id) in sizes">
                {{size}}
            </div>
        </div>
        <div class="button">
            <span @click="addBasket">
                Добавить в корзину
            </span>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Detail",
        props: ['vendorCode'],
        data(){
            return {
                item: {},
                sizes: {},
                sizeId: -1
            };
        },
        methods: {
            addBasket(){
                if(this.sizeId !== -1){
                    if(!localStorage.getItem('userId')){
                        let items = [];
                        if(localStorage.getItem('basketItems')){
                            items = JSON.parse(localStorage.getItem('basketItems'));
                        }
                        items.push({
                            vcode: this.item.VENDORCODE,
                            size: this.sizeId
                        });
                        localStorage.setItem('basketItems', JSON.stringify(items));
                    }
                }
            },
            selectSize(id){
                if(this.item.SIZES.indexOf(id) !== -1){
                    this.sizeId = id;
                }
            }
        },
        mounted(){
            fetch(
                'http://localhost/shop_dev/api/detail.php?VCODE=' + this.vendorCode,
                {
                    method: 'GET',
                    headers:{
                        'Content-Type': 'application/json'
                    }
                }
            ).then(res => res.json()).then(res => {
                this.item = res.item;
                this.sizes = res.sizes;
            });
        }
    }
</script>

<style scoped>
    .product{
        text-align: center;
    }

    .body h2{
        font-size: 2rem;
        text-transform: uppercase;
        margin-bottom: 0;
    }
    .body h4{
        margin-top: 0;
        font-size: .6rem;
        opacity: .6;
    }
    .body .price{
        margin: 1rem 0;
        font-style: italic;
        color: grey;
    }
    .body .desc{
        color: grey;
        font-size: .8rem;
    }
    .product > h4{
        font-weight: normal;
    }
    .sizes{
        display: flex;
        justify-content: center;
    }
    .sizes .size{
        padding: 8px 8px;
        border: 1px solid grey;
        color: grey;
        cursor: pointer;
        overflow: hidden;
    }
    .sizes .size:not(:last-child){
        margin-right: 20px;
    }
    .sizes .size.active{
        background-color: orange;
        color: white;
    }
    .sizes .size.disabled{
        position: relative;
    }
    .sizes .size.disabled:before{
        top: -8px;
        right: 47%;
        border-radius: 20px;
        content: '';
        height: 145%;
        width: 2px;
        position: absolute;
        background-color: grey;
        transform: rotate(45deg);
    }
    .sizes .size.disabled:after{
        top: -8px;
        right: 47%;
        border-radius: 20px;
        content: '';
        height: 145%;
        width: 2px;
        position: absolute;
        background-color: grey;
        transform: rotate(-45deg);
    }
    .button{
        margin: 2rem;
        display: flex;
        justify-content: center;
    }
    .button span{
        background-color: orange;
        text-transform: uppercase;
        padding: 20px;
        color: white;
    }
</style>