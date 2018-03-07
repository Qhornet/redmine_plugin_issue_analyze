<template>
  <div id="issue-analyze-view">
    <abandoned-tickets-chart-wrapper></abandoned-tickets-chart-wrapper>
  </div>
</template>

<script>
import AbandonedTicketsChartWrapper from './AbandonedTicketsChartWrapper'

export default {
  name: 'issue-analyze-view',
  components: {
    AbandonedTicketsChartWrapper
  }
}
</script>
