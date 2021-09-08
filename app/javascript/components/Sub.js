import React from 'react'

const Sub = ({ sub }) => {
  const { name } = sub
  return (
    <>
    <h1>{ name }</h1>
    <br />
    <a href="/">Back</a>
    </>
  )
}

export default Sub;