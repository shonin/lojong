<template>
    <div id="app">
        <!--<img alt="Vue logo" src="./assets/logo.png">-->
        <button v-on:click="randomCard">Draw Card</button>
        <Card v-bind:currentCard="currentCard" />
    </div>
</template>

<script>
    import Card from './components/Card.vue'

    export default {
        name: 'app',
        components: {
            Card
        },
        methods: {
            randomCard() {
                this.currentCard = Math.floor((Math.random() * 2)); // psuedo random int 0-58
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
