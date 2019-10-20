<template>
    <div>
        {{ vendorCode }}
    </div>
</template>

<script>
    export default {
        name: "Detail",
        props: ['vendorCode'],
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
                console.log(res);
            });
        }
    }
</script>

<style scoped>

</style>