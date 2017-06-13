import Vue from 'vue'
import VueAwesomeSwiper from 'vue-awesome-swiper'
import Router from 'vue-router'
import Hello from '@/components/Hello'

require('swiper/dist/css/swiper.css')

Vue.use(Router)
Vue.use(VueAwesomeSwiper)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Hello',
      component: Hello
    }
  ]
})
