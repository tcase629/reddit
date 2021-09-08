import React from 'react'

const SubNew = ({ sub }) => {
  // in case of failed form still save the
  // users input
  // continue the pattern for all fields
  const { name } = sub
  const defaultName = name ? name : ''
  return (
    <>
      <h1>New Sub Form</h1>
      <form action="/subs" method="post">
        <input 
          type="text" 
          defaultValue={defaultName}
          name="sub[name]"

          //optional
          required
          placeholder="Name"
        />
        <button type='submit'>Add Sub</button>
      </form>
    </>
  )
}

export default SubNew;