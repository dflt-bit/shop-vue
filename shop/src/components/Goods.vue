<template>
    <div class="goods">
        <Goodsitem v-for="(item, id) in items" :item="item" 
        :classProp="id % 9 === 0 ? 'two-row' : '' 
        || (id == 2 || id == 6 ? 'lgrey' : '') 
        || (id == 4 || id == 8 ? 'dgrey' : '')"></Goodsitem>
    </div>
</template>

<script>
    import Goodsitem from './Goodsitem';

    export default {
        name: "Goods",
        components : {Goodsitem},
        data(){
            return {
                items: []
            };
        },
        mounted(){
            fetch(
                'http://localhost/shop_dev/api/subcategory.php',
                {
                    method: 'GET',
                    headers:{
                        'Content-Type': 'application/json'
                    }
                }
            ).then(res => res.json()).then(res => {
                this.items = res;
            });
        }
    }
</script>

<style scoped>
    .goods{
        margin: 0 auto;
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        max-height: 900px;
        max-width: 1300px;
        height: 100%;
        align-items: center;
        justify-content: center;
        
        
    }
</style>