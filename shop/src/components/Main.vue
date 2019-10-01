<template>
    <main>
        <NewArrivals></NewArrivals>
        <Subscribe></Subscribe>
    </main>
</template>

<script>
    import NewArrivals from './NewArrivals';
    import Subscribe from './Subscribe';

    export default {
        name: "Main",
        components: {NewArrivals,Subscribe}
    }
</script>

<style scoped>

</style>