<script>
import { Bar } from 'vue-chartjs'

export default({
  extends: Bar,
  name: 'abandoned-tickets-chart',
  data: function() {
    return {
      data: [40, 20, 30]
    }
  },
  mounted: function() {
    const datacollection = {
      labels: ['January', 'February', 'March'],
      datasets: [{
          label: 'Data One',
          backgroundColor: '#f87979',
          pointBackgroundColor: 'white',
          borderWidth: 1,
          pointBorderColor: '#249EBF',
          data: this.data
      }]
    }

    const self = this
    const options = {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: true
          },
          gridLines: {
            display: true
          }
        }],
        xAxes: [ {
          gridLines: {
            display: false
          }
        }]
      },
      responsive: true,
      maintainAspectRatio: false,
      onClick: function(e, el) {
        if (! el || el.length === 0) return
        self.onClick(self.data[el[0]._index])
      }
    }
    this.renderChart(datacollection, options)
  },
  methods: {
    onClick: function(month) {
      this.$emit('click-bar-event', month)
    }
  }
})
</script>
