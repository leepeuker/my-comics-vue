<template>
  <div class="todo-item">
    <p>
      {{comic.volume.name}} - {{comic.name}}
    </p>
  </div>
</template>

<script>/*eslint no-console: ["error", { allow: ["log", "warn", "error"] }] */
export default {
    name: "ComicItem",
    props: ["comic"]
};
</script>

<style scoped>
  .todo-item {
    background: #f4f4f4;
    padding: 10px;
    border-bottom: 1px #ccc dotted;
  }
</style>