<template>
  <div id="abandoned-tickets-chart">
    <div>
      <abandoned-tickets-chart @click-bar-event="clickBar" :myMessage1="parentData1" :myMessage2="parentData2" class="qh-chart"></abandoned-tickets-chart>
      <abandoned-ticket-list :list-visible="listVisible" :list-data="listData"></abandoned-ticket-list>
    </div>
  </div>
</template>

<script>
import AbandonedTicketsChart from './AbandonedTicketsChart'
import AbandonedTicketList from './AbandonedTicketList'
import axios from 'axios'

// if (process.env.NODE_ENV !== 'production') {
//   console.log('develop')
//   var gon = {
//     leftDays: {
//       max_left_days: 10,
//       count: {
//         '0': 3,
//         '1': 5,
//         '2': 3,
//         '4': 8,
//         '10': 2
//       }
//     }
//   }
// }

export default {
  name: 'abandoned-tickets-chart-wrapper',
  components: {
    AbandonedTicketsChart,
    AbandonedTicketList
  },
  data: function() {
    return {
      listVisible: false,
      listData: [],
      parentData1 : Object.keys(gon.leftDays.count),
      parentData2 :Object.values(gon.leftDays.count)
    }
  },
  methods: {
    async clickBar(leftDays) {
      try {
        const response = await axios.get(location.pathname + '/left_issues?count=' + (leftDays - 1))
        this.listVisible = true

        this.listData = []
        for (let issue of response.data) {
          this.listData.push({
            id: issue.id,
            status: issue.status_id,
            subject: issue.subject,
            assigned: issue.assigned_to_id
          })
        }
      } catch (error) {
        console.error(error)
      }
    }
  }
}

</script>

<style>
.qh-chart {
  margin-bottom: 2em;
}
</style>
