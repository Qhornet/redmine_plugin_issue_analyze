<template>
  <div id="abandoned-tickets-chart">
    <abandoned-tickets-chart @click-bar-event="clickBar"></abandoned-tickets-chart>
    <abandoned-ticket-list :list-visible="listVisible"></abandoned-ticket-list>
  </div>
</template>

<script>
import AbandonedTicketsChart from './AbandonedTicketsChart'
import AbandonedTicketList from './AbandonedTicketList'

if (process.env.NODE_ENV === 'development') {
  var gon = {
    leftDays: {
      max_left_days: 10,
      count: {
        '0': 3,
        '1': 5,
        '2': 3,
        '4': 8,
        '10': 2
      }
    }
  }
}

export default {
  name: 'abandoned-tickets-chart-wrapper',
  components: {
    AbandonedTicketsChart,
    AbandonedTicketList
  },
  data: function() {
    return {
      listVisible: false
    }
  },
  methods: {
    clickBar: function(leftDays) {
      console.log(leftDays)
      if (leftDays === 20) {
        this.listVisible = true
      } else {
        this.listVisible = false
      }
    }
  }
}
</script>

<style>
</style>
