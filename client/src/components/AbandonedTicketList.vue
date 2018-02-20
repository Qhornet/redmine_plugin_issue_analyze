<template>
  <div>
    <div v-show="listVisible">Hello</div>
  </div>
</template>

<script>
export default {
  name: 'abandoned-ticket-list',
  props: ['listVisible']
}
</script>

<style lang="css">
</style>
