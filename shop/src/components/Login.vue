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
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: rgba(0,0,0,.2);
    }
    .popup .body{
        padding: 3rem;
        box-shadow: 0 0 5px rgba(0,0,0,.5);
        border-radius: 5px;
        background-color: #fff;
    }
    .popup .body form{
        display: flex;
        flex-direction: column;
    }
    .popup .body form input{
        margin-bottom: 10px;
    }
    .popup .body .error{
        color: red;
        margin-bottom: 10px;
        font-size: .8rem;
    }
</style>