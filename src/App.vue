<template>
    <div id="app">
        <!--<img alt="Vue logo" src="./assets/logo.png">-->
        <button v-on:click="randomCard">Draw Card</button>
        <HelloWorld :currentCard="currentCard" />
    </div>
</template>

<script>
    import HelloWorld from './components/HelloWorld.vue'

    export default {
        name: 'app',
        components: {
            HelloWorld
        },
        methods: {
            randomCard() {
                this.currentCard = Math.floor((Math.random() * 59) + 1);
                localStorage.setItem('currentCard', this.currentCard);
            }
        },
        data () {
            return {
                currentCard: localStorage.getItem("currentCard")
            }
        }
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
