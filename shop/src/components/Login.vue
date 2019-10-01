<template>
    <div class="login">
        <span v-on:click="togglePopup()" v-if="!isLogin">Войти</span>
        <span v-else>{{ name }}</span>
        <div class="popup" v-show="showPopup">
            <div class="body">
                <div class="error">{{ error }}</div>
                <form>
                    <input type="text" placeholder="login" v-model="login"/>
                    <input type="password" placeholder="password" v-model="password"/>

                    <button @click="signIn()">Войти</button>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Login",
        data(){
            return {
                showPopup: false,
                login: '',
                password: '',
                isLogin: false,
                name: '',
                error: ''
            };
        },
        methods: {
            signIn(){
                fetch(
                    'http://localhost/shop_dev/api/login.php',
                    {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            login: this.login,
                            password: this.password
                        })
                    }
                ).then(res => res.json()).then(res => {
                    if(!res['error']){
                        this.name = res['name'];
                        this.isLogin = true;
                        this.showPopup = false;
                        this.error = '';
                    }else{
                        this.error = res['error'];
                    }
                });
            },
            togglePopup(){
                this.showPopup = !this.showPopup;
            }
        }
    }
</script>

<style scoped>
    .popup{
        position: fixed;
        z-index: 99;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: rgba(0,0,0,.3);
    }
    .popup .body{
        padding: 3rem;
        box-shadow: 0 0 2px rgba(0,0,0,.5);
        background-color: #fff;
        border: 1px solid black;
    }
    .popup .body form{
        display: flex;
        flex-direction: column;
    }
    .popup .body form input{
        margin-bottom: 10px;
        padding: 5px;
        border: 1px solid grey;
        outline: none;
    }
    .popup .body form button{
        color: white;
        background-color: black;
        padding: 5px;
        border: 1px solid black;
        outline: none;
    }
    .popup .body .error{
        color: red;
        margin-bottom: 10px;
        font-size: .8rem;
    }
</style>