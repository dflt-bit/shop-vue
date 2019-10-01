<template>
  <div id="app">
    <HeaderComponent></HeaderComponent>
    <router-view/>
    <Footer></Footer>
  </div>
</template>

<script>
  import HeaderComponent from './components/HeaderComponent';
  import Footer from './components/Footer';

  export default {
    name: 'App',
    components: {HeaderComponent,Footer}
  }
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
