<template>
    <div class="payment">
        <h2>Варианты оплаты</h2>
        <span>Все поля обязательны для заполнения</span>

        <div class="paySum">
            <div class="namings">
                <span>Стоимость:</span>
                <span>Доставка:</span>
                <span>Итого:</span>
            </div>
            <div class="counters">
                <span>12500 руб.</span>
                <span>500 руб.</span>
                <span>13000 руб.</span>
            </div>
        </div>

        <form>
            <label for="payMethod">Выберите способ оплаты
                <select id="payMethod">
                    <option selected>Банковская карта</option>
                </select>
            </label>

            <input type="button" value="Заказать"/>
        </form>
    </div>
</template>

<script>
    export default {
        name: 'BasketPayment'
    }
</script>

<style scoped>
    div.payment{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 5rem 0;
        border: 1px solid lightgrey;
        margin-bottom: 3rem;
        position: relative;
    }
    div.payment > h2{
        text-transform: uppercase;
        color: black;
        font-size: 1.75rem;
    }
    div.payment > span{
        font-style: italic;
        color: grey;
        font-size: 1.25rem;
    }

    div.paySum{
        display: flex;
        margin: 4rem 0;
        color: grey;
    }
    div.paySum > div.namings{
        display: flex;
        flex-direction: column;
        text-align: right;
        margin-right: 1rem;
    }
    div.paySum > div.namings > span:not(:last-child){
        margin-bottom: .75rem;
    }
    div.paySum > div.namings > span:last-child{
        color: orange;
    }
    div.paySum > div.counters{
        display: flex;
        flex-direction: column;
    }
    div.paySum > div.counters > span{
        font-style: italic;
    }
    div.paySum > div.counters > span:not(:last-child){
        margin-bottom: .75rem;
    }
    div.paySum > div.counters > span:last-child{
        color: orange;
    }

    form{
        width: 50%;
        display: flex;
        flex-direction: column;
        text-align: left;
        align-items: center;
    }
    form > label{
        width: 100%;
        text-transform: uppercase;
        color: grey;
        font-size: 90%;
    }
    form > label > select{
        width: 100%;
        padding: 10px;
        display: flex;
        justify-content: space-between;
        border: 1px solid grey;
        margin-top: 10px;
    }
    form > input{
        padding: 15px 60px;
        background-color: orange;
        border: none;
        text-transform: uppercase;
        color: white;
        margin-top: 2rem;

    }
</style>