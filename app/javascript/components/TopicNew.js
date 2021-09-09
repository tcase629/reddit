import React from 'react'

const TopicNew = ({ sub, topic }) => {
  const { id } = sub
  const { title, desc } = topic
  const defaultTitle = title ? title : "";
  const defaultTilte = desc ? desc : "";
  return (
    <>
      <h1>New Topic</h1>
      <form action={`/subs/${id}/topics`} method="post">
        <input 
          type="text" 
          defaultValue={defaultTitle}
          name="topic[Title]"  
          required
          placeholder="Title"
        />
        <input 
          type="text" 
          defaultValue={defaultDesc}
          name="topic[desc]" 
          required
          placeholder="Description" 
        />
        <button type="submit">Add</button>
      </form>
    </>
  )
}