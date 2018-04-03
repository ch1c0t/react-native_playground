import React, { Component } from 'react'
import { Image } from 'react-native'

class Bananas extends Component
  render: ->
    pic =
      uri: 'https://upload.wikimedia.org/wikipedia/commons/d/de/Bananavarieties.jpg'

    <Image source={pic} style={{width: 193, height: 110}}/>

module.exports = Bananas
