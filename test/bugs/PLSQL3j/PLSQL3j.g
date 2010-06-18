/*******************************************************************************

DESCRIPTION:
		Oracle PL/SQL Grammar for ANTLR v3, target language Java
AUTHOR:
		Andrey Kharitonkin (thikone@gmail.com)
DATE:
		23-Sep-2008
BASED ON:
		PLSQLGrammar.g for ANTLR v2
		Qazi Firdous Ahmed (qazif_ahmed@infosys.com) 
		Krupa Benhur (krupa_bg@infosys.com)
		Manojaba Banerjee (manojaba_banerjee@infosys.com)
		Infosys Technologies Ltd., Bangalore, India
		Sept 18, 2002
		This grammar is for PL/SQL.
COMMENT:
		The grammar has been mostly re-written for ANTLR v3,
		using Oracle 10g Release 2 documentation and ANTLR book.
		New SQL and PL/SQL expression rules, SQL statments
		SELECT, INSERT, UPDATE, DELETE are fully supported.
		Generated parser can parse most of valid PL/SQL and 
		it was tested with over 10 Mb of test source code.
		Let me know if something cannot be parsed by this grammar.
KNOWN ISSUES:
		At the moment only supports CREATE PACKAGE and PACKAGE BODY.
		Symbol table and gate predicates needed to distinguish
			between function call and variable usage.
LICENSE:
		This grammar is free of charge and provided "as is".
		Feedback, however, is welcome!

It was fun learning ANTLR3 and creating this grammar, hope you enjoy it as well!

*******************************************************************************/

grammar PLSQL3j;

options {
  memoize = true;
  language = Ruby;
  output = AST;
  backtrack = true;
}

@init {
  @is_sql = false
}

start_rule
	:	(create_package)* EOF
	;

create_package
	:	'CREATE' ( 'OR' key_replace )?
		( package_spec | package_body )
	;
	
package_spec
	:	key_package package_name ( 'IS' | 'AS' ) 
		( package_obj_spec )*
		'END' (package_name)? SEMI
	;
	
package_body
	:	key_package ( key_body ) package_name ( 'IS' | 'AS' )
		( package_obj_body )*
		( 'BEGIN' seq_of_statements )?  
		'END' ( package_name )? SEMI
	;

package_name
	:	( schema_name DOT )? identifier 
	;

package_obj_spec
	:	variable_declaration 
	|	type_declaration
	|	subtype_declaration 
	|	record_declaration 
	|	plsql_table_declaration 
	|	varray_declaration
	|	cursor_declaration 
	|	cursor_spec 
	|	procedure_spec 
	|	function_spec 
	|	exception_declaration 
	|	pragma_declaration
	;

variable_declaration
	:	variable_name ('CONSTANT')?
		type_spec ('NOT' 'NULL')? 
		( ( ASSIGN | 'DEFAULT' ) plsql_expression)? SEMI
	;	

type_declaration 
	:	key_type type_spec 'IS' ( key_new )? ( type_spec ( 'NOT' 'NULL' )? | LPAREN plsql_expressions RPAREN ) SEMI
	;	

subtype_declaration 
	:	key_subtype type_spec 'IS' type_spec ( 'NOT' 'NULL' | key_range literal DOUBLEDOT literal )? SEMI
	;	
	
cursor_declaration
	:	key_cursor cursor_name
		( LPAREN parameter_specs RPAREN )?
		'IS' select_command SEMI
	;
package_obj_body
	:	variable_declaration 
	|	subtype_declaration 
	|	cursor_declaration 
	|	exception_declaration 
	|	record_declaration 
	|	plsql_table_declaration 
	|	varray_declaration
	|	procedure_body 
	|	function_body 
	|	pragma_declaration
	;

seq_of_statements
	:	statement SEMI ( statement SEMI )*
	;
	
statement
	:	assignment_statement
	|	exit_statement
	|	goto_statement
	|	case_statement
	|	if_statement 
	|	loop_statement 
	|	null_statement
	|	raise_statement
	|	return_statement
	|	sql_statement
	|	plsql_block
//	|	begin_block
	|	function_call
	;
		
plsql_block
	:	( LLABEL label_name RLABEL )?
		( ( 'DECLARE' )? (declare_spec)+ )? 
		( 'BEGIN' )
		seq_of_statements
		( 'EXCEPTION' ( exception_handler )+ )? 
		( 'END' ( label_name )? )
	;

declare_spec
	:	variable_declaration 
	|	subtype_declaration 
	|	cursor_declaration 
	|	exception_declaration 
	|	record_declaration 
	|	plsql_table_declaration 
	|	varray_declaration
	|	procedure_declaration 
	|	function_declaration
	|	type_declaration 
	|	pragma_declaration
	;

pragma_declaration
	:	key_pragma 
		(	key_restrict_references LPAREN ( 'DEFAULT' | function_name ) ( COMMA pragma_param )+ RPAREN 
		|	key_exception_init LPAREN exception_name COMMA literal RPAREN
		|	key_autonomous_transaction
		|	key_serially_reusable
		|	key_builtin LPAREN pragma_params RPAREN
		|	key_fipsflag LPAREN pragma_params RPAREN
		|	key_interface LPAREN pragma_params RPAREN
		|	key_new_names LPAREN pragma_params RPAREN
		|	key_timestamp LPAREN pragma_params RPAREN
		)
		SEMI
	;

pragma_params
	:	pragma_param ( COMMA pragma_param )*
	;

pragma_param
	:	( PLUS | MINUS )? NUMBER
	|	QUOTED_STRING
	|	identifier
	;

assignment_statement
	:	//(lvalue ASSIGN function_call) => (lvalue ASSIGN function_call)
//	|	(lvalue ASSIGN plsql_expression)  => 
		(lvalue ASSIGN plsql_expression)
//	|	function_call
	;
lvalues
	:	lvalue ( COMMA lvalue )*
	;
lvalue
	:	variable_name
	|	record_name DOT field_name
	|	plsql_table_name LPAREN subscript RPAREN ( DOT field_name )*
	|	COLON host_variable ( COLON host_variable )?
	;

field_name
	:	identifier
	;
	
subscript
	:	plsql_expression 
	;
	
host_variable
	:	identifier
	;
	
goto_statement
	:	'GOTO' label_name
	;
	
label_name
	:	identifier
	;	

exit_statement
	:	key_exit ( label_name )? ( 'WHEN' plsql_condition )?
	;
	
datatype
	:	'BINARY_INTEGER' 
	|	'BINARY_FLOAT'
	|	'BINARY_DOUBLE'
	|	'NATURAL' 
	|	'POSITIVE' 
	|	( 'NUMBER' | 'NUMERIC' | 'DECIMAL' | 'DEC' ) ( LPAREN NUMBER ( COMMA NUMBER )? RPAREN )?
	|	'LONG' ( 'RAW')? ( LPAREN NUMBER RPAREN )?
	|	'RAW' ( LPAREN NUMBER RPAREN )?
	|	'BOOLEAN'
	|	'DATE'
	|	key_interval key_day ( LPAREN NUMBER RPAREN )? 'TO' key_second ( LPAREN NUMBER RPAREN )?
	|	key_interval key_year ( LPAREN NUMBER RPAREN )? 'TO' key_month
	|	( key_time | key_timestamp ) ( LPAREN NUMBER RPAREN )? ( 'WITH' ( key_local )? key_time key_zone)?
	|	'INTEGER'
	|	'INT'
	|	'SMALLINT'
	|	'FLOAT' ( LPAREN NUMBER RPAREN )?
	|	'REAL'
	|	'DOUBLE' key_precision
	|	'CHAR'      ( key_varying )? ( LPAREN NUMBER ( key_byte | 'CHAR' )? RPAREN )? ( 'CHARACTER' 'SET' ( identifier | column_spec CHARSET_ATTR ) )?
	|	'VARCHAR'                   ( LPAREN NUMBER ( key_byte | 'CHAR' )? RPAREN )? ( 'CHARACTER' 'SET' ( identifier | column_spec CHARSET_ATTR ) )?
	|	'VARCHAR2'                  ( LPAREN NUMBER ( key_byte | 'CHAR' )? RPAREN )? ( 'CHARACTER' 'SET' ( identifier | column_spec CHARSET_ATTR ) )?
	|	'CHARACTER' ( key_varying )? ( LPAREN NUMBER RPAREN )?
	|	'NCHAR'     ( key_varying )? ( LPAREN NUMBER RPAREN )?
	|	'NVARCHAR'  ( LPAREN NUMBER RPAREN )?
	|	'NVARCHAR2' ( LPAREN NUMBER RPAREN )?
	|	'NATIONAL'  ( 'CHARACTER' | 'CHAR' ) ( key_varying )? ( LPAREN NUMBER RPAREN )?
	|	'MLSLABEL'
	|	'PLS_INTEGER'
	|	'BLOB'
	|	'CLOB' ( 'CHARACTER' 'SET' ( identifier | column_spec CHARSET_ATTR ) )?
	|	'NCLOB'
	|	'BFILE'
	|	'ROWID' 
	|	'UROWID' ( LPAREN NUMBER RPAREN )?
	;

type_spec
	:	datatype 
//	|	variable_name TYPE_ATTR
	|	column_spec TYPE_ATTR
//	|	package_name DOT variable_name
	|	table_spec ROWTYPE_ATTR
//	|	keyREF ( keyCURSOR | type_name )
	|	type_name ( LPAREN NUMBER RPAREN )?
	;

type_name
	:	identifier ( DOT identifier )*
	;

parameter_specs
	:	parameter_spec ( COMMA parameter_spec )*
	;

parameter_spec
	:	parameter_name ( 'IN' )? ( type_spec )?
	;	

parameter_name
	:	identifier
	;

cursor_spec
	:	key_cursor cursor_name 
		( LPAREN parameter_specs RPAREN )?
		key_return return_type SEMI! 
	;

procedure_spec: 
	'PROCEDURE' procedure_name 
	( LPAREN arguments RPAREN )? SEMI
	;

function_spec
	:	'FUNCTION' function_name 
		( LPAREN arguments RPAREN )?
		key_return return_type SEMI
	;

exception_declaration
	:	exception_name 'EXCEPTION' SEMI
	;

exception_names
	:	exception_name ( 'OR' exception_name )*
	;

exception_name
	:	( exception_package_name DOT )? identifier
	;

exception_package_name
	:	identifier
	;

	
//oracle_err_number
//	:	( PLUS | MINUS )? NUMBER
//	|	QUOTED_STRING
//	;
	
record_declaration
	:	record_type_dec 
//	|	record_var_dec
	;

record_type_dec
	:	key_type type_name 'IS' key_record 
		LPAREN field_specs RPAREN SEMI
	;

//record_var_dec
//	:	record_name type_name ROWTYPE_ATTR SEMI
//	;

field_specs
	:	field_spec ( COMMA field_spec )*
	;
field_spec
	:	column_name type_spec
		('NOT' 'NULL')? 
		( ( ASSIGN | 'DEFAULT' ) plsql_expression)?
	;

plsql_table_declaration
	:	table_type_dec
//	|	table_var_dec
	;

table_type_dec
	:	key_type type_name 'IS' 'TABLE' 
		'OF' type_spec ( 'NOT' 'NULL' )?
		(	'INDEX' 'BY' 
			(	'BINARY_INTEGER'
			|	'PLS_INTEGER'
			|	'VARCHAR2' LPAREN integer RPAREN
			)
		)?
		SEMI
	;

table_var_dec
	:	plsql_table_name type_name SEMI
	;

plsql_table_name
	:	identifier ( DOT identifier )*
	;

varray_declaration
	:	key_type type_name 'IS' 
		( key_varray | key_varying key_array ) LPAREN integer RPAREN
		'OF' type_spec ( 'NOT' 'NULL' )?
	;

procedure_declaration
	:	procedure_body
	;

procedure_body
	:	( proc_fun_start )? 'PROCEDURE'^ procedure_name 
		( LPAREN argument ( COMMA argument )* RPAREN )? 
		( 'IS' | 'AS' )
		//( keyPRAGMA keyAUTONOMOUS_TRANSACTION )?
		( ( declare_spec ) => ( declare_spec )* )
		( 'BEGIN' )
		( seq_of_statements )
		( 'EXCEPTION' ( exception_handler )* )?
		'END' ( procedure_name )? SEMI
	;

begin_block
	:	'BEGIN'
		( seq_of_statements )
		( 'EXCEPTION' ( exception_handler )+ )?
		'END'
	;

//Exception handler needs to be defined
exception_handler
	:	'WHEN' exception_names 'THEN'
		seq_of_statements
	;

proc_fun_start
	:	'CREATE' ( 'OR' key_replace )?
	;

function_body
	:	( proc_fun_start )? 'FUNCTION'^ function_name 
		( LPAREN arguments RPAREN )? 
		key_return return_type ( 'IS' | 'AS' )
		//( keyPRAGMA keyAUTONOMOUS_TRANSACTION )?
		( ( declare_spec ) => ( declare_spec )* )
		( 'BEGIN' )
		( seq_of_statements )
		( 'EXCEPTION' ( exception_handler )+ )?
		'END' ( function_name )? SEMI
	;

function_name
	:	identifier | QUOTED_STRING //( schema_name DOT )? identifier
	;

procedure_name
	:	identifier | QUOTED_STRING //( schema_name DOT )? identifier
	;

arguments
	:	argument ( COMMA argument )*
	;

argument
	:	argument_name ( key_out | 'IN' key_out | 'IN' )? (argument_type )?
		( ( ASSIGN | 'DEFAULT' ) plsql_expression )?
	;

argument_name
	:	identifier
	;

argument_type
	:	type_spec
	;

value
	:	( PLUS | MINUS )? NUMBER
	|	quoted_string
	|	'TRUE' | 'FALSE'
	|	'NULL'
	;

return_type
	:	type_spec
	;

function_declaration
	:	function_body
	;

function_call
	:	user_defined_function ( { @input.peek != LPAREN || @input.peek( 2 ) != PLUS || @input.peek( 3 ) != RPAREN }? LPAREN ( call_parameters )? RPAREN )?
//	|	//{ input.LA(1) == ID && input.LA(2) == LPAREN && input.LA(3) == ASTERISK && input.LA(4) == RPAREN }? 
//		{ is_sql }?
//		keyCOUNT LPAREN ( ASTERISK | sql_expression ) RPAREN
//	|	{ is_sql }?
//		'DISTINCT' LPAREN call_parameters RPAREN
	;

collection_function_call
	:	plsql_table_name
	;

variable_names
	:	variable_name ( COMMA variable_name )*
	;
variable_name
	:	identifier
	;

null_statement
	:	'NULL' 
	;

raise_statement
	:	key_raise ( exception_name )?
	;
	
return_statement
	:	key_return ( plsql_expression )?
	;

loop_statement
	:	( LLABEL label_name RLABEL )?
		(	key_while^ plsql_condition
		| 	(	'FOR'^
				(	( numeric_loop_param ) => numeric_loop_param
				|	( cursor_loop_param ) => cursor_loop_param 
				)
			)
		)?
		key_loop
		seq_of_statements
		'END' key_loop 
		( label_name )?
	;

numeric_loop_param
	:	index_name 'IN' ( key_reverse )? integer_expr DOUBLEDOT integer_expr
	;

index_name
	:	identifier
	;

//Added typespec to handle packagename.variablename for loop statement
integer_expr
	:	sql_expression
	;

cursor_name
	:	identifier
	;

cursor_loop_param
	:	record_name 'IN'
		(	cursor_name ( LPAREN plsql_expressions RPAREN )?
		|	LPAREN select_statement RPAREN
		)
	;

record_name
	:	identifier
	;

commit_statement
	:	'COMMIT'
	;

if_statement
	:	'IF'^ plsql_condition 'THEN' seq_of_statements
		(	//{ input.LA(1) != ELSE }?
			key_elsif plsql_condition 'THEN' seq_of_statements
		)*
		( 'ELSE' seq_of_statements )?
		'END' 'IF'
	;

sql_statement
	:	sql_command
	;

sql_command
	:	to_modify_data
	|	to_control_data
	;

to_modify_data
	:	select_command
	|	insert_command
	|	update_command
	|	delete_command
	|	set_transaction_command
	;

to_control_data
	:	close_statement
	|	commit_statement
	|	fetch_statement
	|	lock_table_statement
	|	open_statement
	|	rollback_statement
	|	savepoint_statement
	;

select_command
	:	select_statement// ( 'UNION' select_statement )*
	;

select_statement
	:	//( LPAREN select_command RPAREN ) => LPAREN select_command RPAREN |
		select_expression 
	;

select_expression
	:	
		'SELECT' /*( hint )?*/ ( 'DISTINCT' | 'UNIQUE' | 'ALL' )? select_list
		( key_bulk key_collect )?
		( 'INTO' lvalues )?
		'FROM' ( join_clause | LPAREN join_clause RPAREN | table_reference_list )
		( where_clause )? ( hierarchical_query_clause )? ( group_by_clause )?
		( 'HAVING' sql_condition )? ( model_clause )?
		(	(	'UNION' ( 'ALL' )?
			|	'INTERSECT'
			|	'MINUS'
			)
			(	select_expression //LPAREN subquery RPAREN
			|	subquery
			)
		)?
		( order_by_clause )?
	;

select_list
	:	ASTERISK
	|	displayed_column ( COMMA displayed_column )*
	;

table_reference_list_from
	:	'FROM' table_reference_list
	;

table_reference_list
	:	selected_table ( COMMA selected_table )*
	;

join_clause
	:	selected_table ( inner_cross_join_clause | outer_join_clause )+
	;
inner_cross_join_clause
	:	( key_inner )? key_join table_name ( 'ON' sql_condition | key_using LPAREN column_specs RPAREN )
	|	( key_cross | key_natural ( key_inner ) ) key_join table_name
	;
outer_join_clause
	:	( query_partition_clause )?
		(	outer_join_type key_join
		|	key_natural ( outer_join_type )? key_join
		)
		selected_table ( query_partition_clause )?
		( 'ON' sql_condition | key_using LPAREN column_specs RPAREN )?
	;
query_partition_clause
	:	key_partition 'BY' expression_list
	;
outer_join_type
	:	( key_full | key_left | key_right ) ( key_outer )?
	;
outer_join_sign
	:	LPAREN PLUS RPAREN
	;
where_clause
	:	'WHERE' sql_condition
	;
hierarchical_query_clause
	:	( 'START' 'WITH' sql_condition )? 'CONNECT' 'BY' ( key_nocycle )? sql_condition
	;
group_by_clause
	:	'GROUP' 'BY' group_by_exprs
	;
group_by_exprs
	:	group_by_expr ( COMMA group_by_expr )*
	;
group_by_expr
	:	rollup_cube_clause
	|	grouping_sets_clause
	|	grouping_expression_list
	;
rollup_cube_clause
	:	( key_rollup | key_cube ) LPAREN grouping_expression_list RPAREN
	;
grouping_sets_clause
	:	key_grouping key_sets LPAREN grouping_expression_list RPAREN
	;
grouping_sets_exprs
	:	grouping_sets_expr ( COMMA grouping_sets_expr )*
	;
grouping_sets_expr
	:	rollup_cube_clause | grouping_expression_list
	;
model_clause
	:	key_model ( cell_reference_options )
		( return_rows_clause )?
		( reference_model )+ main_model
	;
cell_reference_options
	:	( ( key_ignore | key_keep ) key_nav )?
		( 'UNIQUE' ( key_dimension | key_single key_reference ) )?
	;
return_rows_clause
	:	key_return ( key_updated | 'ALL' ) 'ROWS'
	;
reference_model
	:	key_reference reference_model_name 'ON' LPAREN subquery RPAREN
		model_column_clauses ( cell_reference_options )
	;
reference_model_name
	:	identifier
	;
main_model
	:	( key_main main_model_name )? model_column_clauses
		( cell_reference_options ) model_rules_clause
	;
main_model_name
	:	identifier
	;
model_column_clauses
	:	( query_partition_clause ( column_spec )? )?
		key_dimension 'BY' LPAREN model_columns RPAREN
		key_measures LPAREN model_columns RPAREN
	;
model_columns
	:	model_column ( COMMA model_column )*
	;
model_column
	:	sql_expression ( ( 'AS' )? column_spec )?
	;
model_rules_clause
	:	( key_rules ( 'UPDATE' | key_upsert ( 'ALL' )? )? ( ( key_automatic | key_sequential ) 'ORDER' )? )?
		( key_iterate LPAREN NUMBER RPAREN ( key_until LPAREN sql_condition RPAREN )? )?
		LPAREN model_rules_exprs RPAREN
	;
model_rules_exprs
	:	model_rules_expr ( COMMA model_rules_expr )*
	;
model_rules_expr
	:	( 'UPDATE' | key_upsert ( 'ALL' )? )? cell_assignment ( order_by_clause )? EQ sql_expression
	;
cell_assignment
	:	measure_column LBRACK ( multi_column_for_loop | cell_assignment_exprs ) RBRACK
	;
cell_assignment_exprs
	:	cell_assignment_expr ( COMMA cell_assignment_expr )*
	;
cell_assignment_expr
	:	sql_condition | sql_expression | single_column_for_loop
	;
measure_column
	:	column_name
	;
single_column_for_loop
	:	'FOR' column_name
		(	'IN' LPAREN ( literals | subquery ) RPAREN
		|	( 'LIKE' pattern )? 'FROM' literal 'TO' literal ( key_increment | key_decrement ) literal
		)
	;
literal
	:	( PLUS | MINUS )? NUMBER
	|	QUOTED_STRING
	;
literals
	:	literal ( COMMA literal )*
	;
bracket_literals
	:	LPAREN literals RPAREN
	;
bracket_literals_list
	:	bracket_literals ( COMMA bracket_literals )*
	;
pattern
	:	QUOTED_STRING
	;
multi_column_for_loop
	:	'FOR' LPAREN column_specs RPAREN 'IN' LPAREN ( bracket_literals_list | subquery ) RPAREN
	;
order_by_clause
	:	'ORDER' ( key_siblings )? 'BY' order_by_exprs
	;
order_by_exprs
	:	order_by_expr ( COMMA order_by_expr )*
	;
order_by_expr
	:	(	sql_expression
//		|	position
//		|	column_alias
		)
		( 'ASC' | 'DESC' )? ( key_nulls key_first | key_nulls key_last )?
	;
for_update_clause
	:	'FOR' 'UPDATE' ( 'OF' column_specs )? ( key_wait integer | 'NOWAIT' )?
	;

where_condition_whole
	:	'WHERE' sql_condition
	;

where_condition
	:	sql_condition
	;

displayed_column
	:	(	column_spec DOT ASTERISK
//		|	keyCOUNT LPAREN ( ASTERISK | 'DISTINCT' LPAREN sql_expression RPAREN ) RPAREN
//		|	
		|	sql_expression
		)
		( alias_expr )?
	;

schema_name
	:	sql_identifier
	;

table_name
	:	sql_identifier
	;

nested_expressions
	:	nested_expression ( COMMA nested_expression )*
	;

nested_expression
	:	{  @is_sql }? sql_expression
	|	{ !@is_sql }? plsql_expression
	;
  
plsql_condition
		@init { @is_sql = false }
	:	expr_bool
	;

plsql_expressions
	:	plsql_expression ( COMMA plsql_expression )*
	;

plsql_expression
		@init { @is_sql = false } 
	:	expr_bool
	;


expr_bool
	:	expr_or ( 'OR' expr_or )*
	;
expr_or
	:	expr_and ( 'AND' expr_and )*
	;
expr_and
	:	( 'NOT' )? expr_not
	;
expr_not
	:	expr_add 
		(	relational_op expr_add
		|	FOUND_ATTR | NOTFOUND_ATTR | ISOPEN_ATTR | ROWCOUNT_ATTR | BULK_ROWCOUNT_ATTR
		|	'IS' ( 'NOT' )? 'NULL'
		|	( 'NOT' )? 'LIKE' expr_add
		|	( 'NOT' )? 'BETWEEN' expr_add 'AND' expr_add
		|	( 'NOT' )? 'IN' LPAREN nested_expressions RPAREN
		)*
	;

boolean_literal
	:	'TRUE' | 'FALSE'
	;

sql_expressions
	:	sql_expression ( COMMA sql_expression )*
	;
sql_expression
		@init { @is_sql = true }
	:	expr_add
	;
expr_add
	:	expr_mul ( ( PLUS | MINUS | DOUBLEVERTBAR ) expr_mul )*
	;
expr_mul
	:	expr_sign ( ( ASTERISK | DIVIDE ) expr_sign )*
	;
expr_sign
	:	( PLUS | MINUS )? expr_pow
	;
expr_pow
	:	expr_expr ( EXPONENT expr_expr )*
	;
expr_expr
	:	( expr_paren ) => expr_paren
	|	( function_expression ) => function_expression
//	|	( compound_expression ) => compound_expression
	|	( case_expression ) => case_expression
	|	( cursor_expression ) => cursor_expression
	|	( simple_expression ) => simple_expression
	|	( select_expression ) => select_expression
//	|	( special_expression ) => special_expression
//	|	datetime_expression
//	|	interval_expression
//	|	object_access_expression
//	|	scalar_subquery_expression
//	|	model_expression
//	|	type_constructor_expression
//	|	variable_expression
//	:	'NULL' | NUMBER | QUOTED_STRING | IDENTIFIER
	;
simple_expression
	:	boolean_literal
	|	'SQL' ( FOUND_ATTR | NOTFOUND_ATTR | ISOPEN_ATTR | ROWCOUNT_ATTR | BULK_ROWCOUNT_ATTR )
	|	( column_spec ) => column_spec
	|	QUOTED_STRING
	|	NUMBER
//	|	sequence_name DOT ( 'CURRVAL' | 'NEXTVAL' )
//	|	'ROWID'
//	|	'ROWNUM'
	|	'NULL'
	;
compound_expression
//	:	expr_paren
//	|	expr_sign
	:	expr_prior
//	|	expr_add
//	|	expr_cat
	;
expr_paren
	:	LPAREN nested_expression RPAREN
	;
expr_prior
	:	'PRIOR' expr_add
	;
case_expression
	:	'CASE' ( simple_case_expression | searched_case_expression ) ( else_case_expression )? 'END'
	;
simple_case_expression
	:	nested_expression ( 'WHEN' nested_expression 'THEN' nested_expression )+
	;
searched_case_expression
	:	( 'WHEN' nested_condition 'THEN' nested_expression )+
	;
else_case_expression
	:	'ELSE' nested_expression
	;
case_statement
	:	( label_name )? 'CASE'^ ( simple_case_statement | searched_case_statement ) ( else_case_statement )? 'END' 'CASE' ( label_name )?
	;
simple_case_statement
	:	plsql_expression ( 'WHEN' plsql_expression 'THEN' seq_of_statements )+
	;
searched_case_statement
	:	( 'WHEN' plsql_expression 'THEN' seq_of_statements )+
	;
else_case_statement
	:	'ELSE' seq_of_statements
	;
cursor_expression
	:	key_cursor LPAREN subquery RPAREN
	;
datetime_expression
	:	sql_expression 'AT'
		(	key_local
		|	key_time key_zone ( key_dbtimezone | key_sessiontimezone | sql_expression )
		)
	;
function_expression
	:	function_call ( DOT nested_expression )?
	|	{ @is_sql }?
		(	key_count LPAREN ( ASTERISK | nested_expression ) RPAREN
		|	'DISTINCT' ( LPAREN nested_expression RPAREN | nested_expression )
		)
	;
special_expression
	: { @is_sql }?
		(	key_count LPAREN ( ASTERISK | nested_expression ) RPAREN
		|	'DISTINCT' LPAREN nested_expression RPAREN
		)
	;
interval_expression
	:	sql_expression
		(	key_day ( LPAREN leading_field_precision RPAREN )? 'TO' key_second ( LPAREN fractional_second_precision RPAREN )?
		|	key_year ( LPAREN leading_field_precision RPAREN )? 'TO' key_month
		)
	;
leading_field_precision
	:	integer // TODO validate digit from 0 to 9
	;
fractional_second_precision
	:	integer // TODO validate digit from 0 to 9
	;
object_access_expression
	:
	;
scalar_subquery_expression
	:
	;
model_expression
	:
	;
type_constructor_expression
	:
	;
variable_expression
	:
	;
sequence_name
	:	identifier
	;
integer
	:	NUMBER
	;


alias_expr
	:	( 'AS' )? sql_identifier
	;

column_specs
	:	column_spec ( COMMA column_spec )*
	;

column_spec
	:	sql_identifier ( DOT sql_identifier ( DOT sql_identifier )? )?
//	|	{ is_sql }?
//		(	ASTERISK
//		|	sql_identifier ( DOT sql_identifier )* ( DOT ASTERISK )
//		)
//		( ( schema_name DOT )? table_name DOT )? column_name
	;

column_name
	:	sql_identifier
	;
nested_table
	:	sql_identifier
	;
nested_table_column_name
	:	( schema_name DOT )? table_name DOT nested_table DOT column_name
	;

user_defined_function
	:	sql_identifier ( DOT sql_identifier )* ( DOT ( 'EXISTS' | 'PRIOR' | 'DELETE' ) )? //( ( schema_name DOT )? package_name DOT )? identifier // sql_identifier ( DOT sql_identifier )*
	;

//function
//	:	user_defined_function
//		number_function
//	|	char_function
//	|	group_function
//	|	conversion_function
//	|	other_function
//	;

selected_table
	:	( table_spec | ( 'TABLE' | key_the )? subquery ) ( alias_expr )?
	;

table_spec
	:	( schema_name DOT )? table_name ( AT_SIGN link_name )?
	;

table_alias
	:	( schema_name DOT )? table_name ( AT_SIGN link_name )? ( alias_expr )?
	;

link_name
	:	sql_identifier
	;
nested_condition
	:	{  @is_sql }? condition_or
	|	{ !@is_sql }? expr_bool
	;
sql_condition
		@init { @is_sql = true }
	:	condition_or
//	|	column 'IS' 'NOT' 'NULL' // TODO must be any boolean expression with table columns
	;
condition_paren
	:	LPAREN sql_condition RPAREN
	;
condition_or
	:	condition_and ( 'OR' condition_and )*
	;
condition_and
	:	condition_not ( 'AND' condition_not )*
	;
condition_not
	:	'NOT' condition_expr
	|	condition_expr
	;
condition_expr
	:	condition_exists
	|	condition_is
	|	condition_comparison
	|	condition_group_comparison
	|	condition_in
	|	condition_is_a_set
	|	condition_is_any
	|	condition_is_empty
	|	condition_is_of_type
	|	condition_is_present
	|	condition_like
	|	condition_memeber
	|	condition_between
	|	condition_regexp_like
	|	condition_submultiset
	|	condition_equals_path
	|	condition_under_path
	|	condition_paren
	;
condition_exists
	:	'EXISTS' LPAREN select_command RPAREN
	;
condition_is
	:	sql_expression 'IS' ( 'NOT' )? ( key_nan | key_infinite | 'NULL' )
	;
condition_comparison
	:	LPAREN sql_expressions RPAREN ( outer_join_sign )? ( EQ | NOT_EQ ) LPAREN select_command RPAREN ( outer_join_sign )?
	|	( 'PRIOR' )? sql_expression ( outer_join_sign )? ( EQ | NOT_EQ | GTH | GEQ | LTH | LEQ ) ( 'PRIOR' )? ( sql_expression | LPAREN select_command RPAREN ) ( outer_join_sign )?
	;
condition_group_comparison
	:	LPAREN sql_expressions RPAREN ( EQ | NOT_EQ ) ( 'ANY' | key_some | 'ALL' ) LPAREN ( grouping_expression_list | select_command ) RPAREN
	|	sql_expression ( EQ | NOT_EQ | GTH | GEQ | LTH | LEQ ) ( 'ANY' | key_some | 'ALL' ) LPAREN ( sql_expressions | select_command ) RPAREN
	;
condition_in
	:	LPAREN sql_expressions RPAREN ( 'NOT' )? 'IN' LPAREN ( grouping_expression_list | select_command ) RPAREN
	|	sql_expression ( 'NOT' )? 'IN' LPAREN ( expression_list | select_command ) RPAREN
	;
condition_is_a_set
	:	nested_table_column_name 'IS' ( 'NOT' )? key_a 'SET'
	;
condition_is_any
	:	( column_name 'IS' )? 'ANY'
	;
condition_is_empty
	:	nested_table_column_name 'IS' ( 'NOT' )? key_empty
	;
condition_is_of_type
	:	sql_expression 'IS' ( 'NOT' )? 'OF' ( key_type )? LPAREN type_name RPAREN
	;
condition_is_of_type_names
	:	condition_is_of_type_name ( COMMA condition_is_of_type_name )*
	;
condition_is_of_type_name
	:	( key_only )? type_name
	;
condition_is_present
	:	cell_reference 'IS' key_present
	;
condition_like
	:	sql_expression ( 'NOT' )? ( 'LIKE' | key_likec | key_like2 | key_like4 ) sql_expression ( key_escape sql_expression )?
	;
condition_memeber
	:	sql_expression ( 'NOT' )? key_member ( 'OF' )? nested_table_column_name
	;
condition_between
	:	sql_expression ( 'NOT' )? 'BETWEEN' sql_expression 'AND' sql_expression
	;
condition_regexp_like
	:	key_regexp_like LPAREN call_parameters RPAREN
	;
condition_submultiset
	:	nested_table_column_name ( 'NOT' )? key_submultiset ( 'OF' )? nested_table_column_name
	;
condition_equals_path
	:	key_equals_path LPAREN column_name COMMA path_string ( COMMA correlation_integer )? RPAREN
	;
condition_under_path
	:	key_under_path LPAREN column_name ( COMMA levels )? COMMA path_string ( COMMA correlation_integer )? RPAREN
	;
levels
	:	integer
	;
correlation_integer
	:	integer
	;
path_string
	:	QUOTED_STRING
	;
grouping_expression_list
	:	expression_list ( COMMA expression_list )*
	;
expression_list
	:	LPAREN sql_expressions RPAREN
	|	sql_expressions
	;
cell_reference
	:	sql_identifier
	;
call_parameters
	:	call_parameter ( COMMA call_parameter )*
	;
call_parameter
	:	( parameter_name ARROW )? nested_expression
	;

relational_op
	:	EQ | LTH | GTH | NOT_EQ | LEQ | GEQ
	;

exp_set
	:	( sql_expression ) => sql_expression
	|	subquery
	;

subquery
	:	LPAREN select_command RPAREN
	;

connect_clause
	:	( 'START' 'WITH' sql_condition )?
		'CONNECT' 'BY' 
		(	'PRIOR' sql_expression relational_op sql_expression
		|	sql_expression relational_op sql_expression 'PRIOR'
		)
		(	( ( 'PRIOR' )? sql_condition ) => ('PRIOR')? sql_condition
		|	sql_expression relational_op ( 'PRIOR' )? sql_expression ( 'AND' sql_condition )?
		)
		( 'START' 'WITH' sql_condition )?
	;

group_clause
	:	'GROUP' 'BY' sql_expression ( COMMA sql_expression )* ( 'HAVING' sql_condition )?
	;

set_clause
	:	( ( 'UNION' 'ALL' ) | 'INTERSECT' | 'MINUS' ) select_command 
	;

order_clause
	:	'ORDER' 'BY' sorted_def ( COMMA sorted_def )*
	;

sorted_def
	:	( ( sql_expression ) => sql_expression | ( NUMBER ) => NUMBER ) ( 'ASC' | 'DESC' )?
	;

update_clause
	:	'FOR' 'UPDATE' ( 'OF' column_name ( COMMA column_name )* )? ( 'NOWAIT' )?
	;

insert_command
	:	'INSERT' 'INTO' table_reference_list
		( LPAREN column_specs RPAREN )?
		(	'VALUES' LPAREN plsql_expressions RPAREN
		|	select_statement
		)
		( returning_clause )?
	;

update_command
	:	'UPDATE' selected_table
		'SET' 
		(	update_nested_column_specs
		|	update_column_specs
		)
		(	'WHERE'
			(	key_current_of cursor_name
			|	sql_condition
			)
		)?
		( returning_clause )?
	;

update_column_specs
	:	update_column_spec ( COMMA update_column_spec )*
	;

update_column_spec
	:	column_spec EQ sql_expression
	;

update_nested_column_specs
	:	update_nested_column_spec ( COMMA update_nested_column_spec )*
	;

update_nested_column_spec
	:	LPAREN column_specs RPAREN EQ subquery
	;

delete_command
	:	'DELETE' ( 'FROM' )? selected_table
		(	'WHERE'
			(	key_current_of cursor_name
			|	sql_condition
			)
		)?
		( returning_clause )?
	;

returning_clause
	:	( key_return | key_returning ) select_list ( key_bulk key_collect )? 'INTO' lvalues
	;

set_transaction_command
	:	'SET' key_transaction key_read key_only
	;

close_statement
	:	key_close cursor_name
	;

fetch_statement
	:	'FETCH' cursor_name 'INTO' 
		(	variable_names
		|	record_name
		)
	;

lock_table_statement
	:	'LOCK' 'TABLE' table_reference_list
		'IN' lock_mode 'MODE' ( 'NOWAIT' )?
	;

lock_mode
	:	'ROW' 'SHARE'
	|	'ROW' 'EXCLUSIVE'
	|	'SHARE' 'UPDATE'
	|	'SHARE'
	|	'SHARE' 'ROW' 'EXCLUSIVE'
	|	'EXCLUSIVE'
	;

open_statement
	:	key_open cursor_name ( LPAREN plsql_expressions RPAREN )?
	;

rollback_statement
	:	key_rollback ( key_work )?
		( 'TO' ( 'SAVEPOINT' )? savepoint_name )?
		( 'COMMENT' quoted_string )?
	;

savepoint_statement
	:	'SAVEPOINT' savepoint_name
	;

savepoint_name
	:	identifier
	;

identifier
	:	ID
	|	DOUBLEQUOTED_STRING 
//	|	keyword
   	;

quoted_string
	:	QUOTED_STRING
	;

match_string
	:	QUOTED_STRING
	;

key_a                             : { @input.look.text.upcase == "A" }? ID;
key_automatic                     : { @input.look.text.upcase == "AUTOMATIC" }? ID;
key_count                         : { @input.look.text.upcase == "COUNT" }? ID;
key_cross                         : { @input.look.text.upcase == "CROSS" }? ID;
key_cube                          : { @input.look.text.upcase == "CUBE" }? ID;
key_current_of                    : { @input.look.text.upcase == "CURRENT_OF" }? ID;
key_day                           : { @input.look.text.upcase == "DAY" }? ID;
key_dbtimezone                    : { @input.look.text.upcase == "DBTIMEZONE" }? ID;
key_decrement                     : { @input.look.text.upcase == "DECREMENT" }? ID;
key_dimension                     : { @input.look.text.upcase == "DIMENSION" }? ID;
key_empty                         : { @input.look.text.upcase == "EMPTY" }? ID;
key_equals_path                   : { @input.look.text.upcase == "EQUALS_PATH" }? ID;
key_escape                        : { @input.look.text.upcase == "ESCAPE" }? ID;
key_first                         : { @input.look.text.upcase == "FIRST" }? ID;
key_full                          : { @input.look.text.upcase == "FULL" }? ID;
key_grouping                      : { @input.look.text.upcase == "GROUPING" }? ID;
key_ignore                        : { @input.look.text.upcase == "IGNORE" }? ID;
key_increment                     : { @input.look.text.upcase == "INCREMENT" }? ID;
key_infinite                      : { @input.look.text.upcase == "INFINITE" }? ID;
key_inner                         : { @input.look.text.upcase == "INNER" }? ID;
key_interval                      : { @input.look.text.upcase == "INTERVAL" }? ID;
key_iterate                       : { @input.look.text.upcase == "ITERATE" }? ID;
key_join                          : { @input.look.text.upcase == "JOIN" }? ID;
key_keep                          : { @input.look.text.upcase == "KEEP" }? ID;
key_last                          : { @input.look.text.upcase == "LAST" }? ID;
key_left                          : { @input.look.text.upcase == "LEFT" }? ID;
key_like2                         : { @input.look.text.upcase == "LIKE2" }? ID;
key_like4                         : { @input.look.text.upcase == "LIKE4" }? ID;
key_likec                         : { @input.look.text.upcase == "LIKEC" }? ID;
key_local                         : { @input.look.text.upcase == "LOCAL" }? ID;
key_main                          : { @input.look.text.upcase == "MAIN" }? ID;
key_measures                      : { @input.look.text.upcase == "MEASURES" }? ID;
key_member                        : { @input.look.text.upcase == "MEMBER" }? ID;
key_model                         : { @input.look.text.upcase == "MODEL" }? ID;
key_month                         : { @input.look.text.upcase == "MONTH" }? ID;
key_nan                           : { @input.look.text.upcase == "NAN" }? ID;
key_natural                       : { @input.look.text.upcase == "NATURAL" }? ID;
key_nav                           : { @input.look.text.upcase == "NAV" }? ID;
key_nocycle                       : { @input.look.text.upcase == "NOCYCLE" }? ID;
key_nulls                         : { @input.look.text.upcase == "NULLS" }? ID;
key_only                          : { @input.look.text.upcase == "ONLY" }? ID;
key_outer                         : { @input.look.text.upcase == "OUTER" }? ID;
key_partition                     : { @input.look.text.upcase == "PARTITION" }? ID;
key_precision                     : { @input.look.text.upcase == "PRECISION" }? ID;
key_present                       : { @input.look.text.upcase == "PRESENT" }? ID;
key_reference                     : { @input.look.text.upcase == "REFERENCE" }? ID;
key_regexp_like                   : { @input.look.text.upcase == "REGEXP_LIKE" }? ID;
//keyRETURN                        : {PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("RETURN")}? ID;
key_right                         : { @input.look.text.upcase == "RIGHT" }? ID;
key_rollup                        : { @input.look.text.upcase == "ROLLUP" }? ID;
key_rules                         : { @input.look.text.upcase == "RULES" }? ID;
key_second                        : { @input.look.text.upcase == "SECOND" }? ID;
key_seconds                       : { @input.look.text.upcase == "SECONDS" }? ID;
key_sequential                    : { @input.look.text.upcase == "SEQUENTIAL" }? ID;
key_sessiontimezone               : { @input.look.text.upcase == "SESSIONTIMEZONE" }? ID;
key_sets                          : { @input.look.text.upcase == "SETS" }? ID;
key_siblings                      : { @input.look.text.upcase == "SIBLINGS" }? ID;
key_single                        : { @input.look.text.upcase == "SINGLE" }? ID;
key_some                          : { @input.look.text.upcase == "SOME" }? ID;
key_submultiset                   : { @input.look.text.upcase == "SUBMULTISET" }? ID;
key_time                          : { @input.look.text.upcase == "TIME" }? ID;
key_timestamp                     : { @input.look.text.upcase == "TIMESTAMP" }? ID;
key_the                           : { @input.look.text.upcase == "THE" }? ID;
key_under_path                    : { @input.look.text.upcase == "UNDER_PATH" }? ID;
key_until                         : { @input.look.text.upcase == "UNTIL" }? ID;
key_updated                       : { @input.look.text.upcase == "UPDATED" }? ID;
key_upsert                        : { @input.look.text.upcase == "UPSERT" }? ID;
key_wait                          : { @input.look.text.upcase == "WAIT" }? ID;
key_year                          : { @input.look.text.upcase == "YEAR" }? ID;
key_zone                          : { @input.look.text.upcase == "ZONE" }? ID;

key_array                         : { @input.look.text.upcase == "ARRAY" }? ID;
key_autonomous_transaction        : { @input.look.text.upcase == "AUTONOMOUS_TRANSACTION" }? ID;
key_body                          : { @input.look.text.upcase == "BODY" }? ID;
key_builtin                       : { @input.look.text.upcase == "BUILTIN" }? ID;
key_bulk                          : { @input.look.text.upcase == "BULK" }? ID;
key_byte                          : { @input.look.text.upcase == "BYTE" }? ID;
key_close                         : { @input.look.text.upcase == "CLOSE" }? ID;
key_collect                       : { @input.look.text.upcase == "COLLECT" }? ID;
key_cursor                        : { @input.look.text.upcase == "CURSOR" }? ID;
key_elsif                         : 'ELSIF'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("ELSIF")}? ID;
key_exception_init                : { @input.look.text.upcase == "EXCEPTION_INIT" }? ID;
key_exit                          : { @input.look.text.upcase == "EXIT" }? ID;
key_fipsflag                      : { @input.look.text.upcase == "FIPSFLAG" }? ID;
key_function                      : 'FUNCTION'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("FUNCTION")}? ID;
key_interface                     : { @input.look.text.upcase == "INTERFACE" }? ID;
key_loop                          : 'LOOP'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("LOOP")}? ID;
key_new                           : { @input.look.text.upcase == "NEW" }? ID;
key_new_names                     : { @input.look.text.upcase == "NEW_NAMES" }? ID;
key_open                          : { @input.look.text.upcase == "OPEN" }? ID;
key_out                           : 'OUT'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("OUT")}? ID;
key_package                       : 'PACKAGE'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("PACKAGE")}? ID;
key_pragma                        : 'PRAGMA'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("PRAGMA")}? ID;
key_raise                         : 'RAISE'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("RAISE")}? ID;
key_range                         : { @input.look.text.upcase == "RANGE" }? ID;
key_read                          : { @input.look.text.upcase == "READ" }? ID;
key_record                        : 'RECORD'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("RECORD")}? ID;
key_ref                           : { @input.look.text.upcase == "REF" }? ID;
key_replace                       : { @input.look.text.upcase == "REPLACE" }? ID;
key_restrict_references           : { @input.look.text.upcase == "RESTRICT_REFERENCES" }? ID;
key_return                        : 'RETURN'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("RETURN")}? ID;
key_returning                     : 'RETURNING'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("RETURNING")}? ID;
key_reverse                       : { @input.look.text.upcase == "REVERSE" }? ID;
key_rollback                      : 'ROLLBACK'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("ROLLBACK")}? ID;
key_serially_reusable             : { @input.look.text.upcase == "SERIALLY_REUSABLE" }? ID;
key_subtype                       : { @input.look.text.upcase == "SUBTYPE" }? ID;
key_transaction                   : { @input.look.text.upcase == "TRANSACTION" }? ID;
key_type                          : { @input.look.text.upcase == "TYPE" }? ID;
key_using                         : { @input.look.text.upcase == "USING" }? ID;
key_varray                        : { @input.look.text.upcase == "VARRAY" }? ID;
key_varying                      : { @input.look.text.upcase == "VARYING" }? ID;
key_while                         : 'WHILE'; //{PLSQL3jParser.this.input.LT(1).getText().toUpperCase().equals("WHILE")}? ID;
key_work                          : { @input.look.text.upcase == "WORK" }? ID;

sql_identifier
	:	identifier
	|	'ROWID'
//	|	'ROWNUM'
	;

QUOTED_STRING
	:	( 'n' )? '\'' ( '\'\'' | ~('\'') )* '\''
	;
ID /*options { testLiterals=true; }*/
    :	'A' .. 'Z' ( 'A' .. 'Z' | '0' .. '9' | '_' | '$' | '#' )*
    |	DOUBLEQUOTED_STRING
    ;
SEMI
	:	';'
	;
COLON
	:	':'
	;
DOUBLEDOT
	:	POINT POINT
	;
DOT
	:	POINT
	;
fragment
POINT
	:	'.'
	;
COMMA
	:	','
	;
EXPONENT
	:	'**'
	;
ASTERISK
	:	'*'
	;
AT_SIGN
	:	'@'
	;
RPAREN
	:	')'
	;
LPAREN
	:	'('
	;
RBRACK
	:	']'
	;
LBRACK
	:	'['
	;
PLUS
	:	'+'
	;
MINUS
	:	'-'
	;
DIVIDE
	:	'/'
	;
EQ
	:	'='
	;
PERCENTAGE
	:	'%'
	;
LLABEL
	:	'<<'
	;
RLABEL
	:	'>>'
	;
ASSIGN
	:	':='
	;
ARROW
	:	'=>'
	;
VERTBAR
	:	'|'
	;
DOUBLEVERTBAR
	:	'||'
	;
NOT_EQ
	:	'<>' | '!=' | '^='
	;
LTH
	:	'<'
	;
LEQ
	:	'<='
	;
GTH
	:	'>'
	;
GEQ
	:	'>='
	;
NUMBER
	:	//( PLUS | MINUS )?
		(	( N POINT N ) => N POINT N
		|	POINT N
		|	N
		)
		( 'E' ( PLUS | MINUS )? N )?
    ;
fragment
N
	: '0' .. '9' ( '0' .. '9' )*
	;
QUOTE
	:	'\''
	;
fragment
DOUBLEQUOTED_STRING
	:	'"' ( ~('"') )* '"'
	;
WS	:	(' '|'\r'|'\t'|'\n') { $channel = HIDDEN }
	;
SL_COMMENT
	:	'--' ~('\n'|'\r')* '\r'? '\n' { $channel = HIDDEN }
	;
ML_COMMENT
	:	'/*' ( options {greedy=false;} : . )* '*/' { $channel = HIDDEN }
	;
TYPE_ATTR
	:	'%TYPE'
	;
ROWTYPE_ATTR
	:	'%ROWTYPE'
	;
NOTFOUND_ATTR
	:	'%NOTFOUND'
	;
FOUND_ATTR
	:	'%FOUND'
	;
ISOPEN_ATTR
	:	'%ISOPEN'
	;
  
ROWCOUNT_ATTR
	:	'%ROWCOUNT'
	;
  
BULK_ROWCOUNT_ATTR
	:	'%BULK_ROWCOUNT'
	;
  
CHARSET_ATTR
	:	'%CHARSET'
	;

