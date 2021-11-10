import { createApp } from 'vue'
import App from './teams.vue'

document.addEventListener('DOMContentLoaded', () => {
  const selector = '#js-teams';
  if(document.querySelector(selector)){
    createApp(App).mount(selector);
  }
})
