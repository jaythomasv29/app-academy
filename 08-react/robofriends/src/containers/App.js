import React, { Component } from 'react'
import CardList from "../components/CardList"
import SearchBox from '../components/SearchBox'
import Scroll from '../components/Scroll'
// import { robots } from './robots'
import './App.css'


class App extends Component {
  constructor () {
    super()
    // declare state here / Smart components use CLASS syntax
    this.state = {
      robots: [],
      searchfield: ''
    }
  }
  componentDidMount () {
    fetch( 'https://jsonplaceholder.typicode.com/users' )
      .then( response => response.json() )
      .then( users => this.setState( { robots: users } ) )
  }

  onSearchChange = ( event ) => {
    this.setState( { searchfield: event.target.value } )
  }

  render () {
    const { robots, searchfield } = this.state;  // destructuring this.state to access properties
    const filteredRobots = robots.filter( robot => {
      return robot.name.toLowerCase().includes( searchfield.toLowerCase() )
    } )

    // loading screen in case fetch takes too long
    return ( !robots.length ) ?
      <h1>Loading...</h1> :
      (
        <div className="tc" >
          <h1 className="f1 white">RoboFriends</h1>
          <SearchBox searchChange={this.onSearchChange} />
          <Scroll>
            <CardList robots={filteredRobots} />
          </Scroll>
        </div>
      )

  }

}
export default App