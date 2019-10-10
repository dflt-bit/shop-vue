<template>
    <div class="item" :class="classProp" @click="goToCategory">
        <div class="img" v-if="item['img']">
            <img :src="`http://localhost${item['img']}`" alt=""/>
        </div>
        <div class="content">
            <div class="icon"></div>
            <h2 v-if="item['name']">{{ item['name'] }}</h2>
            <h3 v-if="item['subname']">{{ item['subname'] }}</h3>
            <div class="description" v-if="item['desc']">{{ item['desc'] }}</div>
        </div>
        <div class="body-sportwear"></div>
    </div>
</template>

<script>
    export default {
        name: "Goodsitem",
        props: ['item', 'classProp'],
        methods: {
            goToCategory(){
                if(this.item['id']){
                    this.$router.push('/category/' + this.item['id']);
                }
            }
        }
    }
</script>

<style scoped>
    div.img{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    div.content{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        position: absolute;
        z-index: 4;
        top: 0;
        bottom: 0;
        width: 100%;
    }
    h2{
        text-transform: uppercase;
        color: white;
        margin: 0;
    }
    h3{
        font-style: italic;
        color: white;
        margin: 0;
    }
    .description{
        font-style: italic;
        color: white;
        text-align: center;
    }
    .item{
        width: 25%;
        height: 300px;
        overflow: hidden;
        position: relative;
    }
    .item:nth-child(8) > div.body-sportwear{
        z-index: 3;
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        background-color: rgba(0,0,0,.5);
    }
    .item:nth-child(4) > div.img > img{
        width: 100%;
        height: 100%;
    }
    .item.two-row{
        height: 600px;
    }
    .lgrey{
        background-color: lightgrey;
    }
    .dgrey{
        background-color: grey;
    }
</style>