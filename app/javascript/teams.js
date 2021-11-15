import { createApp } from 'vue'
import Teams from './teams.vue'

document.addEventListener('DOMContentLoaded', () => {
  const selector = '#js-teams';
  const teams = document.querySelector(selector)
  if (teams) {
    const app = createApp(Teams)
    app.mount(selector)
  }
})
