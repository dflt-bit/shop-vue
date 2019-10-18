<template>
    <div class="shipping">
        <h2>Адрес доставки</h2>
        <span>Все поля обязательны для заполнения</span>

        <form>
            <label for="ship" class="maxwdt">Выберите способ доставки
                <select id="ship">
                    <option selected>Курьерская служба - 500 руб.</option>
                </select>
            </label>

            <label for="name">Имя
                <input type="text" id="name" required/>
            </label>

            <label for="lname">Фамилия
                <input type="text" id="lname" required/>
            </label>

            <label for="address" class="maxwdt">Адрес
                <input type="text" id="address" required/>
            </label>

            <label for="city">Город
                <input type="text" id="city" required/>
            </label>

            <label for="postcode">Индекс
                <input type="text" id="postcode" required/>
            </label>

            <label for="phone">Телефон
                <input type="tel" id="phone" required/>
            </label>

            <label for="mail">e-mail
                <input type="email" id="mail" required/>
            </label>
        </form>
    </div>
</template>

<script>
    export default {
        name: 'BasketShipping'
    }
</script>

<style scoped>
    .shipping{
        padding: 4rem 0;
        border: 1px solid lightgrey;
        position: relative;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .shipping > h2{
        text-transform: uppercase;
        color: black;
        margin-bottom: 1rem;
    }
    .shipping > span{
        font-style: italic;
        color: grey;
    }

    form{
        display: flex;
        flex-wrap: wrap;
        width: 50%;
        justify-content: space-between;
        margin: 5rem 0;
    }
    form > label{
        width: 48%;
        display: flex;
        flex-direction: column;
        margin-bottom: 3rem;
        color: grey;
        font-size: 90%;
        text-transform: uppercase;
    }
    form > label.maxwdt{
        width: 100%;
    }
    form > label > select{
        padding: 10px;
        width: 100%;
        margin-top: 10px;
    }
    form > label > input{
        padding: 10px;
        margin-top: 10px;
    }
</style>