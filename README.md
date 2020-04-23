## remiXML 2.1 Schema

## Elements:

**Metadata**
- **original-title** the title of the original text
- **doc-title>** the title of the document
- **original-writer** the original writer
- **remixer** the person doing the remix
    - @ID, provide an ID for the person doing the remixing
  
**Original**
- **p** paragraph
- **l** line for poetry/lyrics
- **closeRead** The closeRead element is where you can do a close reading of the author's original language and word choice. This is more of a traditional approach to reading, one that asks you to study and analyze specific moments. 
  - @type pattern: Analyze a larger pattern in the language and what this pattern may suggest.
  - @type wordChoice: Analyze specific word choices that the author uses and think about why they made that choice.
  - @type description: Analyze the meaning of a description that the author provides
  - @type inference: Analyze what a specific moment in the text may be insinuating. How did you come to this inference?
  - @type critique: Be critical of how something is represented or shown. Might be useful for problematizing narrative choices.
- **replace** The replace element should only be used to replace a specific word/phrase. You might use this element multiple times if the word appears multiple times throughout the original text.
  - @type pronoun
  - @type adjective
  - @type verb
  - @type noun
- **expand** The expand element will be useful when you want to expand a particular moment. This may be useful if you're interested in a character's backstory or would like to develop on a character who may not appear often.
  - @type background: Explore the background of a particular idea, moment, character, interaction, location, etc.
  - @type moment: Expand on a particular moment in the original text that you would like to see more of.
  - @type description: Expand a particular description.
  - @type character: Expand on a character's actions. Maybe there is a character who you're interested in and would like to develop further. Take a moment they appear and further explore what else they might be doing.
- **restory** The restory element is where you can transform something about the story. You might focus on identity, time, place, and counter-storytelling. This element asks you to answer the question "what if this event/detail in the story was different?"
  - @type identity: There are different types of identity bending, including racebending, queerbending, genderbending, agebending, and more. You might pair this element up with the "replace" element
  - @type AU: AU stands for "alternate universe." You want to explore an alternate universe/location from the original text.
  - @type alternateTimeline: Similar to AU, this asks you to think about an alternate history from the original text.
  - @type parody: Do a satirical transformation.
  - @type counterStory: Shift perspectives and explore the story from a different character's point of view. This is particulary important in thinking about whose stories are untold, misrepresented, or ignored (women, people of color, the LGBTQ comunity, etc).
- **question** The question element is when you may have about the original text.
  - @type content: A question about the content in the story and what is happening.
  - @type hypothetical: A hypothetical question, such as "what if this event was different?" or "how would the characters react if this happened?" This hypothetical question might be followed up with a "restory" or "expand" element.
  - @type critical: >A question that may problematize a particular moment or idea in the original text.
  
**Play**
This is the section where you actually implement your remixes and plays of the story. Think of these as annotations or footnotes that line up with the ways you marked up the text under the "original" section. Remember: make sure your IDs in the play section match up with your IDs in the original section.
- **closeRead** match ID to closeRead in original
- **replace** match ID to replace in original
- **expand** match ID to expand in original
- **restory** match ID to restory in original
- **question** match ID to question in original
