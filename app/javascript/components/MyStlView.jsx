import React from 'react'
import STLViewer from 'stl-viewer'

export default function MyStlView(props) {
  return <STLViewer
    url={props.url}
    width={props.width}
    height={props.height}
    modelColor='#B92C2C'
    backgroundColor='#EAEAEA'
    rotate={props.rotate}
    orbitControls={props.orbitControls}
    />;
}
