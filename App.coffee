import React, { Component } from 'react'
import { Text, View } from 'react-native'

class Greeting extends Component
  constructor: (props) ->
    super props
    @state =
      is_showing_text: yes

    setInterval(
      =>
        @setState (previousState) =>
          is_showing_text: !previousState.is_showing_text
      1000
    )

  render: ->
    text = if @state.is_showing_text then @props.name else ' '
    <Text>{text}</Text>

module.exports = class App extends Component
  render: ->
    <View style={{flex: 1}}>
      <View style={{flex: 1, backgroundColor: 'powderblue'}}/>
      <View style={{flex: 2, backgroundColor: 'skyblue'}}/>
      <View style={{flex: 3, backgroundColor: 'steelblue', alignItems: 'center'}}>
        <Greeting name='Rexxar'/>
        <Greeting name='Jaina'/>
        <Greeting name='Valeera2'/>
        <Text>wtf</Text>
      </View>
    </View>
