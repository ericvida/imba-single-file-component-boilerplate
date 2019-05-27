# import { App } from './components/main/app'
import {Todo} from './store.imba'

tag App
	prop todos
	
	def addTodo
		if @inputData
			@todos.push Todo.new(@inputData)
			@inputData = ""
	def toggleTodo todo
		todo.done = !todo.done
		console.log "Toggle Todo", todo.title
	def render
		<self>
			<form :submit.prevent.addTodo>
				<input[@inputData] placeholder="Add...">
				<button type='submit'> 'Add item'
			<ul> for todo in @todos
				<li .done=(todo.done) :tap.toggleTodo(todo)> 
					<span >
						if (todo.done) 
							'✅'
						else
							''
						todo.title
					<span> 'DELETE' # TODO: Add delete feature

Imba.mount <App todos=[]>




# ------------------------
module:hot.dispose do
	document:body:innerHTML = ''
# ------------------------

sass
	.App
		background-color: #efefef
		min-height: 300px
		form
			display: flex
		form > input
			flex: 1
			height: 4em
			padding-left: 1em * .5
			border: none
			background-color: #ddd
		form > button
			background-color: #223333
			padding: 1em
			border: 0
			color: white
			letter-spacing: 2px
			text-transform: uppercase
		ul
			list-style: none insde none
			margin: 0
			padding: 0
		li
			display: flex
			flex-direction: row
			padding: 0
			margin: 0
			border-bottom: 1px solid #ddd
			padding: 1em
			justify-content: space-between
		li.done
			color: rgba(0,0,0,.3)
			padding-left: 1.2em
