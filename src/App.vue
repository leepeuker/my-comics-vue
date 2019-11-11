<template>
  <div id="app">
    <Header/>
    <AddComic v-on:add-comic="addComic"/>
    <Comics/>
  </div>
</template>

<script>/*eslint no-console: ["error", { allow: ["log", "warn", "error"] }] */
import Comics from './components/Comics';
import AddComic from './components/AddComic.vue';
import Header from './components/layout/Header';
import axios from 'axios';

export default {
    name: 'app',
    components: {
        Header,
        AddComic,
        Comics
    },
    methods: {
        addComic(comicVineId) {
            axios.post('http://192.168.0.8/comics', {comicVineId: comicVineId})
                .then(res => {
                    console.log(res.data)
                })
                .catch(err => console.error(err))
        }
    }
}
</script>

<style>
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

  body {
    font-family: Arial, Helvetica, sans-serif;
    line-height: 1.4;
  }

  .btn {
    display: inline-block;
    border: none;
    background: #555;
    color: #fff;
    padding: 7px 20px;
    cursor: pointer;
  }

  .btn:hover {
    background: #666;
  }
</style>
