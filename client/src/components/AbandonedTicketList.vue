<template>
  <div>
    <div v-show="listVisible">
      <table class="list issues odd-even">
        <thead>
          <tr>
            <th>#</th>
            <th>ステータス</th>
            <th>題名</th>
            <th>担当者</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>あああ</td>
            <td>あああ</td>
            <td>あああ</td>
            <td>あああ</td>
          </tr>
        </tbody>
      </table>
    </div>
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
