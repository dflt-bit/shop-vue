<template>
    <div class="subscribe">
        <h2>Будь всегда в курсе выгодных предложений</h2>
        <h4>подписывайся и следи за новинками и выгодными предложениями</h4>
        <form v-show="!successSubmit">
            <input type="email" placeholder="e-mail" v-model="email"/>
            <button @click="subscribe">записаться</button>
        </form>
        <div class="error" v-show="!successSubmit">{{ error }}</div>
        <div class="success" v-show="successSubmit">Вы успешно подписаны</div>
    </div>
</template>

<script>
    export default {
        name: "Subscribe",
        data(){
            return {
                email: '',
                error: '',
                successSubmit: false
            };
        },
        methods: {
            subscribe(){
                fetch(
                    'http://localhost/shop_dev/api/subscribe.php',
                    {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({email: this.email})
                    }
                ).then(res => res.json()).then(res => {
                    console.log(res);

                    if(!!res['error']){
                        this.error = res['error'];
                    }else{
                        if(!!res['success']){
                            this.successSubmit = true;
                        }
                    }
                });
            }
        }
    }
</script>

<style scoped>
    div.subscribe{
        padding: 10rem 0 10rem 0;
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
        border-color: orange;
        padding: 15px;
        color: white;
    }
    div.success{
        color: rgb(32, 210, 32);
        font-size: 1.2rem;
        font-style: italic;
    }
    div.error{
        color: red;
        font-style: italic;
    }
</style>