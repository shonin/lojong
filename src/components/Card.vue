<template>
    <div class="hello">
        <h3>{{ getCardData(currentCard).cardNumber }}</h3>
        <p><i>{{ getCardData(currentCard).section }}</i></p>
        <h1>{{ getCardData(currentCard).title }}</h1>
        <textarea id="detail" v-model="detail" cols=70 rows=30></textarea>
    </div>
</template>

<script>
    import cardData from '../cardData.js';

    export default {
        name: 'Card',
        props: ['currentCard'],
        methods: {
          getCardData(currentCard) {
            return cardData.length >= currentCard ? cardData[currentCard] : cardData[0];
          },
          getCardDetail(currentCard) {
            if(localStorage.getItem("lojongDetailDev"+currentCard)) {
              return localStorage.getItem("lojongDetailDev"+currentCard);
            } else {
              return this.getCardData(currentCard).detail;
            }
          }
        },
        data () {
          return {
            detail: null
          }
        },
        watch: {
            currentCard: {
                immediate: true,
                handler() {
                    this.detail = this.getCardDetail(this.currentCard);
                }
            },
            detail: {
                immediate: true,
                handler(value) {
                    localStorage.setItem("lojongDetailDev"+this.currentCard, value);
                }
            }
        }
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

    textarea {
        font-size: medium;
        max-width: 100%;
        color: #fff;
        background-color: #333;
    }
    label {
        display: block;
    }
</style>
