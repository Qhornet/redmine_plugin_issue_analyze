<script>
import { Bar } from 'vue-chartjs'

export default({
  extends: Bar,
  name: 'abandoned-tickets-chart',
  props: ['myMessage1','myMessage2'],
  
  
  data: function() {
      return {
        datacollection: {
        labels: this.myMessage1,
        datasets: [
          {
            label:'test1',
            backgroundColor: '#dda0dd',
            pointBackgroundColor: 'white',
            borderWidth: 1,
            pointBorderColor: '#249EBF',
            data: this.myMessage2
          }
        ]
      },
      options: {
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
        maintainAspectRatio: false
      }
    }
  },
  mounted: function() {
    this.renderChart(this.datacollection, this.options)
  }
  
})
</script>
