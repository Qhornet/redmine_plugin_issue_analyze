<template>
  <div id="issue-analyze-view">
    <h3>{{ title }}</h3>
    <h4>放置チケットグラフ</h4>
    <select :model="countSelected">
      <option v-for="count in counts" value="count">{{ count }}日</option>
    </select>
    <abandoned-tickets-chart-wrapper></abandoned-tickets-chart-wrapper>
  </div>
</template>

<script>
import AbandonedTicketsChartWrapper from './AbandonedTicketsChartWrapper'

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
  name: 'issue-analyze-view',
  components: {
    AbandonedTicketsChartWrapper
  },
  data: function() {
    const counts = ['-'].concat(Object.keys(gon.leftDays.count))
    return {
      title: 'チケット分析',
      countSelected: '-',
      counts: counts
    }
  }
}
</script>
