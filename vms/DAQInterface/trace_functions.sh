toffSg is a function
toffSg () 
{ 
    ${TRACE_BIN}/trace_cntl lvlclrg 0 `bitN_to_mask "$@"` 0
}
toffMg is a function
toffMg () 
{ 
    ${TRACE_BIN}/trace_cntl lvlclrg `bitN_to_mask "$@"` 0 0
}
tonSg is a function
tonSg () 
{ 
    ${TRACE_BIN}/trace_cntl lvlsetg 0 `bitN_to_mask "$@"` 0;
    ${TRACE_BIN}/trace_cntl modeS 1
}
tonMg is a function
tonMg () 
{ 
    ${TRACE_BIN}/trace_cntl lvlsetg `bitN_to_mask "$@"` 0 0;
    ${TRACE_BIN}/trace_cntl modeM 1
}
tmodeS is a function
tmodeS () 
{ 
    ${TRACE_BIN}/trace_cntl modeS "$@"
}
tmodeM is a function
tmodeM () 
{ 
    ${TRACE_BIN}/trace_cntl modeM "$@"
}
