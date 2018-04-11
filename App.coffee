import React, { Component } from 'react'
import { Text, View, TextInput, Button, Alert } from 'react-native'
import { StackNavigator } from 'react-navigation'

class Second extends Component
  constructor: (props) ->
    super props
    @state =
      text: ''

  @navigationOptions =
    title: 'Seco'

  render: ->
    { params } = @props.navigation.state
    if params?
      name = params.name

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
        <Text>{name}</Text>
      </View>
    </View>

class First extends Component
  @navigationOptions =
    title: 'Home'

  render: ->
    { navigate } = @props.navigation
    <View>
      <Button
        title='Go to Second'
        onPress={
          =>
            navigate 'Second',
              name: 'John'
        }
        />
      <Button
        title='Go to Second without name'
        onPress={
          =>
            navigate 'Second'
        }
        />
    </View>

module.exports = StackNavigator
  First:
    screen: First
  Second:
    screen: Second
