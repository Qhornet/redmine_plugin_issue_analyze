<template>
  <div id="abandoned-tickets-chart">
    <abandoned-tickets-chart></abandoned-tickets-chart>
  </div>
</template>

<script>
import AbandonedTicketsChart from './AbandonedTicketsChart'

if (process.env.NODE_ENV !== 'production') {
  console.log('develop')
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
    AbandonedTicketsChart
  },
  mounted: function() {
    console.log(gon.leftDays)
  }
}
</script>

<style>
</style>
