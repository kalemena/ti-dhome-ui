<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <swiper :options="swiperOption" ref="mySwiper">
      <!-- slides -->
      <swiper-slide>Map Ground floor</swiper-slide>
      <swiper-slide>Map First Floor</swiper-slide>
      <swiper-slide>Energy</swiper-slide>
      <!-- Optional controls -->
      <div class="swiper-pagination"  slot="pagination"></div>
      <div class="swiper-scrollbar"   slot="scrollbar"></div>
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
      msg: 'Ti-DHome UI'
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
</style>
