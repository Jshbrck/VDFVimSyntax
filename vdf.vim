" Vim syntax file
" Language:       Visual DataFlex 
" Maintainer:     Joshua Brock   
" Last Revision:  27 October 2018  
" Reference URL:  http://vim.wikia.com/wiki/Creating_your_own_syntax_files  
" VIM Syntax Man: http://vimdoc.sourceforge.net/htmldoc/syntax.html (OR in vim use :help syntax)

"Check if an earlier file exists, exists if so
if exists("b:current_syntax")
  finish
endif

syn case ignore

syn region  comment         start="//" keepend end="$" 
syn region  underlined         start="{" end="}" oneline
syn region  string          start=+"+ end=+"+ oneline
syn region  string          start=+'+ end=+'+ oneline
syn match   number          "\<\d\+U\=L\=\>"
syn match   constant        "@_\w*"
syn keyword constant        define
syn match   preproc         "^\s*#\w*"
syn keyword statement       Class End_Class Object End_Object Virtual_Structure End_Virtual_Structure 
syn keyword statement       Virtual_Field deferred_view field cd_end_object begin_row end_row
syn keyword statement       activate_view cd_popup_object external_function enum_list end_enum_list
syn keyword statement       struct end_struct
syn keyword operator        of to is a an eq ne ge gt le lt and or not
syn match   operator        "\(=\|<\|>\|-\|+\|\.\|*\)"
syn keyword include         use use_file use_extend declare_datafile open close
syn keyword conditional     if ifnot else begin end while loop for repeat until case break
syn keyword type            integer string variant boolean date sysdate sysdate4 handle pointer dword 
syn keyword type            float bigint decimal datetime char currency number real global_variable
syn keyword type            global local true false found none
syn keyword function        function procedure end_function end_procedure register_function 
syn keyword function        register_procedure register_object function_return procedure_return 
syn keyword function        property returns move get set send broadcast delegate forward clear
syn keyword function        start_ui entry_item On_Key delete make_directory abort runprogram wait
syn keyword function        import_class_protocol self find by index append extract_field_nr constrain
syn keyword function        dffont dffontsize dfbeginheader dfheaderframe dfheaderpos dfwriteln 
syn keyword function        dfendheader dfwritepos dfheadermargin dfwriteline increment decrement
syn keyword function        zerostring get_attribute get_field_value relate constrained_find vfind
syn keyword function        dfwritelnpos dfheaderlinecheck dfheaderwrap report_breaks saverecord lock
syn keyword function        unlock get_current_directory set_directory direct_input close_input read
syn keyword function        readln get_fieldnumber set_date_attribute writeln close_output append_output
syn keyword function        direct_output set_attribute login
