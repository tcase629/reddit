import React from 'react'

const Sub = ({ sub }) => {
  const { name, id } = sub
  return (
    <>
    <h1>{ name }</h1>
    <br />
    <a href="/">Back</a>
    <br />
    <a href={`/subs/${id}/topics`}>Topics</a>
    </>
  )
}

export default Sub;