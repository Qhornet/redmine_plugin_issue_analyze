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
          <tr v-for="(issue, index) in listData" :key="issue.id" class="issue" :class="{'even': index % 2 === 0, 'odd': index % 2 !== 0}">
            <td class="id"><a :href="'/issues/' + issue.id">{{issue.id}}</a></td>
            <td class="status">{{issue.status_name}}</td>
            <td class="subject"><a :href="'/issues/' + issue.id">{{issue.subject}}</a></td>
            <td class="assigned_to">{{issue.assigned_to_lastname}} {{issue.assigned_to_firstname}}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
export default {
  name: 'abandoned-ticket-list',
  props: ['listVisible', 'listData']
}
</script>
