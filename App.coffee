import React, { Component } from 'react'
import { Text, View } from 'react-native'

class Greeting extends Component
  render: ->
    <Text>Hello, {@props.name}!</Text>

module.exports = class App extends Component
  render: ->
    <View style={{alignItems: 'center'}}>
      <Greeting name='Rexxar'/>
      <Greeting name='Jaina'/>
      <Greeting name='Valeera'/>
    </View>
