<template>
    <main>
        <NewArrivals></NewArrivals>
        <Goods></Goods>
        <Subscribe></Subscribe>
    </main>
</template>

<script>
    import NewArrivals from './NewArrivals';
    import Goods from './Goods';
    import Subscribe from './Subscribe';

    export default {
        name: "Main",
        components: {NewArrivals,Goods,Subscribe}
    }
</script>

<style scoped>

</style>