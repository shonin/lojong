<template>
    <div>
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
                be here when you come back. There are no plans to allow notes to persist across devices. If there
                is interest in being able to download your data and upload to a different device I may build that, so let me know.
            </li>
            <li>
                The app will also remember what the last card you looked at is. I've set it up this way so that I
                can draw a new card every morning and check in on it throughout the day.
            </li>
            <li>
                The translations of each saying come from Chögyam Trungpa Rinpoche's book "Training the Mind".
            </li>
            <li>
                The pre-populated notes in each section are sometimes excerpts or paraphrases from that same book.
                Other times those notes are my own interpretation of the teachings. They work for me and they are fully
                editable in case they don't work for you.
            </li>
            <li>If you have any questions or comments please feel free to reach out to me at elliot.charney[at]protonmail.com</li>
            <li>JavaScript developers are welcome to make pull requests, <a href="https://github.com/shonin/lojong" target="_blank">see this project on github.</a></li>
            <li>Built with ❤️ and Vue-CLI</li>
        </ul>
    </div>
</template>

<script>
    export default {
        name: 'About',
    }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    h3 {
        margin: 40px 0 0;
    }

    ul {
        padding: 0;
    }

    li {
        margin: 10px;
    }

    a {
        color: #42b983;
    }
</style>
