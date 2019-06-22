var labelForTime = "..."

def onInterval
	var date = Date.new
	let hours = date.getHours()
	let minutes = date.getMinutes()
	let seconds = date.getSeconds()
	labelForTime = "{hours}:{minutes}:{seconds}"

Imba.setInterval 1000, do onInterval

export tag App
	def render
		<self>
			<div.content>
				<div.container>
					<h1> "{labelForTime}"