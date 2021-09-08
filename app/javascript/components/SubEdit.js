import React from 'react'

const SubEdit = ({ sub }) => {
  const { name, id} = sub
  const defaultName = name ? name : ""
  //const defaultAge = age ? age : ""
  return (
    <>
      <h1>Edit a Sub</h1>
      <form action={`/subs/${id}`} method="post">
        {/* important hidden field to be able to edit */}
        <input type="hidden" name="_method" value="patch" />
        <input 
          type="text"
          defaultValue={defaultName}
          name="sub[name]"
        />
        {/* <input
            type="text"
            defaultValue={defaultAge}
            name="sub[age]"
          /> */}
          <button type="submit">Update</button>
      </form>
    </>
  )
}

export default SubEdit;