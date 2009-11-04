

rewriteOptionalBlock(
        alt,rewriteBlockLevel,
        referencedElementsDeep, // all nested refs
        referencedElements, // elements in immediately block; no nested blocks
        description) ::=
<<
# at line <description>
if <referencedElementsDeep:{el | stream_<el>.has_next?}; separator=" || ">
  <alt>
end

<referencedElementsDeep:{el | stream_<el>.reset();<\n>}>
>>