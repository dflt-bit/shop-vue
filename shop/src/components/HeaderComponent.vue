<template>
    <header>
        <div class="logo">SH</div>
        <nav>
            <a>Женщинам</a>
            <a>Мужчинам</a>
            <a>Детям</a>
            <a>Новинки</a>
            <a>О нас</a>
        </nav>
        <div class="user">
            <Login></Login>
            <div>Корзина(0)</div>
        </div>
    </header>
</template>

<script>
    import Login from './Login';

    export default {
        name: 'HeaderComponent',
        components: {Login}
    };
</script>

<style scoped>
    header{
        display: flex;
    }
    .logo{
        padding: 20px;
        background-color: #000;
        color: white;
        margin-right: 3rem;
    }
    nav{
        display: flex;
        align-items: center;
    }
    nav a:not(:last-child){
        margin-right: 15px;
    }
    .user{
        margin-left: auto;
        display: flex;
        align-items: center;
    }
    .user div{
        margin-right: 20px;
    }
</style>