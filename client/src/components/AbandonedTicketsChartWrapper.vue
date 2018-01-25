<template>
  <div id="abandoned-tickets-chart">
    <h4>放置チケットグラフ</h4>
    <div>
      <abandoned-tickets-chart></abandoned-tickets-chart>
    </div>
  </div>
</template>

<script>
import AbandonedTicketsChart from './AbandonedTicketsChart'

export default {
  name: 'abandoned-tickets-chart-wrapper',
  components: {
    AbandonedTicketsChart
  }
}
</script>

<style>
</style>
