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

//即席でgonオブジェクトをつくる
var gon ={
          leftDays:{
                    "max_left_days":3,
                    "count":{
                             "3日":1,
                             "2日":2,
                             "0日":3
                             }
                    
                  }
         };
 
export default {
  name: 'abandoned-tickets-chart-wrapper',
  components: { AbandonedTicketsChart },
   data: function () {
    return {
    
      parentData1 : Object.keys(gon.leftDays.count),
      parentData2 :Object.values(gon.leftDays.count)
     
    }
  }
}

</script>

<style>
</style>
