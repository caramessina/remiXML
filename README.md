## remiXML 2.1 Schema

## Elements:

**\Metadata**\
- <original-title> the title of the original text
- <doc-title> the title of the document
- <original-writer> the original writer
- <remixer> the person doing the remix
    - @ID, provide an ID for the person doing the remixing
  
**\Original**\
- <p> paragraph
- <closeRead> The closeRead element is where you can do a close reading of the author's original language and word choice. This is more of a traditional approach to reading, one that asks you to study and analyze specific moments. 
  - @type pattern: Analyze a larger pattern in the language and what this pattern may suggest.
  - @type wordChoice: Analyze specific word choices that the author uses and think about why they made that choice.
- <replace> The replace element should only be used to replace a specific word/phrase. You might use this element multiple times if the word appears multiple times throughout the original text.
                <transform>
                    playID
                    remixerID
                <expand>
                    playID
                    remixerID
                <analysis>
                    playID
                    remixerID
                <question>
                    playID
                    remixerID
                <feedback>
                    playID
                    remixerID
                <replace>
                    playID
                    remixerID
            </p>

**\<closeRead\>** under the "original" element, the closeRead element indicates the text you chose to mark up is the text you will analyze under the "play" element. In the "play" element, you write our your analysis of the particular moment you marked up.

**\<doc-title\>** the title of the remixed XML document; I encourage you to be more creative than "Remix of Original Title." Think about the main ways you have chosen to remix the text; what moments did you choose and why? How did you remix them?

**\<expand\>** under the "original" element, the expand element indicates the text you chose to mark up is the text you will expand under the "play" element. In the "play" element, you write our your expansion of the particular moment you marked up.

**\<feedback\>** under the "original" element, marks up the moment that feedback will be provided; this will be especially useful for peer-to-peer feedback and engagement as well as instructor feedback. In the "play" element, this is where the actual feedback is written out. 

**\<metadata\>** the first main tag that contains information about yourself, the document name, the original writer, and more

**\<original\>** the second main tag that contains the original text to be marked-up 

**\<original-title\>** the title of the original text

**\<p\>** to indicate a paragraph break

**\<play\>** the third main tag that consists of content created as the original text is being read and marked-up

**\<question\>** under the "original" element, the question element indicates the text you chose to mark up is the text you will ask a question about under the "play" element. In the "play" element, you write our your question of the particular moment you marked up.

**\<remiXML\>** the root element; this is the tag that surroungs the metadata, original, and play elements

**\<transform\>** under the "original" element, the transform element indicates the text you chose to mark up is the text you will transform under the "play" element. In the "play" element, you write our your transformation of the particular moment you marked up. These transformations are answers to "what if" questions and usually exist in an alternate timeline/universe from the original text.

**\<replace\>** under the "original" element, the replace element indicates which part of the text you would like to replace. In the "play" element, you will do the actual replacement. This replacement may be changing one or two words; it is different from transform because transform digs further into the "what if" question, while replace merely does to work of changing a word or two. This may be particularly useful with thinking about racebending, genderbending, changing objects, changing characters, etc.

## Attributes:

**ID** The ID attribute will be used in two elements: the **\<original-writer\>** and the **\<remixer\>** element. The attribute value of the ID will be the unique identifier for the original writer (IF the original writer is yourself) and the remixer (whether the remixer is yourself or your peer). Use your initials and number as the ID: my ID is CM1

**remixerID** This is the same remixer ID that you used in the ID attribute in <remixer>. This will help to diferentiate who has marked up the text, especially if it is a peer engaging with another peers' work

**playID** In the **\<original\>** text, this attribute will signal that moment in the text you have decided to wrap in an element (analysis, expand, question, transform) and label it. This ID must be the same ID you use in the **\<play\>** section. For example, if you mark up a particular section in the original text for analysis, in the play section, be sure your analysis has the same ID. This will link your analysis to the moment in the original text.

**playREF** In the **\<play\>** section, this attribute (playREF stands for play reference, indicating that you are referencing something from the original text) will be the same as the playID you used to markup the particular moment you want to play with. Example: in the \<original\> section, you decide to mark up a moment you want to expand. This moment as a playID. In the <play> section, you use the \<expand\> element in which you will actually write the expansion; for the "playREF" attribute of this expand element, you will use the same ID number (for example: playID="EX1" and playREF="EX2").

## Breakdown:

    <remiXML>
        <metadata>
            <original-title>
            <doc-title>
            <original-writer>
                ID
            <remixer>
                ID
        </metadata>
        <original>
            <p>
                <transform>
                    playID
                    remixerID
                <expand>
                    playID
                    remixerID
                <analysis>
                    playID
                    remixerID
                <question>
                    playID
                    remixerID
                <feedback>
                    playID
                    remixerID
                <replace>
                    playID
                    remixerID
            </p>
        </original>
        <play>
            <expand>
                playREF
            <analysis>
                playREF
            <transform>
                playREF
            <feedback>
                playREF
            <replace>
                playREF
        </play>
    </remiXML>
        Breakdown:

<remiXML>
    <metadata>
        <original-title>
        <doc-title>
        <original-writer>
            ID
        <remixer>
            ID
    </metadata>
    <original>
        <p>
            <transform>
                playID
                remixerID
            <expand>
                playID
                remixerID
            <analysis>
                playID
                remixerID
            <question>
                playID
                remixerID
            <feedback>
                playID
                remixerID
            <replace>
                playID
                remixerID
        </p>
    </original>
    <play>
        <expand>
            playREF
        <analysis>
            playREF
        <transform>
            playREF
        <feedback>
            playREF
        <replace>
            playREF
    </play>
</remiXML>
