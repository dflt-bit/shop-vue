<template>
    <div>
        <form>
            <div class="head">
                <div class="info">
                    <span>Фото</span>
                    <span>Наименование</span>
                </div>
                <div class="params">
                    <span>Размер</span>
                    <span>Количество</span>
                    <span>Стоимость</span>
                    <span>Удалить</span>
                </div>
            </div>

            <div class="items">
                <div class="item">
                    <div class="item-info">
                        <div class="item-photo"><img src="../images/catalog/1.jpg" alt=""/></div>
                        <div class="item-name">
                            <span>Куртка синяя</span>
                            <span>арт. 123412</span>
                        </div>
                    </div>
                    <div class="item-params">
                        <span>39</span>
                        <input type="number" value="1"/>
                        <span>3800</span>
                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
                    </div>
                </div>

                <div class="item">
                    <div class="item-info">
                        <div class="item-photo"><img src="../images/catalog/1.jpg" alt=""/></div>
                        <div class="item-name">
                            <span>Куртка синяя</span>
                            <span>арт. 123412</span>
                        </div>
                    </div>
                    <div class="item-params">
                        <span>39</span>
                        <input type="number" value="1"/>
                        <span>3800</span>
                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
                    </div>
                </div>

                <div class="item">
                    <div class="item-info">
                        <div class="item-photo"><img src="../images/catalog/1.jpg" alt=""/></div>
                        <div class="item-name">
                            <span>Куртка синяя</span>
                            <span>арт. 123412</span>
                        </div>
                    </div>
                    <div class="item-params">
                        <span>39</span>
                        <input type="number" value="1"/>
                        <span>3800</span>
                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
                    </div>
                </div>
            </div>
        </form>
        <div class="priceSum">
            <span>Итого:</span>
            <span>12345 руб.</span>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'BasketGoods'
    }
</script>

<style scoped>
    div.head{
        display: flex;
        justify-content: space-between;
        color: grey;
    }
    div.head > div.info span:last-child{
        margin-left: 6rem;
    }
    div.head > div.params span:not(:last-child){
        margin-right: 3rem;
    }

    div.items{
        padding: 1rem 0;
    }
    div.items > div.item{
        display: flex;
        justify-content: space-between;
    }
    div.items > div.item:first-child{
        border-top: 1px solid lightgrey;
        border-bottom: 1px solid lightgrey;
    }
    div.items > div.item:not(:first-child){
        border-bottom: 1px solid lightgrey;
    }

    div.items > div.item > div.item-info{
        padding: 1rem 0;
        display: flex;
        align-items: center;
    }
    div.items > div.item > div.item-info > div.item-photo{
        width: 100px;
        height: 100px;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
        margin-right: 2.25rem;
        border: 1px solid lightgrey;
    }
    div.items > div.item > div.item-info > div.item-photo > img{
        width: 100%;
        height: 100%;
    }

    div.items > div.item > div.item-info > div.item-name{
        display: flex;
        flex-direction: column;
    }
    div.items > div.item > div.item-info > div.item-name span:first-child{
        text-transform: uppercase;
        color: black;
        font-weight: bold;
    }
    div.items > div.item > div.item-info > div.item-name span:last-child{
        font-size: 90%;
        color: grey;
    }


    div.items > div.item > div.item-params{
        display: flex;
        align-items: center;
        color: black;
        margin-right: 1rem;
    }
    div.items > div.item > div.item-params > *:not(:last-child){
        margin-right: 6rem;
    }
    div.items > div.item > div.item-params > input{
        width: 40px;
        border: none;
        text-align: center;
    }
    div.items > div.item > div.item-params > svg{
        height: 20px;
        width: 20px;
    }

    div.priceSum{
        text-align: right;
        margin-right: 6rem;
    }
    div.priceSum > span:last-child{
        color: orange;
    }
</style>