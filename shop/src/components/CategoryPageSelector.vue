<template>
    <div class="selector">
        <div class="selector-item">1</div>
        <div class="selector-item">2</div>
        <div class="selector-item">3</div>
        <div class="selector-item">4</div>
    </div>
</template>

<script>
    export default {
        name: "CategoryPageSelector"
    }
</script>

<style scoped>
    div.selector{
        display: flex;
        justify-content: center;
        margin-bottom: 5rem;
    }
    div.selector > div.selector-item:not(:first-child){
        padding: 10px 15px;
        border: 1px solid black;
        background-color: black;
        color: white;
        margin-left: 10px;
    }
    div.selector > div.selector-item:first-child{
        padding: 10px 15px;
        border: 1px solid black;
        color: black;
        margin-left: 10px;
    }
    div.selector > div.selector-item:hover{
        cursor: pointer;
        background: none;
        color: black;
    }
</style>