tree grammar LangDumpDecl;

options {
  language = Ruby;
  tokenVocab = Lang;
}

decl : ^(DECL type declarator)
       // label.start, label.start, label.text
       { puts( "int #{ $declarator.text }" ) }
     ;

type : INT_TYPE ;

declarator
     : ID
     ;
