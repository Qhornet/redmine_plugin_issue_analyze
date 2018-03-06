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
        label:'放置チケット',
        backgroundColor: "rgba(75,192,192,0.4)",
        pointBackgroundColor: "rgba(75,192,192,1)",
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
          },
          scaleLabel: {
            display: true,
            labelString: 'チケット数',
            fontSize: 14
          }
        }],
        xAxes: [ {
          ticks: {
            callback: function(value) { return value = value + '日'}
          },
          gridLines: {
            display: false
          },
           scaleLabel: {
            display: true,
            labelString: '放置日数',
            fontSize: 14
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
