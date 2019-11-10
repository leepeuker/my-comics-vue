<template>
  <div>
    <div v-bind:key="comic.id" v-for="comic in comics">
      <ComicItem v-bind:comic="comic"/>
    </div>
  </div>
</template>

<script>/*eslint no-console: ["error", { allow: ["log", "warn", "error"] }] */
    import ComicItem from './ComicItem.vue';
    import axios from 'axios';

    export default {
        name: "Comics",
        components: {
            ComicItem
        },
        data() {
            return {
                comics: []
            }
        },
        created() {
            axios.get('http://192.168.0.8/issues')
                .then(res => this.comics = res.data)
                .catch(err => console.error(err))
        },
    }
</script>

<style scoped>
</style>