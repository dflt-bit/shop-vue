<template>
    <div class="category-top">

        <h2>Мужчинам</h2>
        <h4>Все товары</h4>

        <div class="options">
            <select size="1">
                <option disabled selected hidden>Категория</option>
            </select>

            <select size="1">
                <option disabled selected hidden>Размер</option>
            </select>

            <select size="1">
                <option selected hidden disabled>Стоимость</option>
                <option>0-1000 руб.</option>
                <option>1000-3000 руб.</option>
                <option>3000-6000 руб.</option>
                <option>6000-20000 руб.</option>
            </select>
        </div>
    </div>
</template>

<script>
    export default {
        name: "CategoryTop"
    }
</script>

<style scoped>
    div.category-top{
        padding: 4rem 0;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h2{
        text-transform: uppercase;
        font-size: 2.5rem;
        font-weight: normal;
        margin: 0;
    }
    h4{
        font-style: italic;
        color: grey;
        font-size: 1.5rem;
        font-weight: normal;
        margin: 0.5rem;;
    }

    div.options{
        display: flex;
        margin-top: 3rem;
    }
    div.options > select{
        width: 200px;
        font-style: italic;
        color: grey;
        border: none;
        border-bottom: 1px solid black;
        margin-right: 20px;
        outline: none;
        font-size: 1.1rem;
    }
    div.options > select option{
        padding: 15px 5px;
        outline: none;
    }
</style>