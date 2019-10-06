<template>
    <div class="item" :class="classProp" @click="goToCategory">
        <div class="img" v-if="item['img']">
            <img :src="`http://localhost${item['img']}`" alt=""/>
        </div>
        <div class="content">
            <div class="icon"></div>
            <h2 v-if="item['name']">{{ item['name'] }}</h2>
            <h3 v-if="item['subname']">{{ item['subname'] }}</h3>
            <div class="desciption" v-if="item['desc']">{{ item['desc'] }}</div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "GoodsItem",
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
    h2{
        text-transform: uppercase;
    }
    h3{
        font-style: italic;
    }
    .description{
        font-style: italic;
    }
    .item{
        width: 300px;
        height: 300px;
        overflow: hidden;
    }
    .item.two-row{
        height: 600px;
    }
</style>