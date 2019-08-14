<template>
    <div id="app">
        <!--<img alt="Vue logo" src="./assets/logo.png">-->
        <div id="helpMenu" v-on:click="toggleAbout">
            <!--<h4 v-if="cardOn">About / Help</h4>-->
            <h2 v-if="cardOn">&#9432;</h2>
            <h2 v-else>X</h2>
        </div>
        <div v-if="cardOn">
            <button v-on:click="randomCard">Draw Random Card</button>
            <Card v-bind:currentCard="currentCard" />
        </div>
        <div id="about" v-else>
            <h1>About / Help</h1>
            <p>
                Thanks for trying out my Lojong study app. I made it to help myself and fellow sangha members study
                the sayings of Lojong. Here's a few things you should know:
            </p>
            <ul>
                <li>
                    All changes you make to the notes of each card will persist in your browser's local storage. There is no
                    save button, this is done automatically.
                </li>
                <li>
                    This means that as long as you always use the same browser on the same device, your notes will
                    be here when you come back. There are no plans to allow notes to persist across devices.
                </li>
                <li>
                    The app will also remember what the last card you looked at is. I've set it up this way so that I
                    can draw a new card every morning and check in on it throughout the day.
                </li>
                <li>
                    The translations of each saying come from Chögyam Trungpa Rinpoche's book "Training the Mind".
                </li>
                <li>
                    The pre-populated notes in each section are excerpts or paraphrases from that same book that I have
                    input here for my own study.
                </li>
                <li>If you have any questions or comments please feel free to reach out to me at elliot.charney[at]protonmail.com</li>
                <li>JavaScript developers are welcome to make pull requests, <a href="https://github.com/shonin/lojong" target="_blank">see this project on github.</a></li>
            </ul>
        </div>
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
                this.currentCard = Math.floor((Math.random() * 7)); // psuedo random int 0-58
                localStorage.setItem('currentCard', this.currentCard);
            },
            toggleAbout() {
                this.cardOn = !this.cardOn;
            }
        },
        data () {
            return {
                currentCard: localStorage.getItem("currentCard"),
                cardOn: true
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
