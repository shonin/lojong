<template>
    <div class="hello">
        <h1>{{ currentCard+1 }}</h1>
        <h1>{{ getCardData(currentCard).title }}</h1>
        <p><i>Section: {{ getCardData(currentCard).section }}</i></p>
        <textarea cols=80 rows=30>
          {{ getCardDetail(currentCard) }}
        </textarea>
    </div>
</template>

<script>
    import cardData from '../cardData.js';

    export default {
        name: 'Card',
        props: ['currentCard'],
        methods: {
          getCardData(currentCard) {
            return cardData.length >= this.currentCard ? cardData[this.currentCard] : cardData[0];
          },
          getCardDetail(currentCard) {
            if(localStorage.getItem("lojongDetail"+currentCard)) {
              return localStorage.getItem("lojongDetail"+currentCard);
            } else {
              return this.getCardData(currentCard).detail;
            }
          }
        }
        // data () {
        //   return {
        //     cardData: cardData.length >= this.currentCard ? cardData[this.currentCard] : cardData[0]
        //   }
        // }
    }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    h3 {
        margin: 40px 0 0;
    }

    ul {
        list-style-type: none;
        padding: 0;
    }

    li {
        display: inline-block;
        margin: 0 10px;
    }

    a {
        color: #42b983;
    }
</style>
