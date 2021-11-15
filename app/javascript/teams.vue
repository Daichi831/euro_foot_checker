<template> 
  <div id="teams">
		<div class="leagues">
			<li v-on:click="change('1')" v-bind:class="{'active': isActive === '1'}">プレミアリーグ</li>
			<li v-on:click="change('2')" v-bind:class="{'active': isActive === '2'}">リーグアン</li>
			<li v-on:click="change('3')" v-bind:class="{'active': isActive === '3'}">ブンデスリーガ</li>
			<li v-on:click="change('4')" v-bind:class="{'active': isActive === '4'}">セリエA</li>
			<li v-on:click="change('5')" v-bind:class="{'active': isActive === '5'}">リーガ</li>
    </div>

		<ul class="premier" v-for='team in premierTeams' :key='team.id'>
			<li v-if="isActive === '1'">
				<img :src="team.logo" width='30' length='30'>
				{{ team.name }}
			</li>
		</ul>
		<ul class="league1" v-for='team in league1Teams' :key='team.id'>
			<li v-if="isActive === '2'">
				<img :src="team.logo" width='30' length='30'>
				{{ team.name }}
			</li>
		</ul>
		<ul class="bundes" v-for='team in bundesTeams' :key='team.id'>
			<li v-if="isActive === '3'">
				<img :src="team.logo" width='30' length='30'>
				{{ team.name }}
			</li>
		</ul>
		<ul class="seriea" v-for='team in serieaTeams' :key='team.id'>
			<li v-if="isActive === '4'">
				<img :src="team.logo" width='30' length='30'>
				{{ team.name }}
			</li>
		</ul>
		<ul class="liga" v-for='team in ligaTeams' :key='team.id'>
			<li v-if="isActive === '5'">
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
			premierTeams: [],
			league1Teams: [],
			bundesTeams: [],
			serieaTeams: [],
			ligaTeams: [],
			isActive: '1'
    }
	},
	created() {
		this.getTeams()
	},
	methods: {
		change(num) {
			this.isActive = num
		},
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
					this.premierTeams = json.premier_teams
					this.league1Teams = json.league1_teams
					this.bundesTeams = json.bundes_teams
					this.serieaTeams = json.seriea_teams
					this.ligaTeams = json.liga_teams
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
  ul{
    margin: 0;
    padding: 0;
  }
  li{
    list-style: none;
  }
  .leagues {
    overflow: hidden;
  }
  .leagues li,
  .leagues label {
    float: left;
    padding: 10px 20px;
    border: 1px solid #ccc;
    cursor: pointer;
    transition: .3s;
  }
  .premier, .league1, .bundes, .seriea, .liga {
    overflow: hidden;
  }
  .premier li, .league1 li, .bundes li, .seriea li, .liga li {
    width: 579px;
    padding: 20px;
    border: 1px solid #ccc;
	}
</style>
