<template>
  <div id="redmine_plugin_issue_analyze_app_app">
    <h3>{{ title }}</h3>
    <abandoned-tickets-chart-wrapper></abandoned-tickets-chart-wrapper>
  </div>
</template>

<script>
import AbandonedTicketsChartWrapper from './components/AbandonedTicketsChartWrapper'

export default {
  name: 'app',
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

<style>
</style>
