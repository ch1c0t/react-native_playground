import React, { Component } from 'react'
import { Text, View, TextInput, Button, Alert } from 'react-native'
import { StackNavigator } from 'react-navigation'

class Greeting extends Component
  constructor: (props) ->
    super props
    @state =
      is_showing_text: yes

    setInterval(
      =>
        if @refs.Ref
          @setState (previousState) =>
            is_showing_text: !previousState.is_showing_text
      1000
    )

  render: ->
    text = if @state.is_showing_text then @props.name else ' '
    <Text ref="Ref">{text}</Text>

class Second extends Component
  constructor: (props) ->
    super props
    @state =
      text: ''

  render: ->
    <View style={{flex: 1}}>
      <View style={{flex: 1, backgroundColor: 'powderblue'}}>
        <TextInput
          style={{height: 40}}
          placeholder='Type something here'
          onChangeText={(text) => @setState text: text}
          />
      </View>
      <View style={{flex: 2, backgroundColor: 'skyblue'}}>
        <Text style={{padding: 10, fontSize: 42}}>
          {@state.text.split('').reverse().join('')}
        </Text>
        <Button
          onPress={
            => Alert.alert 'You tapped the button.'
          }
          title="Press me"
          />
      </View>
      <View style={{flex: 2, backgroundColor: 'steelblue', alignItems: 'center'}}>
        <Greeting name='Rexxar'/>
        <Greeting name='Jaina'/>
        <Greeting name='Valeera2'/>
        <Text>wtf</Text>
      </View>
    </View>

class First extends Component
  render: ->
    { navigate } = @props.navigation
    <Button
      title='Go to Second'
      onPress={
        =>
          navigate 'Second'
      }
      />

module.exports = StackNavigator
  First:
    screen: First
  Second:
    screen: Second
