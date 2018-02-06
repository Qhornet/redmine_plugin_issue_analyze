<template>
  <div id="issue-analyze-view">
    <h3>{{ title }}</h3>
    <h4>放置チケットグラフ</h4>
    <abandoned-tickets-chart-wrapper></abandoned-tickets-chart-wrapper>
  </div>
</template>

<script>
import AbandonedTicketsChartWrapper from './AbandonedTicketsChartWrapper'

export default {
  name: 'issue-analyze-view',
  components: {
    AbandonedTicketsChartWrapper
  },
  data: function() {
    return {
      title: 'チケット分析'
    }
  }
}
</script>

<style lang="css">
</style>
