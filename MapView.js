/* eslint-disable no-use-before-define */

import React from 'react'
import { requireNativeComponent } from 'react-native'

const RNTMap = requireNativeComponent('RNTMap', MapView)

const MapView = props => <RNTMap {...props} xxx="xxx" />

MapView.defaultProps = {
  /**
    * 当这个属性被设置为true，并且地图上绑定了一个有效的可视区域的情况下，
    * 可以通过捏放操作来改变摄像头的偏转角度。
    * 当这个属性被设置成false时，摄像头的角度会被忽略，地图会一直显示为俯视状态。
    */
  pitchEnabled: true,
}

export default MapView
