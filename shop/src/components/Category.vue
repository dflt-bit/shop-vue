<template>
    <div class="category">
        <FilterComponent v-on:filter="getFilters"></FilterComponent>
        <div class="items">
            <div class="item" v-for="item in filteredItems" @click="$router.push(`/detail/${item['VENDORCODE']}`)">
                <div class="img">
                    <img :src="`http://localhost${item['IMG']}`" alt=""/>
                </div>
                <div class="desc">
                    <div class="name"> {{ item['NAME'] }} </div>
                    <div class="price"> {{ item['PRICE'] }} руб. </div>
                </div>
            </div>
        </div>
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

    import FilterComponent from './FilterComponent';

    export default {
        name: "Category",
        components: {FilterComponent},
        props: ['id'],
        data(){
            return {
                items: [],
                filters: {}
            };
        },
        computed: {
            filteredItems: function(){

                let res = [];

                if(!this.filters.size && !this.filters.subcategory && !this.filters.price){
                        res = this.items;
                    }else{

                        // debugger;

                        res = this.items.filter(item => {

                            let prices;
                            if(!!this.filters.price){
                                prices = this.filters.price.split(',');
                            }
                            
                            
                            return (!!this.filters.size && item.SIZES.includes(this.filters.size) ) ||
                            (!!this.filters.subcategory && item.SUBCATEGORY === this.filters.subcategory) ||
                            (!!this.filters.price) && 
                            (parseInt(item.PRICE) >= parseInt(prices[0]) && parseInt(item.PRICE) <= parseInt(prices[1]))
                        });
                        // for(let i of this.items){
                        //     if(!!this.filters.size && i.SIZE === this.filters.size){
                        //         res.push(i);
                        //     }
                        //     else if(!!this.filters.subcategory && i.SUBCATEGORY === this.filters.subcategory){
                        //         res.push(i);
                        //     }
                        //     else if(!!this.filters.price){
                        //         const prices = this.filters.price.split(',');
                        //         if(parseInt(i.PRICE) >= parseInt(prices[0]) && parseInt(i.PRICE) <= parseInt(prices[1])){
                        //             res.push(i);
                        //         }
                        //     }
                        // }
                    }
                return res;
            }
        }, 
        methods: {
            getFilters(filters){
                this.filters = filters;
            }
        },
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

                this.items = res;
                // this.sizes = res.sizes;
            });
        }
    }
</script>

<style scoped>
    .items{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .item{
        display: flex;
        flex-direction: column;
        width: 20%;
    }
    div.img{
        border: 1px solid lightgrey;
        height: 300px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    div.img > img{
        max-width: 100%;
        max-height: 100%;
    }
    div.desc{
        margin-top: 2rem;
        text-align: center;
    }
    div.desc .name{
        font-weight: 700;
    }
    /* div.category{
        padding: 3rem 0;
    }
    div.category > span{
        text-transform: uppercase;
        color: grey;
    } */
</style>