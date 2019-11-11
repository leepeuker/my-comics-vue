<template>
  <div>
    <form @submit.prevent="addComic">
      <input name="comicVineId" placeholder="Enter ComicVine Id..." type="text" v-model="comicVineId">
      <input class="btn" type="submit" value="Add">
    </form>
  </div>
</template>

<script>/*eslint no-console: ["error", { allow: ["log", "warn", "error"] }] */
export default {
    name: "AddComic",
    data() {
        return {
            comicVineId: ''
        }
    },
    props: ["comic"],
    methods: {
        addComic() {
            this.$emit('add-comic', this.comicVineId);
            this.comicVineId = '';
        }
    }
};
</script>

<style scoped>
  form {
    display: flex;
  }

  input[type="text"] {
    flex: 10;
    padding: 5px;
  }

  input[type="submit"] {
    flex: 2;
  }
</style>