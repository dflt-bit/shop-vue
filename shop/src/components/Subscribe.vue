<template>
    <div class="subscribe">
        <h2>Будь всегда в курсе выгодных предложений</h2>
        <h4>подписывайся и следи за новинками и выгодными предложениями</h4>
        <form>
            <input type="email" placeholder="e-mail"/>
            <button>записаться</button>
        </form>
        <div class="error"></div>
    </div>
</template>

<script>
    export default {
        name: "Subscribe"
    }
</script>

<style scoped>
    div.subscribe{
        padding: 7rem 0 7rem 0;
    }
    h2{
        text-transform: uppercase;
        font-size: 2rem;
    }
    h4{
        font-size: 1rem;
        font-style: italic;
    }
    form{
        display: flex;
        justify-content: center;
        margin: 3rem 0 1rem 0;
    }
    form input{
        width: 40%;
        padding: 15px 5px;
        border: 1px solid grey;
    }
    form button{
        background-color: orange;
        border: 1px solid orange;
        padding: 15px;
        color: white;
    }
</style>