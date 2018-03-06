<script>
import { Bar } from 'vue-chartjs'

export default({
  extends: Bar,
  name: 'abandoned-tickets-chart',
  props: ['myMessage1','myMessage2'],
  mounted: function() {
    const datacollection = {
      labels: this.myMessage1,
      datasets: [{
        label:'test1',
        backgroundColor: '#dda0dd',
        pointBackgroundColor: 'white',
        borderWidth: 1,
        pointBorderColor: '#249EBF',
        data: this.myMessage2
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
        self.onClick(parseInt(self.myMessage1[el[0]._index]))
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
