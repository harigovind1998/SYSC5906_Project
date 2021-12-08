set lang "C"
set moduleName "extend_matrix"
set moduleIsExternC "1"
set rawDecl ""
set globalVariable ""
set portList ""
set portName "gmem"
set portInterface "wire"
set portData "unsigned int"
set portPointer "1"
set portArrayDim [list 0]
set portConst "0"
set portVolatile "1"
set portArrayOpt ""
lappend portList [list $portName $portInterface $portData $portPointer $portArrayDim $portConst $portVolatile $portArrayOpt]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "group_id_x" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "group_id_y" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "group_id_z" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "global_offset_x" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "global_offset_y" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "global_offset_z" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned long long"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "A" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "wa" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "ha" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "p" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned long long"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "B" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "wb" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "hb" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set globalAPint ""
set returnAPInt ""
set hasCPPAPInt 0
set argAPInt ""
set hasCPPAPFix 0
set hasSCFix 0
set hasCBool 0
set hasCPPComplex 0
set isTemplateTop 0
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPInt $returnAPInt $dataPackList]
