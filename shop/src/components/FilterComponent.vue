<template>
    <div class="filter">
        <select v-model="filter.subcategory" @change="$emit('filter', filter)">
            <option selected value="">Категория</option>
            <option v-for="item in subcategory" :value="item.ID"> {{ item.NAME }} </option>
        </select>
        <select v-model="filter.size" @change="$emit('filter', filter)">
            <option selected value="">Размер</option>
            <option v-for="item in size" :value="item.ID"> {{ item.NAME }} </option>
        </select>
        <select v-model="filter.price" @change="$emit('filter', filter)">
            <option selected value="">Стоимость</option>
            <option v-for="item in price" :value="`${item.min},${item.max}`"> {{ item.min }} - {{ item.max }} руб. </option>
        </select>
    </div>
</template>

<script>
    export default {
        name: "FilterComponent",
        data(){
            return {
                subcategory: [],
                size: [],
                price: [],
                filter: {
                    subcategory: '',
                    size: '',
                    price: ''
                }
            };
        },
        mounted(){
            fetch(
                'http://localhost/shop_dev/api/filter.php',
                {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    }
                }
            ).then(res => res.json()).then(res => {
                // console.log(res);
                this.subcategory = res.subcategory;
                this.size = res.size;
                this.price = res.price;
            });
        }
    }
</script>

<style scoped>

</style>