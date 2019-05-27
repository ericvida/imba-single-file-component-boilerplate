import './app.scss'

tag Layout
	def render
		<self>
			<header>
				<content[:header]>
			<main>
				<h1> "KEEP CLICKIN\'"
				<content>
			<footer>	
				<content[:footer]>

export tag App
	var state = false

	def render
		<self>
			<form>
				<input placeholder="Add...">
				<button type='submit'> 'Add item'
sass
	header
		background-color: turquoise
	footer
		background-color: tomato

# ------------------------
module:hot.dispose do
	document:body:innerHTML = ''
# ------------------------
