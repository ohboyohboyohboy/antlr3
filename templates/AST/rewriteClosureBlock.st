

rewriteClosureBlock(
        alt,rewriteBlockLevel,
        referencedElementsDeep, // all nested refs
        referencedElements, // elements in immediately block; no nested blocks
        description) ::=
<<
# at line <description>
while <referencedElements:{el | stream_<el>.has_next?}; separator=" || ">
  <alt>
end

<referencedElements:{el | stream_<el>.reset();<\n>}>
>>