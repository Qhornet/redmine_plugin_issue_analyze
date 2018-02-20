<template>
  <div id="abandoned-tickets-chart">
    <h4>放置チケットグラフ</h4>
    <div>
      <abandoned-tickets-chart :myMessage1="parentData1" :myMessage2="parentData2"></abandoned-tickets-chart>
    </div>
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
  components: { AbandonedTicketsChart },
   data: function () {
    return {
    
      parentData1 : Object.keys(gon.leftDays.count),
      parentData2 :Object.values(gon.leftDays.count)
     
    }
}

</script>

<style>
</style>
