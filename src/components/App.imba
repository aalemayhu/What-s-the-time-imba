var labelForTime = "..."

def onInterval
	var date = Date.new
	let hours = date.getHours()
	let minutes = date.getMinutes()
	let seconds = date.getSeconds()
	labelForTime = "{hours}:{minutes}:{seconds}"

Imba.setInterval 1000, do onInterval

### css
body {
	display: grid;
	width: 100vw;
	height: 100vh;
	justify-content: center;
	align-items: center;
}

body {
  color: gray;
  background: rgb(186, 194, 174);
  text-align: center;
  font-size: 3.5em;

  -moz-user-select: none;
  -khtml-user-select: none;
  -webkit-user-select: none;

  -ms-user-select: none;
  user-select: none;
}

###
export tag App
	def render
		<self>
			<div.content>
				<div.container>
					<h1> "{labelForTime}"