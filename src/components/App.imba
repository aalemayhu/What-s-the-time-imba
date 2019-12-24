### css
body {
	margin: 0;
	padding: 0;
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
	prop labelForTime default: '...'

	def leadingZero n
		return "0{n}" unless n > 9
		n

	def setup
		Imba.setInterval 1000, do
			var date = Date.new
			let hours = leadingZero(date.getHours())
			let minutes = leadingZero(date.getMinutes())
			let seconds = leadingZero(date.getSeconds())
			labelForTime = "{hours}:{minutes}:{seconds}"

	def render
		<self>
			<div.content>
				<div.container>
					<h1> "{labelForTime}"