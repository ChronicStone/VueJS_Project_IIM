import Vue from 'vue'
import App from './App.vue'
import router from './router'
import VueTailwind from 'vue-tailwind'
import EasySlider from 'vue-easy-slider'
import VuePaginate from 'vue-paginate'

Vue.use(VuePaginate)
Vue.use(EasySlider)
Vue.use(VueTailwind)
import './assets/styles/index.css';
import './assets/styles/stylesheet.css';

Vue.config.productionTip = false

new Vue({
  router, 
  render: h => h(App),
}).$mount('#app')
