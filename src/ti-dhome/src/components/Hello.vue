<template>
  <div class="hello">
    <h1>{{ msg }}</h1>    
    <swiper :options="swiperOption" ref="mySwiper">
      <!-- slides -->
      <swiper-slide>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1024 768" preserveAspectRatio="xMidYMid meet">
  <defs>
    <filter id="dropshadow" height="130%">
      <feGaussianBlur in="SourceAlpha" stdDeviation="3"/> 
      <feOffset dx="2" dy="2" result="offsetblur"/> 
      <feMerge> 
        <feMergeNode/>
        <feMergeNode in="SourceGraphic"/> 
      </feMerge>
    </filter>
  </defs>
  <image opacity=".8" x="0" y="0" width="1024" height="768" xlink:href="/static/maison-rdc-mini.png" />
  <circle v-for="heater in heaters" v-if="heater.level === '0'" :id="heater.id" :cx="heater.x" :cy="heater.y" r="5"/>
  <text v-for="sensor in sensors" v-if="sensor.level === '0'" :id="sensor.id" :x="sensor.x" :y="sensor.y">{{ sensor.value }}</text>
</svg>
      </swiper-slide>
      <swiper-slide>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1024 768" preserveAspectRatio="xMidYMid meet">
  <defs>
    <filter id="dropshadow" height="130%">
      <feGaussianBlur in="SourceAlpha" stdDeviation="3"/> 
      <feOffset dx="2" dy="2" result="offsetblur"/> 
      <feMerge> 
        <feMergeNode/>
        <feMergeNode in="SourceGraphic"/> 
      </feMerge>
    </filter>
  </defs>
  <image opacity=".8" x="0" y="0" width="1024" height="768" xlink:href="/static/maison-1er-mini.png" />
  <circle v-for="heater in heaters" v-if="heater.level === '0'" :id="heater.id" :cx="heater.x" :cy="heater.y" r="5"/>
  <text v-for="sensor in sensors" v-if="sensor.level === '1'" :id="sensor.id" :x="sensor.x" :y="sensor.y">{{ sensor.value }}</text>
</svg>
      </swiper-slide>
      <!-- Optional controls -->
      <!--<div class="swiper-pagination"  slot="pagination"></div>
      <div class="swiper-scrollbar"   slot="scrollbar"></div>-->
    </swiper>
  </div>
</template>

<script>
import { swiper, swiperSlide } from 'vue-awesome-swiper'

export default {
  name: 'hello',
  components: {
    swiper,
    swiperSlide
  },
  data () {
    return {
      msg: 'Ti-DHome UI',
      heaters: [
        { level: '0', id: '6', x: '810', y: '400', text: 'Ch.Bas' },
        { level: '0', id: '7', x: '680', y: '370', text: 'SdB-Bas' },
        { level: '0', id: '15', x: '600', y: '410', text: 'Hall' },
        { level: '0', id: '14', x: '620', y: '480', text: 'Salon' },
        { level: '1', id: '1', x: '290', y: '470', text: 'Bureau' },
        { level: '1', id: '3', x: '740', y: '570', text: 'Ch.Damien' },
        { level: '1', id: '0', x: '340', y: '190', text: 'Ch.Jeux' },
        { level: '1', id: '5', x: '490', y: '310', text: 'Mezanine' },
        { level: '1', id: '10', x: '480', y: '570', text: 'Ch.Léna' },
        { level: '1', id: '4', x: '770', y: '310', text: 'SdB-Haut' }
      ],
      sensors: [
        { level: '0', id: '00008', entry: '2', type: 'temperature', x: '720', y: '380', value: 'N/A', text: 'Ch.Bas-Temp' },
        { level: '0', id: '00052', entry: '2', type: 'temperature', x: '450', y: '380', value: 'N/A', text: 'Hall-Temp' },
        { level: '0', id: '00052', entry: '3', type: 'humidity', x: '450', y: '420', value: 'N/A', text: 'Hall-Humi' },
        { level: '0', id: '00006', entry: '6', type: 'temperature', x: '500', y: '520', value: 'N/A', text: 'Salon-Temp-1' },
        { level: '0', id: '00006', entry: '4', type: 'temperature', x: '640', y: '520', value: 'N/A', text: 'Salon-Temp-2' },
        { level: '0', id: '00050', entry: '2', type: 'temperature', x: '500', y: '580', value: 'N/A', text: 'Salon-Temp-3' },
        { level: '0', id: '00050', entry: '4', type: 'temperature', x: '640', y: '580', value: 'N/A', text: 'Salon-Temp-4' },
        { level: '0', id: '00050', entry: '3', type: 'humidity', x: '500', y: '580', value: 'N/A', text: 'Salon-Humi' },
        { level: '0', id: '00009', entry: '2', type: 'temperature', x: '360', y: '230', value: 'N/A', text: 'Garage-Temp' },
        { level: '0', id: '00051', entry: '2', type: 'temperature', x: '50', y: '600', value: 'N/A', text: 'Outside-Temp' },
        { level: '0', id: '00051', entry: '3', type: 'humidity', x: '50', y: '640', value: 'N/A', text: 'Outside-Humi' },
        { level: '0', id: '00006', entry: '7', type: 'pressure', x: '50', y: '680', value: 'N/A', text: 'Salon-Pressure' },
        { level: '0', id: '54272', entry: '1', type: 'rain', x: '50', y: '720', value: 'N/A', text: 'Outside-Rain' },
        { level: '1', id: '00053', entry: '2', type: 'temperature', x: '260', y: '380', value: 'N/A', text: 'Bureau-Temp' },
        { level: '1', id: '02431', entry: '1', type: 'temperature', x: '260', y: '340', value: 'N/A', text: 'Bureau-Temp' },
        { level: '1', id: '00053', entry: '1', type: 'humidity', x: '260', y: '420', value: 'N/A', text: 'Bureau-Humi' },
        { level: '1', id: '00004', entry: '4', type: 'temperature', x: '740', y: '470', value: 'N/A', text: 'Ch.Damien-Temp' },
        { level: '1', id: '00005', entry: '4', type: 'temperature', x: '350', y: '200', value: 'N/A', text: 'Ch.Jeux-Temp' },
        { level: '1', id: '00007', entry: '4', type: 'temperature', x: '540', y: '320', value: 'N/A', text: 'Mezanine-Temp' },
        { level: '1', id: '00010', entry: '2', type: 'temperature', x: '450', y: '470', value: 'N/A', text: 'Ch.Léna-Temp' },
        { level: '1', id: '00012', entry: '2', type: 'temperature', x: '780', y: '260', value: 'N/A', text: 'SdB-H-Temp' },
        { level: '1', id: '00012', entry: '3', type: 'humidity', x: '780', y: '300', value: 'N/A', text: 'SdB-H-Humi' },
        { level: '1', id: '00012', entry: '4', type: 'light', x: '780', y: '340', value: 'N/A', text: 'SdB-H-Light' }
      ]
    }
  }
}
</script>
    
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}

text,circle {
    stroke: #660000;
    fill:   #FF1200;
    font-family: sans-serif;
    font-size: 36px;
    filter: url(#dropshadow);
}

circle {
    cursor:pointer
}
</style>
