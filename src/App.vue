<template>
    <div id="app">
        <div id="helpMenu" v-on:click="toggleAbout">
            <h2 v-if="cardOn">&#9432;</h2>
            <h2 v-else>X</h2>
        </div>
        <div v-if="cardOn">
            <button v-on:click="prevCard">&larr;</button>
            <button v-on:click="randomCard">Random</button>
            <button v-on:click="nextCard">&rarr;</button>
            <Card v-bind:currentCard="currentCard" />
        </div>
        <div id="about" v-else>
            <About />
        </div>
    </div>
</template>

<script>
    import Card from './components/Card.vue';
    import About from './components/About.vue';

    export default {
        name: 'app',
        components: {
            Card, About
        },
        methods: {
            randomCard() {
                this.currentCard = Math.floor((Math.random() * this.cardLimit)); // psuedo random int 0-58
                localStorage.setItem('currentCardDev', this.currentCard);
            },
            nextCard() {
                console.log(this.currentCard, this.cardLimit);
                if (this.currentCard < this.cardLimit-1) {
                    this.currentCard += 1;
                    localStorage.setItem('currentCardDev', this.currentCard);
                }
            },
            prevCard() {
                if (this.currentCard > 0) {
                    this.currentCard -= 1;
                    localStorage.setItem('currentCardDev', this.currentCard);
                }
            },
            toggleAbout() {
                this.cardOn = !this.cardOn;
            }
        },
        data () {
            return {
                currentCard: localStorage.getItem("currentCardDev").length ? localStorage.getItem("currentCardDev") : 0,
                cardOn: true,
                cardLimit: 7
            }
        }
    }
</script>

<style>
    body {
        background-color: #222;
    }
    #app {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: snow;
        max-width: 800px;
        margin: 5px auto
    }
    #helpMenu {
        text-align: right;
        cursor: pointer;
    }
    h2 {
        margin: 0 20px;
    }
    #about {
        margin: 0 auto;
        max-width: 500px;
        text-align: left;
    }
    button {
        padding: 15px 40px;
        color: whitesmoke;
        background-color: #1b1e21;
        font-size: medium;
        font-weight: bold;
    }
</style>
