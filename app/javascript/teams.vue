<template>
  <div id="teams">
    <ul>
			<li v-for='team in teams' :key='team.id'>
				<img :src="team.logo" width='30' length='30'>
				{{ team.name }}
			</li>
		</ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      teams: []
    }
	},
	created() {
		this.getTeams()
	},
	methods: {
		token() {
			const meta = document.querySelector('meta[name="csrf-token"]')
			return meta ? meta.getAttribute('content') : ''
		},
		getTeams() {
			fetch('/api/teams', {
				method: 'GET',
				headers: {
					'Content-Type': 'application/json; charset=utf-8',
					'X-Requested-With': 'XMLHttpRequest',
					'X-CSRF-Token': this.token()
				},
				credentials: 'same-origin',
				redirect: 'manual'
			})
				.then((response) => response.json())
				.then((json) => {
					this.teams = json
					this.loaded = true
				})
				.catch((error) => {
					console.warn('Failed to parsing', error)
				})
		}
	}
}
</script>

<style scoped>
</style>
