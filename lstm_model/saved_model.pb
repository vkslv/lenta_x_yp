™’
ЊО
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628љљ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
А
Adam/v/dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_22/bias
y
(Adam/v/dense_22/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_22/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_22/bias
y
(Adam/m/dense_22/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_22/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/v/dense_22/kernel
Б
*Adam/v/dense_22/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_22/kernel*
_output_shapes

: *
dtype0
И
Adam/m/dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/m/dense_22/kernel
Б
*Adam/m/dense_22/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_22/kernel*
_output_shapes

: *
dtype0
У
Adam/v/lstm_34/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_nameAdam/v/lstm_34/lstm_cell/bias
М
1Adam/v/lstm_34/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_34/lstm_cell/bias*
_output_shapes	
:А*
dtype0
У
Adam/m/lstm_34/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_nameAdam/m/lstm_34/lstm_cell/bias
М
1Adam/m/lstm_34/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_34/lstm_cell/bias*
_output_shapes	
:А*
dtype0
ѓ
)Adam/v/lstm_34/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*:
shared_name+)Adam/v/lstm_34/lstm_cell/recurrent_kernel
®
=Adam/v/lstm_34/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/v/lstm_34/lstm_cell/recurrent_kernel*
_output_shapes
:	 А*
dtype0
ѓ
)Adam/m/lstm_34/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*:
shared_name+)Adam/m/lstm_34/lstm_cell/recurrent_kernel
®
=Adam/m/lstm_34/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/m/lstm_34/lstm_cell/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Ь
Adam/v/lstm_34/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
»А*0
shared_name!Adam/v/lstm_34/lstm_cell/kernel
Х
3Adam/v/lstm_34/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_34/lstm_cell/kernel* 
_output_shapes
:
»А*
dtype0
Ь
Adam/m/lstm_34/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
»А*0
shared_name!Adam/m/lstm_34/lstm_cell/kernel
Х
3Adam/m/lstm_34/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_34/lstm_cell/kernel* 
_output_shapes
:
»А*
dtype0
У
Adam/v/lstm_33/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*.
shared_nameAdam/v/lstm_33/lstm_cell/bias
М
1Adam/v/lstm_33/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_33/lstm_cell/bias*
_output_shapes	
:†*
dtype0
У
Adam/m/lstm_33/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*.
shared_nameAdam/m/lstm_33/lstm_cell/bias
М
1Adam/m/lstm_33/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_33/lstm_cell/bias*
_output_shapes	
:†*
dtype0
∞
)Adam/v/lstm_33/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
»†*:
shared_name+)Adam/v/lstm_33/lstm_cell/recurrent_kernel
©
=Adam/v/lstm_33/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/v/lstm_33/lstm_cell/recurrent_kernel* 
_output_shapes
:
»†*
dtype0
∞
)Adam/m/lstm_33/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
»†*:
shared_name+)Adam/m/lstm_33/lstm_cell/recurrent_kernel
©
=Adam/m/lstm_33/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/m/lstm_33/lstm_cell/recurrent_kernel* 
_output_shapes
:
»†*
dtype0
Ы
Adam/v/lstm_33/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	†*0
shared_name!Adam/v/lstm_33/lstm_cell/kernel
Ф
3Adam/v/lstm_33/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_33/lstm_cell/kernel*
_output_shapes
:	†*
dtype0
Ы
Adam/m/lstm_33/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	†*0
shared_name!Adam/m/lstm_33/lstm_cell/kernel
Ф
3Adam/m/lstm_33/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_33/lstm_cell/kernel*
_output_shapes
:	†*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Е
lstm_34/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_namelstm_34/lstm_cell/bias
~
*lstm_34/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell/bias*
_output_shapes	
:А*
dtype0
°
"lstm_34/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*3
shared_name$"lstm_34/lstm_cell/recurrent_kernel
Ъ
6lstm_34/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp"lstm_34/lstm_cell/recurrent_kernel*
_output_shapes
:	 А*
dtype0
О
lstm_34/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
»А*)
shared_namelstm_34/lstm_cell/kernel
З
,lstm_34/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell/kernel* 
_output_shapes
:
»А*
dtype0
Е
lstm_33/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*'
shared_namelstm_33/lstm_cell/bias
~
*lstm_33/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_33/lstm_cell/bias*
_output_shapes	
:†*
dtype0
Ґ
"lstm_33/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
»†*3
shared_name$"lstm_33/lstm_cell/recurrent_kernel
Ы
6lstm_33/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp"lstm_33/lstm_cell/recurrent_kernel* 
_output_shapes
:
»†*
dtype0
Н
lstm_33/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	†*)
shared_namelstm_33/lstm_cell/kernel
Ж
,lstm_33/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_33/lstm_cell/kernel*
_output_shapes
:	†*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

: *
dtype0
И
serving_default_lstm_33_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
Ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_33_inputlstm_33/lstm_cell/kernel"lstm_33/lstm_cell/recurrent_kernellstm_33/lstm_cell/biaslstm_34/lstm_cell/kernel"lstm_34/lstm_cell/recurrent_kernellstm_34/lstm_cell/biasdense_22/kerneldense_22/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_248170

NoOpNoOp
я?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ъ?
valueР?BН? BЖ?
Ѕ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
¶
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
<
'0
(1
)2
*3
+4
,5
%6
&7*
<
'0
(1
)2
*3
+4
,5
%6
&7*
* 
∞
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

2trace_0
3trace_1* 

4trace_0
5trace_1* 
* 
Б
6
_variables
7_iterations
8_learning_rate
9_index_dict
:
_momentums
;_velocities
<_update_step_xla*

=serving_default* 

'0
(1
)2*

'0
(1
)2*
* 
Я

>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_3* 
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
* 
г
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator
S
state_size

'kernel
(recurrent_kernel
)bias*
* 

*0
+1
,2*

*0
+1
,2*
* 
Я

Tstates
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
6
^trace_0
_trace_1
`trace_2
atrace_3* 
* 
г
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator
i
state_size

*kernel
+recurrent_kernel
,bias*
* 

%0
&1*

%0
&1*
* 
У
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

otrace_0* 

ptrace_0* 
_Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_22/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_33/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"lstm_33/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUElstm_33/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_34/lstm_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"lstm_34/lstm_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUElstm_34/lstm_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

q0
r1*
* 
* 
* 
* 
* 
* 
Е
70
s1
t2
u3
v4
w5
x6
y7
z8
{9
|10
}11
~12
13
А14
Б15
В16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
=
s0
u1
w2
y3
{4
}5
6
Б7*
>
t0
v1
x2
z3
|4
~5
А6
В7*
r
Гtrace_0
Дtrace_1
Еtrace_2
Жtrace_3
Зtrace_4
Иtrace_5
Йtrace_6
Кtrace_7* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

'0
(1
)2*

'0
(1
)2*
* 
Ш
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

Рtrace_0
Сtrace_1* 

Тtrace_0
Уtrace_1* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

*0
+1
,2*

*0
+1
,2*
* 
Ш
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

Щtrace_0
Ъtrace_1* 

Ыtrace_0
Ьtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Э	variables
Ю	keras_api

Яtotal

†count*
M
°	variables
Ґ	keras_api

£total

§count
•
_fn_kwargs*
jd
VARIABLE_VALUEAdam/m/lstm_33/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_33/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/m/lstm_33/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/v/lstm_33/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/lstm_33/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/lstm_33/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/lstm_34/lstm_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_34/lstm_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/m/lstm_34/lstm_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Adam/v/lstm_34/lstm_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_34/lstm_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_34/lstm_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_22/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_22/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_22/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_22/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Я0
†1*

Э	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

£0
§1*

°	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_22/kerneldense_22/biaslstm_33/lstm_cell/kernel"lstm_33/lstm_cell/recurrent_kernellstm_33/lstm_cell/biaslstm_34/lstm_cell/kernel"lstm_34/lstm_cell/recurrent_kernellstm_34/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_33/lstm_cell/kernelAdam/v/lstm_33/lstm_cell/kernel)Adam/m/lstm_33/lstm_cell/recurrent_kernel)Adam/v/lstm_33/lstm_cell/recurrent_kernelAdam/m/lstm_33/lstm_cell/biasAdam/v/lstm_33/lstm_cell/biasAdam/m/lstm_34/lstm_cell/kernelAdam/v/lstm_34/lstm_cell/kernel)Adam/m/lstm_34/lstm_cell/recurrent_kernel)Adam/v/lstm_34/lstm_cell/recurrent_kernelAdam/m/lstm_34/lstm_cell/biasAdam/v/lstm_34/lstm_cell/biasAdam/m/dense_22/kernelAdam/v/dense_22/kernelAdam/m/dense_22/biasAdam/v/dense_22/biastotal_1count_1totalcountConst*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_249867
≈
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_22/kerneldense_22/biaslstm_33/lstm_cell/kernel"lstm_33/lstm_cell/recurrent_kernellstm_33/lstm_cell/biaslstm_34/lstm_cell/kernel"lstm_34/lstm_cell/recurrent_kernellstm_34/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_33/lstm_cell/kernelAdam/v/lstm_33/lstm_cell/kernel)Adam/m/lstm_33/lstm_cell/recurrent_kernel)Adam/v/lstm_33/lstm_cell/recurrent_kernelAdam/m/lstm_33/lstm_cell/biasAdam/v/lstm_33/lstm_cell/biasAdam/m/lstm_34/lstm_cell/kernelAdam/v/lstm_34/lstm_cell/kernel)Adam/m/lstm_34/lstm_cell/recurrent_kernel)Adam/v/lstm_34/lstm_cell/recurrent_kernelAdam/m/lstm_34/lstm_cell/biasAdam/v/lstm_34/lstm_cell/biasAdam/m/dense_22/kernelAdam/v/dense_22/kernelAdam/m/dense_22/biasAdam/v/dense_22/biastotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_249966Й¶
д%
–
while_body_247293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_247317_0:
»А+
while_lstm_cell_247319_0:	 А'
while_lstm_cell_247321_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_247317:
»А)
while_lstm_cell_247319:	 А%
while_lstm_cell_247321:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0І
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_247317_0while_lstm_cell_247319_0while_lstm_cell_247321_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247278r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_247317while_lstm_cell_247317_0"2
while_lstm_cell_247319while_lstm_cell_247319_0"2
while_lstm_cell_247321while_lstm_cell_247321_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name247317:&	"
 
_user_specified_name247319:&
"
 
_user_specified_name247321
Ј
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249633

inputs
states_0
states_12
matmul_readvariableop_resource:
»А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€»:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
К:
Ј
while_body_249220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
»АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
»АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0Ш
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
»А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ П
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ У
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
∆	
√
while_cond_246943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_246943___redundant_placeholder04
0while_while_cond_246943___redundant_placeholder14
0while_while_cond_246943___redundant_placeholder24
0while_while_cond_246943___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
÷J
К
C__inference_lstm_34_layer_call_and_return_conditional_losses_249450

inputs<
(lstm_cell_matmul_readvariableop_resource:
»А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskК
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_249365*
condR
while_cond_249364*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€»: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
с
ы
'sequential_31_lstm_33_while_cond_246491H
Dsequential_31_lstm_33_while_sequential_31_lstm_33_while_loop_counterN
Jsequential_31_lstm_33_while_sequential_31_lstm_33_while_maximum_iterations+
'sequential_31_lstm_33_while_placeholder-
)sequential_31_lstm_33_while_placeholder_1-
)sequential_31_lstm_33_while_placeholder_2-
)sequential_31_lstm_33_while_placeholder_3J
Fsequential_31_lstm_33_while_less_sequential_31_lstm_33_strided_slice_1`
\sequential_31_lstm_33_while_sequential_31_lstm_33_while_cond_246491___redundant_placeholder0`
\sequential_31_lstm_33_while_sequential_31_lstm_33_while_cond_246491___redundant_placeholder1`
\sequential_31_lstm_33_while_sequential_31_lstm_33_while_cond_246491___redundant_placeholder2`
\sequential_31_lstm_33_while_sequential_31_lstm_33_while_cond_246491___redundant_placeholder3(
$sequential_31_lstm_33_while_identity
Ї
 sequential_31/lstm_33/while/LessLess'sequential_31_lstm_33_while_placeholderFsequential_31_lstm_33_while_less_sequential_31_lstm_33_strided_slice_1*
T0*
_output_shapes
: w
$sequential_31/lstm_33/while/IdentityIdentity$sequential_31/lstm_33/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_31_lstm_33_while_identity-sequential_31/lstm_33/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::` \

_output_shapes
: 
B
_user_specified_name*(sequential_31/lstm_33/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_31/lstm_33/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:]Y

_output_shapes
: 
?
_user_specified_name'%sequential_31/lstm_33/strided_slice_1:

_output_shapes
:
…
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249567

inputs
states_0
states_11
matmul_readvariableop_resource:	†4
 matmul_1_readvariableop_resource:
»†.
biasadd_readvariableop_resource:	†
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€»V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€»O
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€»`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€»L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€»:€€€€€€€€€»: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
¬	
√
while_cond_249074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249074___redundant_placeholder04
0while_while_cond_249074___redundant_placeholder14
0while_while_cond_249074___redundant_placeholder24
0while_while_cond_249074___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
¬	
√
while_cond_247630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247630___redundant_placeholder04
0while_while_cond_247630___redundant_placeholder14
0while_while_cond_247630___redundant_placeholder24
0while_while_cond_247630___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
д%
–
while_body_247146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_247170_0:
»А+
while_lstm_cell_247172_0:	 А'
while_lstm_cell_247174_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_247170:
»А)
while_lstm_cell_247172:	 А%
while_lstm_cell_247174:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0І
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_247170_0while_lstm_cell_247172_0while_lstm_cell_247174_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247131r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_247170while_lstm_cell_247170_0"2
while_lstm_cell_247172while_lstm_cell_247172_0"2
while_lstm_cell_247174while_lstm_cell_247174_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name247170:&	"
 
_user_specified_name247172:&
"
 
_user_specified_name247174
А9
Ј
while_body_248742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	†F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
»†@
1while_lstm_cell_biasadd_readvariableop_resource_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	†D
0while_lstm_cell_matmul_1_readvariableop_resource:
»†>
/while_lstm_cell_biasadd_readvariableop_resource:	†ИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	†*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Ь
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
»†*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:†*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»Б
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€»o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»Р
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Е
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»Ф
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»¬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
К:
Ј
while_body_247631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
»АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
»АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0Ш
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
»А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ П
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ У
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
£J
М
C__inference_lstm_33_layer_call_and_return_conditional_losses_248397
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	†>
*lstm_cell_matmul_1_readvariableop_resource:
»†8
)lstm_cell_biasadd_readvariableop_resource:	†
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†О
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†З
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»В
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_248313*
condR
while_cond_248312*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
А9
Ј
while_body_248599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	†F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
»†@
1while_lstm_cell_biasadd_readvariableop_resource_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	†D
0while_lstm_cell_matmul_1_readvariableop_resource:
»†>
/while_lstm_cell_biasadd_readvariableop_resource:	†ИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	†*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Ь
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
»†*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:†*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»Б
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€»o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»Р
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Е
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»Ф
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»¬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
»—
є	
!__inference__wrapped_model_246723
lstm_33_inputQ
>sequential_31_lstm_33_lstm_cell_matmul_readvariableop_resource:	†T
@sequential_31_lstm_33_lstm_cell_matmul_1_readvariableop_resource:
»†N
?sequential_31_lstm_33_lstm_cell_biasadd_readvariableop_resource:	†R
>sequential_31_lstm_34_lstm_cell_matmul_readvariableop_resource:
»АS
@sequential_31_lstm_34_lstm_cell_matmul_1_readvariableop_resource:	 АN
?sequential_31_lstm_34_lstm_cell_biasadd_readvariableop_resource:	АG
5sequential_31_dense_22_matmul_readvariableop_resource: D
6sequential_31_dense_22_biasadd_readvariableop_resource:
identityИҐ-sequential_31/dense_22/BiasAdd/ReadVariableOpҐ,sequential_31/dense_22/MatMul/ReadVariableOpҐ6sequential_31/lstm_33/lstm_cell/BiasAdd/ReadVariableOpҐ5sequential_31/lstm_33/lstm_cell/MatMul/ReadVariableOpҐ7sequential_31/lstm_33/lstm_cell/MatMul_1/ReadVariableOpҐsequential_31/lstm_33/whileҐ6sequential_31/lstm_34/lstm_cell/BiasAdd/ReadVariableOpҐ5sequential_31/lstm_34/lstm_cell/MatMul/ReadVariableOpҐ7sequential_31/lstm_34/lstm_cell/MatMul_1/ReadVariableOpҐsequential_31/lstm_34/whilef
sequential_31/lstm_33/ShapeShapelstm_33_input*
T0*
_output_shapes
::нѕs
)sequential_31/lstm_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_31/lstm_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_31/lstm_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
#sequential_31/lstm_33/strided_sliceStridedSlice$sequential_31/lstm_33/Shape:output:02sequential_31/lstm_33/strided_slice/stack:output:04sequential_31/lstm_33/strided_slice/stack_1:output:04sequential_31/lstm_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_31/lstm_33/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»µ
"sequential_31/lstm_33/zeros/packedPack,sequential_31/lstm_33/strided_slice:output:0-sequential_31/lstm_33/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_31/lstm_33/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ѓ
sequential_31/lstm_33/zerosFill+sequential_31/lstm_33/zeros/packed:output:0*sequential_31/lstm_33/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»i
&sequential_31/lstm_33/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»є
$sequential_31/lstm_33/zeros_1/packedPack,sequential_31/lstm_33/strided_slice:output:0/sequential_31/lstm_33/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_31/lstm_33/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    µ
sequential_31/lstm_33/zeros_1Fill-sequential_31/lstm_33/zeros_1/packed:output:0,sequential_31/lstm_33/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»y
$sequential_31/lstm_33/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
sequential_31/lstm_33/transpose	Transposelstm_33_input-sequential_31/lstm_33/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€~
sequential_31/lstm_33/Shape_1Shape#sequential_31/lstm_33/transpose:y:0*
T0*
_output_shapes
::нѕu
+sequential_31/lstm_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
%sequential_31/lstm_33/strided_slice_1StridedSlice&sequential_31/lstm_33/Shape_1:output:04sequential_31/lstm_33/strided_slice_1/stack:output:06sequential_31/lstm_33/strided_slice_1/stack_1:output:06sequential_31/lstm_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_31/lstm_33/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ц
#sequential_31/lstm_33/TensorArrayV2TensorListReserve:sequential_31/lstm_33/TensorArrayV2/element_shape:output:0.sequential_31/lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ь
Ksequential_31/lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ґ
=sequential_31/lstm_33/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_31/lstm_33/transpose:y:0Tsequential_31/lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“u
+sequential_31/lstm_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:„
%sequential_31/lstm_33/strided_slice_2StridedSlice#sequential_31/lstm_33/transpose:y:04sequential_31/lstm_33/strided_slice_2/stack:output:06sequential_31/lstm_33/strided_slice_2/stack_1:output:06sequential_31/lstm_33/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskµ
5sequential_31/lstm_33/lstm_cell/MatMul/ReadVariableOpReadVariableOp>sequential_31_lstm_33_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0“
&sequential_31/lstm_33/lstm_cell/MatMulMatMul.sequential_31/lstm_33/strided_slice_2:output:0=sequential_31/lstm_33/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Ї
7sequential_31/lstm_33/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp@sequential_31_lstm_33_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0ћ
(sequential_31/lstm_33/lstm_cell/MatMul_1MatMul$sequential_31/lstm_33/zeros:output:0?sequential_31/lstm_33/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†≈
#sequential_31/lstm_33/lstm_cell/addAddV20sequential_31/lstm_33/lstm_cell/MatMul:product:02sequential_31/lstm_33/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†≥
6sequential_31/lstm_33/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?sequential_31_lstm_33_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0ќ
'sequential_31/lstm_33/lstm_cell/BiasAddBiasAdd'sequential_31/lstm_33/lstm_cell/add:z:0>sequential_31/lstm_33/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†q
/sequential_31/lstm_33/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%sequential_31/lstm_33/lstm_cell/splitSplit8sequential_31/lstm_33/lstm_cell/split/split_dim:output:00sequential_31/lstm_33/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitХ
'sequential_31/lstm_33/lstm_cell/SigmoidSigmoid.sequential_31/lstm_33/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»Ч
)sequential_31/lstm_33/lstm_cell/Sigmoid_1Sigmoid.sequential_31/lstm_33/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»і
#sequential_31/lstm_33/lstm_cell/mulMul-sequential_31/lstm_33/lstm_cell/Sigmoid_1:y:0&sequential_31/lstm_33/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€»П
$sequential_31/lstm_33/lstm_cell/ReluRelu.sequential_31/lstm_33/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»ј
%sequential_31/lstm_33/lstm_cell/mul_1Mul+sequential_31/lstm_33/lstm_cell/Sigmoid:y:02sequential_31/lstm_33/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»µ
%sequential_31/lstm_33/lstm_cell/add_1AddV2'sequential_31/lstm_33/lstm_cell/mul:z:0)sequential_31/lstm_33/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»Ч
)sequential_31/lstm_33/lstm_cell/Sigmoid_2Sigmoid.sequential_31/lstm_33/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»М
&sequential_31/lstm_33/lstm_cell/Relu_1Relu)sequential_31/lstm_33/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»ƒ
%sequential_31/lstm_33/lstm_cell/mul_2Mul-sequential_31/lstm_33/lstm_cell/Sigmoid_2:y:04sequential_31/lstm_33/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Д
3sequential_31/lstm_33/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   ъ
%sequential_31/lstm_33/TensorArrayV2_1TensorListReserve<sequential_31/lstm_33/TensorArrayV2_1/element_shape:output:0.sequential_31/lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“\
sequential_31/lstm_33/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_31/lstm_33/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€j
(sequential_31/lstm_33/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
sequential_31/lstm_33/whileWhile1sequential_31/lstm_33/while/loop_counter:output:07sequential_31/lstm_33/while/maximum_iterations:output:0#sequential_31/lstm_33/time:output:0.sequential_31/lstm_33/TensorArrayV2_1:handle:0$sequential_31/lstm_33/zeros:output:0&sequential_31/lstm_33/zeros_1:output:0.sequential_31/lstm_33/strided_slice_1:output:0Msequential_31/lstm_33/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_31_lstm_33_lstm_cell_matmul_readvariableop_resource@sequential_31_lstm_33_lstm_cell_matmul_1_readvariableop_resource?sequential_31_lstm_33_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*3
body+R)
'sequential_31_lstm_33_while_body_246492*3
cond+R)
'sequential_31_lstm_33_while_cond_246491*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Ч
Fsequential_31/lstm_33/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Е
8sequential_31/lstm_33/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_31/lstm_33/while:output:3Osequential_31/lstm_33/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€»*
element_dtype0~
+sequential_31/lstm_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€w
-sequential_31/lstm_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
%sequential_31/lstm_33/strided_slice_3StridedSliceAsequential_31/lstm_33/TensorArrayV2Stack/TensorListStack:tensor:04sequential_31/lstm_33/strided_slice_3/stack:output:06sequential_31/lstm_33/strided_slice_3/stack_1:output:06sequential_31/lstm_33/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_mask{
&sequential_31/lstm_33/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ў
!sequential_31/lstm_33/transpose_1	TransposeAsequential_31/lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_31/lstm_33/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»q
sequential_31/lstm_33/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ~
sequential_31/lstm_34/ShapeShape%sequential_31/lstm_33/transpose_1:y:0*
T0*
_output_shapes
::нѕs
)sequential_31/lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_31/lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_31/lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
#sequential_31/lstm_34/strided_sliceStridedSlice$sequential_31/lstm_34/Shape:output:02sequential_31/lstm_34/strided_slice/stack:output:04sequential_31/lstm_34/strided_slice/stack_1:output:04sequential_31/lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_31/lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : µ
"sequential_31/lstm_34/zeros/packedPack,sequential_31/lstm_34/strided_slice:output:0-sequential_31/lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_31/lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
sequential_31/lstm_34/zerosFill+sequential_31/lstm_34/zeros/packed:output:0*sequential_31/lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ h
&sequential_31/lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : є
$sequential_31/lstm_34/zeros_1/packedPack,sequential_31/lstm_34/strided_slice:output:0/sequential_31/lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_31/lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
sequential_31/lstm_34/zeros_1Fill-sequential_31/lstm_34/zeros_1/packed:output:0,sequential_31/lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ y
$sequential_31/lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
sequential_31/lstm_34/transpose	Transpose%sequential_31/lstm_33/transpose_1:y:0-sequential_31/lstm_34/transpose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»~
sequential_31/lstm_34/Shape_1Shape#sequential_31/lstm_34/transpose:y:0*
T0*
_output_shapes
::нѕu
+sequential_31/lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
%sequential_31/lstm_34/strided_slice_1StridedSlice&sequential_31/lstm_34/Shape_1:output:04sequential_31/lstm_34/strided_slice_1/stack:output:06sequential_31/lstm_34/strided_slice_1/stack_1:output:06sequential_31/lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_31/lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ц
#sequential_31/lstm_34/TensorArrayV2TensorListReserve:sequential_31/lstm_34/TensorArrayV2/element_shape:output:0.sequential_31/lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ь
Ksequential_31/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Ґ
=sequential_31/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_31/lstm_34/transpose:y:0Tsequential_31/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“u
+sequential_31/lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_31/lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
%sequential_31/lstm_34/strided_slice_2StridedSlice#sequential_31/lstm_34/transpose:y:04sequential_31/lstm_34/strided_slice_2/stack:output:06sequential_31/lstm_34/strided_slice_2/stack_1:output:06sequential_31/lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskґ
5sequential_31/lstm_34/lstm_cell/MatMul/ReadVariableOpReadVariableOp>sequential_31_lstm_34_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0“
&sequential_31/lstm_34/lstm_cell/MatMulMatMul.sequential_31/lstm_34/strided_slice_2:output:0=sequential_31/lstm_34/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ає
7sequential_31/lstm_34/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp@sequential_31_lstm_34_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0ћ
(sequential_31/lstm_34/lstm_cell/MatMul_1MatMul$sequential_31/lstm_34/zeros:output:0?sequential_31/lstm_34/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#sequential_31/lstm_34/lstm_cell/addAddV20sequential_31/lstm_34/lstm_cell/MatMul:product:02sequential_31/lstm_34/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
6sequential_31/lstm_34/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?sequential_31_lstm_34_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ќ
'sequential_31/lstm_34/lstm_cell/BiasAddBiasAdd'sequential_31/lstm_34/lstm_cell/add:z:0>sequential_31/lstm_34/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/sequential_31/lstm_34/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
%sequential_31/lstm_34/lstm_cell/splitSplit8sequential_31/lstm_34/lstm_cell/split/split_dim:output:00sequential_31/lstm_34/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitФ
'sequential_31/lstm_34/lstm_cell/SigmoidSigmoid.sequential_31/lstm_34/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ц
)sequential_31/lstm_34/lstm_cell/Sigmoid_1Sigmoid.sequential_31/lstm_34/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ≥
#sequential_31/lstm_34/lstm_cell/mulMul-sequential_31/lstm_34/lstm_cell/Sigmoid_1:y:0&sequential_31/lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$sequential_31/lstm_34/lstm_cell/ReluRelu.sequential_31/lstm_34/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ њ
%sequential_31/lstm_34/lstm_cell/mul_1Mul+sequential_31/lstm_34/lstm_cell/Sigmoid:y:02sequential_31/lstm_34/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ і
%sequential_31/lstm_34/lstm_cell/add_1AddV2'sequential_31/lstm_34/lstm_cell/mul:z:0)sequential_31/lstm_34/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Ц
)sequential_31/lstm_34/lstm_cell/Sigmoid_2Sigmoid.sequential_31/lstm_34/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Л
&sequential_31/lstm_34/lstm_cell/Relu_1Relu)sequential_31/lstm_34/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ √
%sequential_31/lstm_34/lstm_cell/mul_2Mul-sequential_31/lstm_34/lstm_cell/Sigmoid_2:y:04sequential_31/lstm_34/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
3sequential_31/lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    t
2sequential_31/lstm_34/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :З
%sequential_31/lstm_34/TensorArrayV2_1TensorListReserve<sequential_31/lstm_34/TensorArrayV2_1/element_shape:output:0;sequential_31/lstm_34/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“\
sequential_31/lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_31/lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€j
(sequential_31/lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
sequential_31/lstm_34/whileWhile1sequential_31/lstm_34/while/loop_counter:output:07sequential_31/lstm_34/while/maximum_iterations:output:0#sequential_31/lstm_34/time:output:0.sequential_31/lstm_34/TensorArrayV2_1:handle:0$sequential_31/lstm_34/zeros:output:0&sequential_31/lstm_34/zeros_1:output:0.sequential_31/lstm_34/strided_slice_1:output:0Msequential_31/lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_31_lstm_34_lstm_cell_matmul_readvariableop_resource@sequential_31_lstm_34_lstm_cell_matmul_1_readvariableop_resource?sequential_31_lstm_34_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*3
body+R)
'sequential_31_lstm_34_while_body_246632*3
cond+R)
'sequential_31_lstm_34_while_cond_246631*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Ч
Fsequential_31/lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    Ш
8sequential_31/lstm_34/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_31/lstm_34/while:output:3Osequential_31/lstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elements~
+sequential_31/lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€w
-sequential_31/lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_31/lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
%sequential_31/lstm_34/strided_slice_3StridedSliceAsequential_31/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:04sequential_31/lstm_34/strided_slice_3/stack:output:06sequential_31/lstm_34/strided_slice_3/stack_1:output:06sequential_31/lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask{
&sequential_31/lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
!sequential_31/lstm_34/transpose_1	TransposeAsequential_31/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_31/lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ q
sequential_31/lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ґ
,sequential_31/dense_22/MatMul/ReadVariableOpReadVariableOp5sequential_31_dense_22_matmul_readvariableop_resource*
_output_shapes

: *
dtype0њ
sequential_31/dense_22/MatMulMatMul.sequential_31/lstm_34/strided_slice_3:output:04sequential_31/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
-sequential_31/dense_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_31_dense_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ї
sequential_31/dense_22/BiasAddBiasAdd'sequential_31/dense_22/MatMul:product:05sequential_31/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€v
IdentityIdentity'sequential_31/dense_22/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€У
NoOpNoOp.^sequential_31/dense_22/BiasAdd/ReadVariableOp-^sequential_31/dense_22/MatMul/ReadVariableOp7^sequential_31/lstm_33/lstm_cell/BiasAdd/ReadVariableOp6^sequential_31/lstm_33/lstm_cell/MatMul/ReadVariableOp8^sequential_31/lstm_33/lstm_cell/MatMul_1/ReadVariableOp^sequential_31/lstm_33/while7^sequential_31/lstm_34/lstm_cell/BiasAdd/ReadVariableOp6^sequential_31/lstm_34/lstm_cell/MatMul/ReadVariableOp8^sequential_31/lstm_34/lstm_cell/MatMul_1/ReadVariableOp^sequential_31/lstm_34/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : 2^
-sequential_31/dense_22/BiasAdd/ReadVariableOp-sequential_31/dense_22/BiasAdd/ReadVariableOp2\
,sequential_31/dense_22/MatMul/ReadVariableOp,sequential_31/dense_22/MatMul/ReadVariableOp2p
6sequential_31/lstm_33/lstm_cell/BiasAdd/ReadVariableOp6sequential_31/lstm_33/lstm_cell/BiasAdd/ReadVariableOp2n
5sequential_31/lstm_33/lstm_cell/MatMul/ReadVariableOp5sequential_31/lstm_33/lstm_cell/MatMul/ReadVariableOp2r
7sequential_31/lstm_33/lstm_cell/MatMul_1/ReadVariableOp7sequential_31/lstm_33/lstm_cell/MatMul_1/ReadVariableOp2:
sequential_31/lstm_33/whilesequential_31/lstm_33/while2p
6sequential_31/lstm_34/lstm_cell/BiasAdd/ReadVariableOp6sequential_31/lstm_34/lstm_cell/BiasAdd/ReadVariableOp2n
5sequential_31/lstm_34/lstm_cell/MatMul/ReadVariableOp5sequential_31/lstm_34/lstm_cell/MatMul/ReadVariableOp2r
7sequential_31/lstm_34/lstm_cell/MatMul_1/ReadVariableOp7sequential_31/lstm_34/lstm_cell/MatMul_1/ReadVariableOp2:
sequential_31/lstm_34/whilesequential_31/lstm_34/while:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_33_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ё
∆
$__inference_signature_wrapper_248170
lstm_33_input
unknown:	†
	unknown_0:
»†
	unknown_1:	†
	unknown_2:
»А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_246723o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_33_input:&"
 
_user_specified_name248152:&"
 
_user_specified_name248154:&"
 
_user_specified_name248156:&"
 
_user_specified_name248158:&"
 
_user_specified_name248160:&"
 
_user_specified_name248162:&"
 
_user_specified_name248164:&"
 
_user_specified_name248166
£J
М
C__inference_lstm_33_layer_call_and_return_conditional_losses_248540
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	†>
*lstm_cell_matmul_1_readvariableop_resource:
»†8
)lstm_cell_biasadd_readvariableop_resource:	†
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†О
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†З
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»В
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_248456*
condR
while_cond_248455*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Г	
Є
(__inference_lstm_33_layer_call_fn_248232
inputs_0
unknown:	†
	unknown_0:
»†
	unknown_1:	†
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_247013}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name248224:&"
 
_user_specified_name248226:&"
 
_user_specified_name248228
—
ґ
(__inference_lstm_34_layer_call_fn_248870

inputs
unknown:
»А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_248037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€»: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:&"
 
_user_specified_name248862:&"
 
_user_specified_name248864:&"
 
_user_specified_name248866
÷J
К
C__inference_lstm_34_layer_call_and_return_conditional_losses_249305

inputs<
(lstm_cell_matmul_readvariableop_resource:
»А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskК
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_249220*
condR
while_cond_249219*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€»: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Эо
щ
__inference__traced_save_249867
file_prefix8
&read_disablecopyonread_dense_22_kernel: 4
&read_1_disablecopyonread_dense_22_bias:D
1read_2_disablecopyonread_lstm_33_lstm_cell_kernel:	†O
;read_3_disablecopyonread_lstm_33_lstm_cell_recurrent_kernel:
»†>
/read_4_disablecopyonread_lstm_33_lstm_cell_bias:	†E
1read_5_disablecopyonread_lstm_34_lstm_cell_kernel:
»АN
;read_6_disablecopyonread_lstm_34_lstm_cell_recurrent_kernel:	 А>
/read_7_disablecopyonread_lstm_34_lstm_cell_bias:	А,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: L
9read_10_disablecopyonread_adam_m_lstm_33_lstm_cell_kernel:	†L
9read_11_disablecopyonread_adam_v_lstm_33_lstm_cell_kernel:	†W
Cread_12_disablecopyonread_adam_m_lstm_33_lstm_cell_recurrent_kernel:
»†W
Cread_13_disablecopyonread_adam_v_lstm_33_lstm_cell_recurrent_kernel:
»†F
7read_14_disablecopyonread_adam_m_lstm_33_lstm_cell_bias:	†F
7read_15_disablecopyonread_adam_v_lstm_33_lstm_cell_bias:	†M
9read_16_disablecopyonread_adam_m_lstm_34_lstm_cell_kernel:
»АM
9read_17_disablecopyonread_adam_v_lstm_34_lstm_cell_kernel:
»АV
Cread_18_disablecopyonread_adam_m_lstm_34_lstm_cell_recurrent_kernel:	 АV
Cread_19_disablecopyonread_adam_v_lstm_34_lstm_cell_recurrent_kernel:	 АF
7read_20_disablecopyonread_adam_m_lstm_34_lstm_cell_bias:	АF
7read_21_disablecopyonread_adam_v_lstm_34_lstm_cell_bias:	АB
0read_22_disablecopyonread_adam_m_dense_22_kernel: B
0read_23_disablecopyonread_adam_v_dense_22_kernel: <
.read_24_disablecopyonread_adam_m_dense_22_bias:<
.read_25_disablecopyonread_adam_v_dense_22_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 
savev2_const
identity_61ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_22_kernel"/device:CPU:0*
_output_shapes
 Ґ
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_22_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

: z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_22_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_22_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_2/DisableCopyOnReadDisableCopyOnRead1read_2_disablecopyonread_lstm_33_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_2/ReadVariableOpReadVariableOp1read_2_disablecopyonread_lstm_33_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	†*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	†d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	†П
Read_3/DisableCopyOnReadDisableCopyOnRead;read_3_disablecopyonread_lstm_33_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 љ
Read_3/ReadVariableOpReadVariableOp;read_3_disablecopyonread_lstm_33_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
»†*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
»†e

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
»†Г
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_lstm_33_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ђ
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_lstm_33_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:†Е
Read_5/DisableCopyOnReadDisableCopyOnRead1read_5_disablecopyonread_lstm_34_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_5/ReadVariableOpReadVariableOp1read_5_disablecopyonread_lstm_34_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
»А*
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
»Аg
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:
»АП
Read_6/DisableCopyOnReadDisableCopyOnRead;read_6_disablecopyonread_lstm_34_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_6/ReadVariableOpReadVariableOp;read_6_disablecopyonread_lstm_34_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аf
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АГ
Read_7/DisableCopyOnReadDisableCopyOnRead/read_7_disablecopyonread_lstm_34_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ђ
Read_7/ReadVariableOpReadVariableOp/read_7_disablecopyonread_lstm_34_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:Аv
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: О
Read_10/DisableCopyOnReadDisableCopyOnRead9read_10_disablecopyonread_adam_m_lstm_33_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_10/ReadVariableOpReadVariableOp9read_10_disablecopyonread_adam_m_lstm_33_lstm_cell_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	†*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	†f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	†О
Read_11/DisableCopyOnReadDisableCopyOnRead9read_11_disablecopyonread_adam_v_lstm_33_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_11/ReadVariableOpReadVariableOp9read_11_disablecopyonread_adam_v_lstm_33_lstm_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	†*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	†f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	†Ш
Read_12/DisableCopyOnReadDisableCopyOnReadCread_12_disablecopyonread_adam_m_lstm_33_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 «
Read_12/ReadVariableOpReadVariableOpCread_12_disablecopyonread_adam_m_lstm_33_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
»†*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
»†g
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
»†Ш
Read_13/DisableCopyOnReadDisableCopyOnReadCread_13_disablecopyonread_adam_v_lstm_33_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 «
Read_13/ReadVariableOpReadVariableOpCread_13_disablecopyonread_adam_v_lstm_33_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
»†*
dtype0q
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
»†g
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0* 
_output_shapes
:
»†М
Read_14/DisableCopyOnReadDisableCopyOnRead7read_14_disablecopyonread_adam_m_lstm_33_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ґ
Read_14/ReadVariableOpReadVariableOp7read_14_disablecopyonread_adam_m_lstm_33_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:†М
Read_15/DisableCopyOnReadDisableCopyOnRead7read_15_disablecopyonread_adam_v_lstm_33_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ґ
Read_15/ReadVariableOpReadVariableOp7read_15_disablecopyonread_adam_v_lstm_33_lstm_cell_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:†О
Read_16/DisableCopyOnReadDisableCopyOnRead9read_16_disablecopyonread_adam_m_lstm_34_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 љ
Read_16/ReadVariableOpReadVariableOp9read_16_disablecopyonread_adam_m_lstm_34_lstm_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
»А*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
»Аg
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
»АО
Read_17/DisableCopyOnReadDisableCopyOnRead9read_17_disablecopyonread_adam_v_lstm_34_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 љ
Read_17/ReadVariableOpReadVariableOp9read_17_disablecopyonread_adam_v_lstm_34_lstm_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
»А*
dtype0q
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
»Аg
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0* 
_output_shapes
:
»АШ
Read_18/DisableCopyOnReadDisableCopyOnReadCread_18_disablecopyonread_adam_m_lstm_34_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_18/ReadVariableOpReadVariableOpCread_18_disablecopyonread_adam_m_lstm_34_lstm_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аf
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АШ
Read_19/DisableCopyOnReadDisableCopyOnReadCread_19_disablecopyonread_adam_v_lstm_34_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_19/ReadVariableOpReadVariableOpCread_19_disablecopyonread_adam_v_lstm_34_lstm_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аf
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АМ
Read_20/DisableCopyOnReadDisableCopyOnRead7read_20_disablecopyonread_adam_m_lstm_34_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ґ
Read_20/ReadVariableOpReadVariableOp7read_20_disablecopyonread_adam_m_lstm_34_lstm_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:АМ
Read_21/DisableCopyOnReadDisableCopyOnRead7read_21_disablecopyonread_adam_v_lstm_34_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ґ
Read_21/ReadVariableOpReadVariableOp7read_21_disablecopyonread_adam_v_lstm_34_lstm_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_dense_22_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_dense_22_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

: Е
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_dense_22_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_dense_22_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

: Г
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_dense_22_bias"/device:CPU:0*
_output_shapes
 ђ
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_dense_22_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_dense_22_bias"/device:CPU:0*
_output_shapes
 ђ
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_dense_22_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: ё
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*З
valueэBъB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Е
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: ’
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_61Identity_61:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_22/kernel:-)
'
_user_specified_namedense_22/bias:84
2
_user_specified_namelstm_33/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_33/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_33/lstm_cell/bias:84
2
_user_specified_namelstm_34/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_34/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_34/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_33/lstm_cell/kernel:?;
9
_user_specified_name!Adam/v/lstm_33/lstm_cell/kernel:IE
C
_user_specified_name+)Adam/m/lstm_33/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_33/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_33/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_33/lstm_cell/bias:?;
9
_user_specified_name!Adam/m/lstm_34/lstm_cell/kernel:?;
9
_user_specified_name!Adam/v/lstm_34/lstm_cell/kernel:IE
C
_user_specified_name+)Adam/m/lstm_34/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_34/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_34/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_34/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_22/kernel:62
0
_user_specified_nameAdam/v/dense_22/kernel:40
.
_user_specified_nameAdam/m/dense_22/bias:40
.
_user_specified_nameAdam/v/dense_22/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
¬	
√
while_cond_247951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247951___redundant_placeholder04
0while_while_cond_247951___redundant_placeholder14
0while_while_cond_247951___redundant_placeholder24
0while_while_cond_247951___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
й
Є
(__inference_lstm_34_layer_call_fn_248837
inputs_0
unknown:
»А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_247216o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€»: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
"
_user_specified_name
inputs_0:&"
 
_user_specified_name248829:&"
 
_user_specified_name248831:&"
 
_user_specified_name248833
ч	
х
D__inference_dense_22_layer_call_and_return_conditional_losses_249469

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њ
Q
#__inference__update_step_xla_248190
gradient
variable:
»А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
»А: *
	_noinline(:J F
 
_output_shapes
:
»А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
А9
Ј
while_body_247480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	†F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
»†@
1while_lstm_cell_biasadd_readvariableop_resource_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	†D
0while_lstm_cell_matmul_1_readvariableop_resource:
»†>
/while_lstm_cell_biasadd_readvariableop_resource:	†ИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	†*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Ь
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
»†*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:†*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»Б
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€»o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»Р
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Е
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»Ф
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»¬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
А9
Ј
while_body_247801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	†F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
»†@
1while_lstm_cell_biasadd_readvariableop_resource_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	†D
0while_lstm_cell_matmul_1_readvariableop_resource:
»†>
/while_lstm_cell_biasadd_readvariableop_resource:	†ИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	†*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Ь
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
»†*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:†*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»Б
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€»o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»Р
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Е
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»Ф
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»¬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
™
д
I__inference_sequential_31_layer_call_and_return_conditional_losses_247740
lstm_33_input!
lstm_33_247565:	†"
lstm_33_247567:
»†
lstm_33_247569:	†"
lstm_34_247717:
»А!
lstm_34_247719:	 А
lstm_34_247721:	А!
dense_22_247734: 
dense_22_247736:
identityИҐ dense_22/StatefulPartitionedCallҐlstm_33/StatefulPartitionedCallҐlstm_34/StatefulPartitionedCallН
lstm_33/StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputlstm_33_247565lstm_33_247567lstm_33_247569*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_247564£
lstm_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0lstm_34_247717lstm_34_247719lstm_34_247721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_247716Х
 dense_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0dense_22_247734dense_22_247736*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_247733x
IdentityIdentity)dense_22/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Й
NoOpNoOp!^dense_22/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_33_input:&"
 
_user_specified_name247565:&"
 
_user_specified_name247567:&"
 
_user_specified_name247569:&"
 
_user_specified_name247717:&"
 
_user_specified_name247719:&"
 
_user_specified_name247721:&"
 
_user_specified_name247734:&"
 
_user_specified_name247736
й
Є
(__inference_lstm_34_layer_call_fn_248848
inputs_0
unknown:
»А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_247363o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€»: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
"
_user_specified_name
inputs_0:&"
 
_user_specified_name248840:&"
 
_user_specified_name248842:&"
 
_user_specified_name248844
Г	
Є
(__inference_lstm_33_layer_call_fn_248221
inputs_0
unknown:	†
	unknown_0:
»†
	unknown_1:	†
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_246868}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name248213:&"
 
_user_specified_name248215:&"
 
_user_specified_name248217
ї
P
#__inference__update_step_xla_248175
gradient
variable:	†*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	†: *
	_noinline(:I E

_output_shapes
:	†
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
њ
ф
*__inference_lstm_cell_layer_call_fn_249601

inputs
states_0
states_1
unknown:
»А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247278o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€»:€€€€€€€€€ :€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:&"
 
_user_specified_name249589:&"
 
_user_specified_name249591:&"
 
_user_specified_name249593
∆	
√
while_cond_248455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248455___redundant_placeholder04
0while_while_cond_248455___redundant_placeholder14
0while_while_cond_248455___redundant_placeholder24
0while_while_cond_248455___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ћ8
ъ
C__inference_lstm_33_layer_call_and_return_conditional_losses_246868

inputs#
lstm_cell_246786:	†$
lstm_cell_246788:
»†
lstm_cell_246790:	†
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskм
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_246786lstm_cell_246788lstm_cell_246790*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246785n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_246786lstm_cell_246788lstm_cell_246790*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_246799*
condR
while_cond_246798*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name246786:&"
 
_user_specified_name246788:&"
 
_user_specified_name246790
…
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249535

inputs
states_0
states_11
matmul_readvariableop_resource:	†4
 matmul_1_readvariableop_resource:
»†.
biasadd_readvariableop_resource:	†
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€»V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€»O
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€»`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€»L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€»:€€€€€€€€€»: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
÷J
К
C__inference_lstm_34_layer_call_and_return_conditional_losses_247716

inputs<
(lstm_cell_matmul_readvariableop_resource:
»А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskК
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_247631*
condR
while_cond_247630*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€»: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
еI
К
C__inference_lstm_33_layer_call_and_return_conditional_losses_247885

inputs;
(lstm_cell_matmul_readvariableop_resource:	†>
*lstm_cell_matmul_1_readvariableop_resource:
»†8
)lstm_cell_biasadd_readvariableop_resource:	†
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†О
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†З
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»В
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_247801*
condR
while_cond_247800*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€»У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
К:
Ј
while_body_248930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
»АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
»АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0Ш
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
»А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ П
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ У
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
∆	
√
while_cond_246798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_246798___redundant_placeholder04
0while_while_cond_246798___redundant_placeholder14
0while_while_cond_246798___redundant_placeholder24
0while_while_cond_246798___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ќS
щ
'sequential_31_lstm_33_while_body_246492H
Dsequential_31_lstm_33_while_sequential_31_lstm_33_while_loop_counterN
Jsequential_31_lstm_33_while_sequential_31_lstm_33_while_maximum_iterations+
'sequential_31_lstm_33_while_placeholder-
)sequential_31_lstm_33_while_placeholder_1-
)sequential_31_lstm_33_while_placeholder_2-
)sequential_31_lstm_33_while_placeholder_3G
Csequential_31_lstm_33_while_sequential_31_lstm_33_strided_slice_1_0Г
sequential_31_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_33_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_31_lstm_33_while_lstm_cell_matmul_readvariableop_resource_0:	†\
Hsequential_31_lstm_33_while_lstm_cell_matmul_1_readvariableop_resource_0:
»†V
Gsequential_31_lstm_33_while_lstm_cell_biasadd_readvariableop_resource_0:	†(
$sequential_31_lstm_33_while_identity*
&sequential_31_lstm_33_while_identity_1*
&sequential_31_lstm_33_while_identity_2*
&sequential_31_lstm_33_while_identity_3*
&sequential_31_lstm_33_while_identity_4*
&sequential_31_lstm_33_while_identity_5E
Asequential_31_lstm_33_while_sequential_31_lstm_33_strided_slice_1Б
}sequential_31_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_33_tensorarrayunstack_tensorlistfromtensorW
Dsequential_31_lstm_33_while_lstm_cell_matmul_readvariableop_resource:	†Z
Fsequential_31_lstm_33_while_lstm_cell_matmul_1_readvariableop_resource:
»†T
Esequential_31_lstm_33_while_lstm_cell_biasadd_readvariableop_resource:	†ИҐ<sequential_31/lstm_33/while/lstm_cell/BiasAdd/ReadVariableOpҐ;sequential_31/lstm_33/while/lstm_cell/MatMul/ReadVariableOpҐ=sequential_31/lstm_33/while/lstm_cell/MatMul_1/ReadVariableOpЮ
Msequential_31/lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ф
?sequential_31/lstm_33/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_31_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_33_tensorarrayunstack_tensorlistfromtensor_0'sequential_31_lstm_33_while_placeholderVsequential_31/lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0√
;sequential_31/lstm_33/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpFsequential_31_lstm_33_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	†*
dtype0ц
,sequential_31/lstm_33/while/lstm_cell/MatMulMatMulFsequential_31/lstm_33/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_31/lstm_33/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†»
=sequential_31/lstm_33/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpHsequential_31_lstm_33_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
»†*
dtype0Ё
.sequential_31/lstm_33/while/lstm_cell/MatMul_1MatMul)sequential_31_lstm_33_while_placeholder_2Esequential_31/lstm_33/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†„
)sequential_31/lstm_33/while/lstm_cell/addAddV26sequential_31/lstm_33/while/lstm_cell/MatMul:product:08sequential_31/lstm_33/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†Ѕ
<sequential_31/lstm_33/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpGsequential_31_lstm_33_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:†*
dtype0а
-sequential_31/lstm_33/while/lstm_cell/BiasAddBiasAdd-sequential_31/lstm_33/while/lstm_cell/add:z:0Dsequential_31/lstm_33/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†w
5sequential_31/lstm_33/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
+sequential_31/lstm_33/while/lstm_cell/splitSplit>sequential_31/lstm_33/while/lstm_cell/split/split_dim:output:06sequential_31/lstm_33/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_split°
-sequential_31/lstm_33/while/lstm_cell/SigmoidSigmoid4sequential_31/lstm_33/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»£
/sequential_31/lstm_33/while/lstm_cell/Sigmoid_1Sigmoid4sequential_31/lstm_33/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»√
)sequential_31/lstm_33/while/lstm_cell/mulMul3sequential_31/lstm_33/while/lstm_cell/Sigmoid_1:y:0)sequential_31_lstm_33_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€»Ы
*sequential_31/lstm_33/while/lstm_cell/ReluRelu4sequential_31/lstm_33/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»“
+sequential_31/lstm_33/while/lstm_cell/mul_1Mul1sequential_31/lstm_33/while/lstm_cell/Sigmoid:y:08sequential_31/lstm_33/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»«
+sequential_31/lstm_33/while/lstm_cell/add_1AddV2-sequential_31/lstm_33/while/lstm_cell/mul:z:0/sequential_31/lstm_33/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»£
/sequential_31/lstm_33/while/lstm_cell/Sigmoid_2Sigmoid4sequential_31/lstm_33/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»Ш
,sequential_31/lstm_33/while/lstm_cell/Relu_1Relu/sequential_31/lstm_33/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»÷
+sequential_31/lstm_33/while/lstm_cell/mul_2Mul3sequential_31/lstm_33/while/lstm_cell/Sigmoid_2:y:0:sequential_31/lstm_33/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Ъ
@sequential_31/lstm_33/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_31_lstm_33_while_placeholder_1'sequential_31_lstm_33_while_placeholder/sequential_31/lstm_33/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“c
!sequential_31/lstm_33/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
sequential_31/lstm_33/while/addAddV2'sequential_31_lstm_33_while_placeholder*sequential_31/lstm_33/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_31/lstm_33/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :њ
!sequential_31/lstm_33/while/add_1AddV2Dsequential_31_lstm_33_while_sequential_31_lstm_33_while_loop_counter,sequential_31/lstm_33/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
$sequential_31/lstm_33/while/IdentityIdentity%sequential_31/lstm_33/while/add_1:z:0!^sequential_31/lstm_33/while/NoOp*
T0*
_output_shapes
: ¬
&sequential_31/lstm_33/while/Identity_1IdentityJsequential_31_lstm_33_while_sequential_31_lstm_33_while_maximum_iterations!^sequential_31/lstm_33/while/NoOp*
T0*
_output_shapes
: Ы
&sequential_31/lstm_33/while/Identity_2Identity#sequential_31/lstm_33/while/add:z:0!^sequential_31/lstm_33/while/NoOp*
T0*
_output_shapes
: »
&sequential_31/lstm_33/while/Identity_3IdentityPsequential_31/lstm_33/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_31/lstm_33/while/NoOp*
T0*
_output_shapes
: є
&sequential_31/lstm_33/while/Identity_4Identity/sequential_31/lstm_33/while/lstm_cell/mul_2:z:0!^sequential_31/lstm_33/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»є
&sequential_31/lstm_33/while/Identity_5Identity/sequential_31/lstm_33/while/lstm_cell/add_1:z:0!^sequential_31/lstm_33/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»ы
 sequential_31/lstm_33/while/NoOpNoOp=^sequential_31/lstm_33/while/lstm_cell/BiasAdd/ReadVariableOp<^sequential_31/lstm_33/while/lstm_cell/MatMul/ReadVariableOp>^sequential_31/lstm_33/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "U
$sequential_31_lstm_33_while_identity-sequential_31/lstm_33/while/Identity:output:0"Y
&sequential_31_lstm_33_while_identity_1/sequential_31/lstm_33/while/Identity_1:output:0"Y
&sequential_31_lstm_33_while_identity_2/sequential_31/lstm_33/while/Identity_2:output:0"Y
&sequential_31_lstm_33_while_identity_3/sequential_31/lstm_33/while/Identity_3:output:0"Y
&sequential_31_lstm_33_while_identity_4/sequential_31/lstm_33/while/Identity_4:output:0"Y
&sequential_31_lstm_33_while_identity_5/sequential_31/lstm_33/while/Identity_5:output:0"Р
Esequential_31_lstm_33_while_lstm_cell_biasadd_readvariableop_resourceGsequential_31_lstm_33_while_lstm_cell_biasadd_readvariableop_resource_0"Т
Fsequential_31_lstm_33_while_lstm_cell_matmul_1_readvariableop_resourceHsequential_31_lstm_33_while_lstm_cell_matmul_1_readvariableop_resource_0"О
Dsequential_31_lstm_33_while_lstm_cell_matmul_readvariableop_resourceFsequential_31_lstm_33_while_lstm_cell_matmul_readvariableop_resource_0"И
Asequential_31_lstm_33_while_sequential_31_lstm_33_strided_slice_1Csequential_31_lstm_33_while_sequential_31_lstm_33_strided_slice_1_0"А
}sequential_31_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_33_tensorarrayunstack_tensorlistfromtensorsequential_31_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_33_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2|
<sequential_31/lstm_33/while/lstm_cell/BiasAdd/ReadVariableOp<sequential_31/lstm_33/while/lstm_cell/BiasAdd/ReadVariableOp2z
;sequential_31/lstm_33/while/lstm_cell/MatMul/ReadVariableOp;sequential_31/lstm_33/while/lstm_cell/MatMul/ReadVariableOp2~
=sequential_31/lstm_33/while/lstm_cell/MatMul_1/ReadVariableOp=sequential_31/lstm_33/while/lstm_cell/MatMul_1/ReadVariableOp:` \

_output_shapes
: 
B
_user_specified_name*(sequential_31/lstm_33/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_31/lstm_33/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:]Y

_output_shapes
: 
?
_user_specified_name'%sequential_31/lstm_33/strided_slice_1:uq

_output_shapes
: 
W
_user_specified_name?=sequential_31/lstm_33/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
«
ф
*__inference_lstm_cell_layer_call_fn_249486

inputs
states_0
states_1
unknown:	†
	unknown_0:
»†
	unknown_1:	†
identity

identity_1

identity_2ИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246785p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€»:€€€€€€€€€»: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_1:&"
 
_user_specified_name249474:&"
 
_user_specified_name249476:&"
 
_user_specified_name249478
Є
O
#__inference__update_step_xla_248205
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
: : *
	_noinline(:H D

_output_shapes

: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
∆	
√
while_cond_248312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248312___redundant_placeholder04
0while_while_cond_248312___redundant_placeholder14
0while_while_cond_248312___redundant_placeholder24
0while_while_cond_248312___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ђ9
ъ
C__inference_lstm_34_layer_call_and_return_conditional_losses_247216

inputs$
lstm_cell_247132:
»А#
lstm_cell_247134:	 А
lstm_cell_247136:	А
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskй
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_247132lstm_cell_247134lstm_cell_247136*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247131n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_247132lstm_cell_247134lstm_cell_247136*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_247146*
condR
while_cond_247145*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€»: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs:&"
 
_user_specified_name247132:&"
 
_user_specified_name247134:&"
 
_user_specified_name247136
Р
–
.__inference_sequential_31_layer_call_fn_248072
lstm_33_input
unknown:	†
	unknown_0:
»†
	unknown_1:	†
	unknown_2:
»А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_247740o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_33_input:&"
 
_user_specified_name248054:&"
 
_user_specified_name248056:&"
 
_user_specified_name248058:&"
 
_user_specified_name248060:&"
 
_user_specified_name248062:&"
 
_user_specified_name248064:&"
 
_user_specified_name248066:&"
 
_user_specified_name248068
н
ы
'sequential_31_lstm_34_while_cond_246631H
Dsequential_31_lstm_34_while_sequential_31_lstm_34_while_loop_counterN
Jsequential_31_lstm_34_while_sequential_31_lstm_34_while_maximum_iterations+
'sequential_31_lstm_34_while_placeholder-
)sequential_31_lstm_34_while_placeholder_1-
)sequential_31_lstm_34_while_placeholder_2-
)sequential_31_lstm_34_while_placeholder_3J
Fsequential_31_lstm_34_while_less_sequential_31_lstm_34_strided_slice_1`
\sequential_31_lstm_34_while_sequential_31_lstm_34_while_cond_246631___redundant_placeholder0`
\sequential_31_lstm_34_while_sequential_31_lstm_34_while_cond_246631___redundant_placeholder1`
\sequential_31_lstm_34_while_sequential_31_lstm_34_while_cond_246631___redundant_placeholder2`
\sequential_31_lstm_34_while_sequential_31_lstm_34_while_cond_246631___redundant_placeholder3(
$sequential_31_lstm_34_while_identity
Ї
 sequential_31/lstm_34/while/LessLess'sequential_31_lstm_34_while_placeholderFsequential_31_lstm_34_while_less_sequential_31_lstm_34_strided_slice_1*
T0*
_output_shapes
: w
$sequential_31/lstm_34/while/IdentityIdentity$sequential_31/lstm_34/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_31_lstm_34_while_identity-sequential_31/lstm_34/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::` \

_output_shapes
: 
B
_user_specified_name*(sequential_31/lstm_34/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_31/lstm_34/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :]Y

_output_shapes
: 
?
_user_specified_name'%sequential_31/lstm_34/strided_slice_1:

_output_shapes
:
ѓ
L
#__inference__update_step_xla_248185
gradient
variable:	†*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:†: *
	_noinline(:E A

_output_shapes	
:†
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њ
Q
#__inference__update_step_xla_248180
gradient
variable:
»†*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
»†: *
	_noinline(:J F
 
_output_shapes
:
»†
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
¬	
√
while_cond_248929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248929___redundant_placeholder04
0while_while_cond_248929___redundant_placeholder14
0while_while_cond_248929___redundant_placeholder24
0while_while_cond_248929___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
∆	
√
while_cond_247479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247479___redundant_placeholder04
0while_while_cond_247479___redundant_placeholder14
0while_while_cond_247479___redundant_placeholder24
0while_while_cond_247479___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
А9
Ј
while_body_248456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	†F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
»†@
1while_lstm_cell_biasadd_readvariableop_resource_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	†D
0while_lstm_cell_matmul_1_readvariableop_resource:
»†>
/while_lstm_cell_biasadd_readvariableop_resource:	†ИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	†*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Ь
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
»†*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:†*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»Б
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€»o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»Р
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Е
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»Ф
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»¬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ч	
х
D__inference_dense_22_layer_call_and_return_conditional_losses_247733

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
÷J
К
C__inference_lstm_34_layer_call_and_return_conditional_losses_248037

inputs<
(lstm_cell_matmul_readvariableop_resource:
»А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskК
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_247952*
condR
while_cond_247951*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€»: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
щJ
М
C__inference_lstm_34_layer_call_and_return_conditional_losses_249160
inputs_0<
(lstm_cell_matmul_readvariableop_resource:
»А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskК
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_249075*
condR
while_cond_249074*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€»: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
¬	
√
while_cond_249219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249219___redundant_placeholder04
0while_while_cond_249219___redundant_placeholder14
0while_while_cond_249219___redundant_placeholder24
0while_while_cond_249219___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
∆	
√
while_cond_248741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248741___redundant_placeholder04
0while_while_cond_248741___redundant_placeholder14
0while_while_cond_248741___redundant_placeholder24
0while_while_cond_248741___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
щJ
М
C__inference_lstm_34_layer_call_and_return_conditional_losses_249015
inputs_0<
(lstm_cell_matmul_readvariableop_resource:
»А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskК
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_248930*
condR
while_cond_248929*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€»: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
еI
К
C__inference_lstm_33_layer_call_and_return_conditional_losses_247564

inputs;
(lstm_cell_matmul_readvariableop_resource:	†>
*lstm_cell_matmul_1_readvariableop_resource:
»†8
)lstm_cell_biasadd_readvariableop_resource:	†
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†О
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†З
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»В
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_247480*
condR
while_cond_247479*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€»У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
К:
Ј
while_body_247952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
»АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
»АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0Ш
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
»А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ П
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ У
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
¬	
√
while_cond_247145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247145___redundant_placeholder04
0while_while_cond_247145___redundant_placeholder14
0while_while_cond_247145___redundant_placeholder24
0while_while_cond_247145___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ѓ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247278

inputs

states
states_12
matmul_readvariableop_resource:
»А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€»:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
К:
Ј
while_body_249075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
»АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
»АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0Ш
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
»А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ П
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ У
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ѕ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246930

inputs

states
states_11
matmul_readvariableop_resource:	†4
 matmul_1_readvariableop_resource:
»†.
biasadd_readvariableop_resource:	†
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€»V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€»O
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€»`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€»L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€»:€€€€€€€€€»: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ї
P
#__inference__update_step_xla_248195
gradient
variable:	 А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	 А: *
	_noinline(:I E

_output_shapes
:	 А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
∆	
√
while_cond_247800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247800___redundant_placeholder04
0while_while_cond_247800___redundant_placeholder14
0while_while_cond_247800___redundant_placeholder24
0while_while_cond_247800___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
¬	
√
while_cond_247292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247292___redundant_placeholder04
0while_while_cond_247292___redundant_placeholder14
0while_while_cond_247292___redundant_placeholder24
0while_while_cond_247292___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
–$
–
while_body_246944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_246968_0:	†,
while_lstm_cell_246970_0:
»†'
while_lstm_cell_246972_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_246968:	†*
while_lstm_cell_246970:
»†%
while_lstm_cell_246972:	†ИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0™
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_246968_0while_lstm_cell_246970_0while_lstm_cell_246972_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246930ў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»О
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_246968while_lstm_cell_246968_0"2
while_lstm_cell_246970while_lstm_cell_246970_0"2
while_lstm_cell_246972while_lstm_cell_246972_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name246968:&	"
 
_user_specified_name246970:&
"
 
_user_specified_name246972
Ћ8
ъ
C__inference_lstm_33_layer_call_and_return_conditional_losses_247013

inputs#
lstm_cell_246931:	†$
lstm_cell_246933:
»†
lstm_cell_246935:	†
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskм
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_246931lstm_cell_246933lstm_cell_246935*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246930n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_246931lstm_cell_246933lstm_cell_246935*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_246944*
condR
while_cond_246943*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name246931:&"
 
_user_specified_name246933:&"
 
_user_specified_name246935
ў
ґ
(__inference_lstm_33_layer_call_fn_248254

inputs
unknown:	†
	unknown_0:
»†
	unknown_1:	†
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_247885t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€»<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name248246:&"
 
_user_specified_name248248:&"
 
_user_specified_name248250
еI
К
C__inference_lstm_33_layer_call_and_return_conditional_losses_248683

inputs;
(lstm_cell_matmul_readvariableop_resource:	†>
*lstm_cell_matmul_1_readvariableop_resource:
»†8
)lstm_cell_biasadd_readvariableop_resource:	†
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†О
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†З
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»В
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_248599*
condR
while_cond_248598*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€»У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
еI
К
C__inference_lstm_33_layer_call_and_return_conditional_losses_248826

inputs;
(lstm_cell_matmul_readvariableop_resource:	†>
*lstm_cell_matmul_1_readvariableop_resource:
»†8
)lstm_cell_biasadd_readvariableop_resource:	†
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†О
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†З
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€»c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»В
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_248742*
condR
while_cond_248741*M
output_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€»*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€»[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€»У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
—
ґ
(__inference_lstm_34_layer_call_fn_248859

inputs
unknown:
»А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_247716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€»: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:&"
 
_user_specified_name248851:&"
 
_user_specified_name248853:&"
 
_user_specified_name248855
¬	
√
while_cond_249364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249364___redundant_placeholder04
0while_while_cond_249364___redundant_placeholder14
0while_while_cond_249364___redundant_placeholder24
0while_while_cond_249364___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ђ9
ъ
C__inference_lstm_34_layer_call_and_return_conditional_losses_247363

inputs$
lstm_cell_247279:
»А#
lstm_cell_247281:	 А
lstm_cell_247283:	А
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€»*
shrink_axis_maskй
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_247279lstm_cell_247281lstm_cell_247283*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247278n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_247279lstm_cell_247281lstm_cell_247283*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_247293*
condR
while_cond_247292*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€»: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs:&"
 
_user_specified_name247279:&"
 
_user_specified_name247281:&"
 
_user_specified_name247283
ў
ґ
(__inference_lstm_33_layer_call_fn_248243

inputs
unknown:	†
	unknown_0:
»†
	unknown_1:	†
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_247564t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€»<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name248235:&"
 
_user_specified_name248237:&"
 
_user_specified_name248239
∆	
√
while_cond_248598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248598___redundant_placeholder04
0while_while_cond_248598___redundant_placeholder14
0while_while_cond_248598___redundant_placeholder24
0while_while_cond_248598___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€»:€€€€€€€€€»: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ДР
Л
"__inference__traced_restore_249966
file_prefix2
 assignvariableop_dense_22_kernel: .
 assignvariableop_1_dense_22_bias:>
+assignvariableop_2_lstm_33_lstm_cell_kernel:	†I
5assignvariableop_3_lstm_33_lstm_cell_recurrent_kernel:
»†8
)assignvariableop_4_lstm_33_lstm_cell_bias:	†?
+assignvariableop_5_lstm_34_lstm_cell_kernel:
»АH
5assignvariableop_6_lstm_34_lstm_cell_recurrent_kernel:	 А8
)assignvariableop_7_lstm_34_lstm_cell_bias:	А&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: F
3assignvariableop_10_adam_m_lstm_33_lstm_cell_kernel:	†F
3assignvariableop_11_adam_v_lstm_33_lstm_cell_kernel:	†Q
=assignvariableop_12_adam_m_lstm_33_lstm_cell_recurrent_kernel:
»†Q
=assignvariableop_13_adam_v_lstm_33_lstm_cell_recurrent_kernel:
»†@
1assignvariableop_14_adam_m_lstm_33_lstm_cell_bias:	†@
1assignvariableop_15_adam_v_lstm_33_lstm_cell_bias:	†G
3assignvariableop_16_adam_m_lstm_34_lstm_cell_kernel:
»АG
3assignvariableop_17_adam_v_lstm_34_lstm_cell_kernel:
»АP
=assignvariableop_18_adam_m_lstm_34_lstm_cell_recurrent_kernel:	 АP
=assignvariableop_19_adam_v_lstm_34_lstm_cell_recurrent_kernel:	 А@
1assignvariableop_20_adam_m_lstm_34_lstm_cell_bias:	А@
1assignvariableop_21_adam_v_lstm_34_lstm_cell_bias:	А<
*assignvariableop_22_adam_m_dense_22_kernel: <
*assignvariableop_23_adam_v_dense_22_kernel: 6
(assignvariableop_24_adam_m_dense_22_bias:6
(assignvariableop_25_adam_v_dense_22_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9б
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*З
valueэBъB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЃ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ї
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Р
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_dense_22_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_22_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_2AssignVariableOp+assignvariableop_2_lstm_33_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_3AssignVariableOp5assignvariableop_3_lstm_33_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_4AssignVariableOp)assignvariableop_4_lstm_33_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_5AssignVariableOp+assignvariableop_5_lstm_34_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_6AssignVariableOp5assignvariableop_6_lstm_34_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_7AssignVariableOp)assignvariableop_7_lstm_34_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_10AssignVariableOp3assignvariableop_10_adam_m_lstm_33_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_11AssignVariableOp3assignvariableop_11_adam_v_lstm_33_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_12AssignVariableOp=assignvariableop_12_adam_m_lstm_33_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_13AssignVariableOp=assignvariableop_13_adam_v_lstm_33_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_14AssignVariableOp1assignvariableop_14_adam_m_lstm_33_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_v_lstm_33_lstm_cell_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_16AssignVariableOp3assignvariableop_16_adam_m_lstm_34_lstm_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_17AssignVariableOp3assignvariableop_17_adam_v_lstm_34_lstm_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_18AssignVariableOp=assignvariableop_18_adam_m_lstm_34_lstm_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_19AssignVariableOp=assignvariableop_19_adam_v_lstm_34_lstm_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_20AssignVariableOp1assignvariableop_20_adam_m_lstm_34_lstm_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_v_lstm_34_lstm_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_dense_22_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_dense_22_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_dense_22_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_dense_22_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 г
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: ђ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_22/kernel:-)
'
_user_specified_namedense_22/bias:84
2
_user_specified_namelstm_33/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_33/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_33/lstm_cell/bias:84
2
_user_specified_namelstm_34/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_34/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_34/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_33/lstm_cell/kernel:?;
9
_user_specified_name!Adam/v/lstm_33/lstm_cell/kernel:IE
C
_user_specified_name+)Adam/m/lstm_33/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_33/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_33/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_33/lstm_cell/bias:?;
9
_user_specified_name!Adam/m/lstm_34/lstm_cell/kernel:?;
9
_user_specified_name!Adam/v/lstm_34/lstm_cell/kernel:IE
C
_user_specified_name+)Adam/m/lstm_34/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_34/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_34/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_34/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_22/kernel:62
0
_user_specified_nameAdam/v/dense_22/kernel:40
.
_user_specified_nameAdam/m/dense_22/bias:40
.
_user_specified_nameAdam/v/dense_22/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount
–$
–
while_body_246799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_246823_0:	†,
while_lstm_cell_246825_0:
»†'
while_lstm_cell_246827_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_246823:	†*
while_lstm_cell_246825:
»†%
while_lstm_cell_246827:	†ИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0™
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_246823_0while_lstm_cell_246825_0while_lstm_cell_246827_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246785ў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»О
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_246823while_lstm_cell_246823_0"2
while_lstm_cell_246825while_lstm_cell_246825_0"2
while_lstm_cell_246827while_lstm_cell_246827_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name246823:&	"
 
_user_specified_name246825:&
"
 
_user_specified_name246827
™
д
I__inference_sequential_31_layer_call_and_return_conditional_losses_248051
lstm_33_input!
lstm_33_247886:	†"
lstm_33_247888:
»†
lstm_33_247890:	†"
lstm_34_248038:
»А!
lstm_34_248040:	 А
lstm_34_248042:	А!
dense_22_248045: 
dense_22_248047:
identityИҐ dense_22/StatefulPartitionedCallҐlstm_33/StatefulPartitionedCallҐlstm_34/StatefulPartitionedCallН
lstm_33/StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputlstm_33_247886lstm_33_247888lstm_33_247890*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_247885£
lstm_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0lstm_34_248038lstm_34_248040lstm_34_248042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_248037Х
 dense_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0dense_22_248045dense_22_248047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_247733x
IdentityIdentity)dense_22/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Й
NoOpNoOp!^dense_22/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_33_input:&"
 
_user_specified_name247886:&"
 
_user_specified_name247888:&"
 
_user_specified_name247890:&"
 
_user_specified_name248038:&"
 
_user_specified_name248040:&"
 
_user_specified_name248042:&"
 
_user_specified_name248045:&"
 
_user_specified_name248047
пT
щ
'sequential_31_lstm_34_while_body_246632H
Dsequential_31_lstm_34_while_sequential_31_lstm_34_while_loop_counterN
Jsequential_31_lstm_34_while_sequential_31_lstm_34_while_maximum_iterations+
'sequential_31_lstm_34_while_placeholder-
)sequential_31_lstm_34_while_placeholder_1-
)sequential_31_lstm_34_while_placeholder_2-
)sequential_31_lstm_34_while_placeholder_3G
Csequential_31_lstm_34_while_sequential_31_lstm_34_strided_slice_1_0Г
sequential_31_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_34_tensorarrayunstack_tensorlistfromtensor_0Z
Fsequential_31_lstm_34_while_lstm_cell_matmul_readvariableop_resource_0:
»А[
Hsequential_31_lstm_34_while_lstm_cell_matmul_1_readvariableop_resource_0:	 АV
Gsequential_31_lstm_34_while_lstm_cell_biasadd_readvariableop_resource_0:	А(
$sequential_31_lstm_34_while_identity*
&sequential_31_lstm_34_while_identity_1*
&sequential_31_lstm_34_while_identity_2*
&sequential_31_lstm_34_while_identity_3*
&sequential_31_lstm_34_while_identity_4*
&sequential_31_lstm_34_while_identity_5E
Asequential_31_lstm_34_while_sequential_31_lstm_34_strided_slice_1Б
}sequential_31_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_34_tensorarrayunstack_tensorlistfromtensorX
Dsequential_31_lstm_34_while_lstm_cell_matmul_readvariableop_resource:
»АY
Fsequential_31_lstm_34_while_lstm_cell_matmul_1_readvariableop_resource:	 АT
Esequential_31_lstm_34_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ<sequential_31/lstm_34/while/lstm_cell/BiasAdd/ReadVariableOpҐ;sequential_31/lstm_34/while/lstm_cell/MatMul/ReadVariableOpҐ=sequential_31/lstm_34/while/lstm_cell/MatMul_1/ReadVariableOpЮ
Msequential_31/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   Х
?sequential_31/lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_31_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_34_tensorarrayunstack_tensorlistfromtensor_0'sequential_31_lstm_34_while_placeholderVsequential_31/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0ƒ
;sequential_31/lstm_34/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpFsequential_31_lstm_34_while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
»А*
dtype0ц
,sequential_31/lstm_34/while/lstm_cell/MatMulMatMulFsequential_31/lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_31/lstm_34/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А«
=sequential_31/lstm_34/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpHsequential_31_lstm_34_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ё
.sequential_31/lstm_34/while/lstm_cell/MatMul_1MatMul)sequential_31_lstm_34_while_placeholder_2Esequential_31/lstm_34/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А„
)sequential_31/lstm_34/while/lstm_cell/addAddV26sequential_31/lstm_34/while/lstm_cell/MatMul:product:08sequential_31/lstm_34/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
<sequential_31/lstm_34/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpGsequential_31_lstm_34_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0а
-sequential_31/lstm_34/while/lstm_cell/BiasAddBiasAdd-sequential_31/lstm_34/while/lstm_cell/add:z:0Dsequential_31/lstm_34/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
5sequential_31/lstm_34/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :®
+sequential_31/lstm_34/while/lstm_cell/splitSplit>sequential_31/lstm_34/while/lstm_cell/split/split_dim:output:06sequential_31/lstm_34/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split†
-sequential_31/lstm_34/while/lstm_cell/SigmoidSigmoid4sequential_31/lstm_34/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ґ
/sequential_31/lstm_34/while/lstm_cell/Sigmoid_1Sigmoid4sequential_31/lstm_34/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ¬
)sequential_31/lstm_34/while/lstm_cell/mulMul3sequential_31/lstm_34/while/lstm_cell/Sigmoid_1:y:0)sequential_31_lstm_34_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ Ъ
*sequential_31/lstm_34/while/lstm_cell/ReluRelu4sequential_31/lstm_34/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ —
+sequential_31/lstm_34/while/lstm_cell/mul_1Mul1sequential_31/lstm_34/while/lstm_cell/Sigmoid:y:08sequential_31/lstm_34/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ ∆
+sequential_31/lstm_34/while/lstm_cell/add_1AddV2-sequential_31/lstm_34/while/lstm_cell/mul:z:0/sequential_31/lstm_34/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Ґ
/sequential_31/lstm_34/while/lstm_cell/Sigmoid_2Sigmoid4sequential_31/lstm_34/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Ч
,sequential_31/lstm_34/while/lstm_cell/Relu_1Relu/sequential_31/lstm_34/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ’
+sequential_31/lstm_34/while/lstm_cell/mul_2Mul3sequential_31/lstm_34/while/lstm_cell/Sigmoid_2:y:0:sequential_31/lstm_34/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ И
Fsequential_31/lstm_34/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¬
@sequential_31/lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_31_lstm_34_while_placeholder_1Osequential_31/lstm_34/while/TensorArrayV2Write/TensorListSetItem/index:output:0/sequential_31/lstm_34/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“c
!sequential_31/lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
sequential_31/lstm_34/while/addAddV2'sequential_31_lstm_34_while_placeholder*sequential_31/lstm_34/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_31/lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :њ
!sequential_31/lstm_34/while/add_1AddV2Dsequential_31_lstm_34_while_sequential_31_lstm_34_while_loop_counter,sequential_31/lstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
$sequential_31/lstm_34/while/IdentityIdentity%sequential_31/lstm_34/while/add_1:z:0!^sequential_31/lstm_34/while/NoOp*
T0*
_output_shapes
: ¬
&sequential_31/lstm_34/while/Identity_1IdentityJsequential_31_lstm_34_while_sequential_31_lstm_34_while_maximum_iterations!^sequential_31/lstm_34/while/NoOp*
T0*
_output_shapes
: Ы
&sequential_31/lstm_34/while/Identity_2Identity#sequential_31/lstm_34/while/add:z:0!^sequential_31/lstm_34/while/NoOp*
T0*
_output_shapes
: »
&sequential_31/lstm_34/while/Identity_3IdentityPsequential_31/lstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_31/lstm_34/while/NoOp*
T0*
_output_shapes
: Є
&sequential_31/lstm_34/while/Identity_4Identity/sequential_31/lstm_34/while/lstm_cell/mul_2:z:0!^sequential_31/lstm_34/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Є
&sequential_31/lstm_34/while/Identity_5Identity/sequential_31/lstm_34/while/lstm_cell/add_1:z:0!^sequential_31/lstm_34/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ ы
 sequential_31/lstm_34/while/NoOpNoOp=^sequential_31/lstm_34/while/lstm_cell/BiasAdd/ReadVariableOp<^sequential_31/lstm_34/while/lstm_cell/MatMul/ReadVariableOp>^sequential_31/lstm_34/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "U
$sequential_31_lstm_34_while_identity-sequential_31/lstm_34/while/Identity:output:0"Y
&sequential_31_lstm_34_while_identity_1/sequential_31/lstm_34/while/Identity_1:output:0"Y
&sequential_31_lstm_34_while_identity_2/sequential_31/lstm_34/while/Identity_2:output:0"Y
&sequential_31_lstm_34_while_identity_3/sequential_31/lstm_34/while/Identity_3:output:0"Y
&sequential_31_lstm_34_while_identity_4/sequential_31/lstm_34/while/Identity_4:output:0"Y
&sequential_31_lstm_34_while_identity_5/sequential_31/lstm_34/while/Identity_5:output:0"Р
Esequential_31_lstm_34_while_lstm_cell_biasadd_readvariableop_resourceGsequential_31_lstm_34_while_lstm_cell_biasadd_readvariableop_resource_0"Т
Fsequential_31_lstm_34_while_lstm_cell_matmul_1_readvariableop_resourceHsequential_31_lstm_34_while_lstm_cell_matmul_1_readvariableop_resource_0"О
Dsequential_31_lstm_34_while_lstm_cell_matmul_readvariableop_resourceFsequential_31_lstm_34_while_lstm_cell_matmul_readvariableop_resource_0"И
Asequential_31_lstm_34_while_sequential_31_lstm_34_strided_slice_1Csequential_31_lstm_34_while_sequential_31_lstm_34_strided_slice_1_0"А
}sequential_31_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_34_tensorarrayunstack_tensorlistfromtensorsequential_31_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_31_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2|
<sequential_31/lstm_34/while/lstm_cell/BiasAdd/ReadVariableOp<sequential_31/lstm_34/while/lstm_cell/BiasAdd/ReadVariableOp2z
;sequential_31/lstm_34/while/lstm_cell/MatMul/ReadVariableOp;sequential_31/lstm_34/while/lstm_cell/MatMul/ReadVariableOp2~
=sequential_31/lstm_34/while/lstm_cell/MatMul_1/ReadVariableOp=sequential_31/lstm_34/while/lstm_cell/MatMul_1/ReadVariableOp:` \

_output_shapes
: 
B
_user_specified_name*(sequential_31/lstm_34/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_31/lstm_34/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :]Y

_output_shapes
: 
?
_user_specified_name'%sequential_31/lstm_34/strided_slice_1:uq

_output_shapes
: 
W
_user_specified_name?=sequential_31/lstm_34/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
њ
ф
*__inference_lstm_cell_layer_call_fn_249584

inputs
states_0
states_1
unknown:
»А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247131o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€»:€€€€€€€€€ :€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:&"
 
_user_specified_name249572:&"
 
_user_specified_name249574:&"
 
_user_specified_name249576
ѓ
L
#__inference__update_step_xla_248200
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ѓ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_247131

inputs

states
states_12
matmul_readvariableop_resource:
»А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€»:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
«
ф
*__inference_lstm_cell_layer_call_fn_249503

inputs
states_0
states_1
unknown:	†
	unknown_0:
»†
	unknown_1:	†
identity

identity_1

identity_2ИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246930p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€»:€€€€€€€€€»: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€»
"
_user_specified_name
states_1:&"
 
_user_specified_name249491:&"
 
_user_specified_name249493:&"
 
_user_specified_name249495
А9
Ј
while_body_248313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	†F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
»†@
1while_lstm_cell_biasadd_readvariableop_resource_0:	†
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	†D
0while_lstm_cell_matmul_1_readvariableop_resource:
»†>
/while_lstm_cell_biasadd_readvariableop_resource:	†ИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	†*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Ь
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
»†*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†Х
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:†*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€»Б
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€»o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€»Р
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Е
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€»l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»Ф
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»¬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€»£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€»:€€€€€€€€€»: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€»:.*
(
_output_shapes
:€€€€€€€€€»:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Р
–
.__inference_sequential_31_layer_call_fn_248093
lstm_33_input
unknown:	†
	unknown_0:
»†
	unknown_1:	†
	unknown_2:
»А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCalllstm_33_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_248051o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_33_input:&"
 
_user_specified_name248075:&"
 
_user_specified_name248077:&"
 
_user_specified_name248079:&"
 
_user_specified_name248081:&"
 
_user_specified_name248083:&"
 
_user_specified_name248085:&"
 
_user_specified_name248087:&"
 
_user_specified_name248089
К:
Ј
while_body_249365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
»АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
»АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€»   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€»*
element_dtype0Ш
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
»А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ П
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ У
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ђ
K
#__inference__update_step_xla_248210
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ј
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249665

inputs
states_0
states_12
matmul_readvariableop_resource:
»А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
»А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€»:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
с
Ц
)__inference_dense_22_layer_call_fn_249459

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_247733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:&"
 
_user_specified_name249453:&"
 
_user_specified_name249455
Ѕ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_246785

inputs

states
states_11
matmul_readvariableop_resource:	†4
 matmul_1_readvariableop_resource:
»†.
biasadd_readvariableop_resource:	†
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
»†*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»:€€€€€€€€€»*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€»V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€»O
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€»`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€»L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€»d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€»m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€»:€€€€€€€€€»: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource" L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ї
serving_defaultІ
K
lstm_33_input:
serving_default_lstm_33_input:0€€€€€€€€€<
dense_220
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Јы
џ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Џ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Џ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
ї
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
X
'0
(1
)2
*3
+4
,5
%6
&7"
trackable_list_wrapper
X
'0
(1
)2
*3
+4
,5
%6
&7"
trackable_list_wrapper
 "
trackable_list_wrapper
 
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ѕ
2trace_0
3trace_12Ш
.__inference_sequential_31_layer_call_fn_248072
.__inference_sequential_31_layer_call_fn_248093µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z2trace_0z3trace_1
Е
4trace_0
5trace_12ќ
I__inference_sequential_31_layer_call_and_return_conditional_losses_247740
I__inference_sequential_31_layer_call_and_return_conditional_losses_248051µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z4trace_0z5trace_1
“Bѕ
!__inference__wrapped_model_246723lstm_33_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
6
_variables
7_iterations
8_learning_rate
9_index_dict
:
_momentums
;_velocities
<_update_step_xla"
experimentalOptimizer
,
=serving_default"
signature_map
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
а
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32х
(__inference_lstm_33_layer_call_fn_248221
(__inference_lstm_33_layer_call_fn_248232
(__inference_lstm_33_layer_call_fn_248243
(__inference_lstm_33_layer_call_fn_248254 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
ћ
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32б
C__inference_lstm_33_layer_call_and_return_conditional_losses_248397
C__inference_lstm_33_layer_call_and_return_conditional_losses_248540
C__inference_lstm_33_layer_call_and_return_conditional_losses_248683
C__inference_lstm_33_layer_call_and_return_conditional_losses_248826 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
"
_generic_user_object
ш
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator
S
state_size

'kernel
(recurrent_kernel
)bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

Tstates
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
а
Ztrace_0
[trace_1
\trace_2
]trace_32х
(__inference_lstm_34_layer_call_fn_248837
(__inference_lstm_34_layer_call_fn_248848
(__inference_lstm_34_layer_call_fn_248859
(__inference_lstm_34_layer_call_fn_248870 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zZtrace_0z[trace_1z\trace_2z]trace_3
ћ
^trace_0
_trace_1
`trace_2
atrace_32б
C__inference_lstm_34_layer_call_and_return_conditional_losses_249015
C__inference_lstm_34_layer_call_and_return_conditional_losses_249160
C__inference_lstm_34_layer_call_and_return_conditional_losses_249305
C__inference_lstm_34_layer_call_and_return_conditional_losses_249450 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z^trace_0z_trace_1z`trace_2zatrace_3
"
_generic_user_object
ш
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator
i
state_size

*kernel
+recurrent_kernel
,bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
г
otrace_02∆
)__inference_dense_22_layer_call_fn_249459Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zotrace_0
ю
ptrace_02б
D__inference_dense_22_layer_call_and_return_conditional_losses_249469Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zptrace_0
!: 2dense_22/kernel
:2dense_22/bias
+:)	†2lstm_33/lstm_cell/kernel
6:4
»†2"lstm_33/lstm_cell/recurrent_kernel
%:#†2lstm_33/lstm_cell/bias
,:*
»А2lstm_34/lstm_cell/kernel
5:3	 А2"lstm_34/lstm_cell/recurrent_kernel
%:#А2lstm_34/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
.__inference_sequential_31_layer_call_fn_248072lstm_33_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
.__inference_sequential_31_layer_call_fn_248093lstm_33_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
I__inference_sequential_31_layer_call_and_return_conditional_losses_247740lstm_33_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
I__inference_sequential_31_layer_call_and_return_conditional_losses_248051lstm_33_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°
70
s1
t2
u3
v4
w5
x6
y7
z8
{9
|10
}11
~12
13
А14
Б15
В16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Y
s0
u1
w2
y3
{4
}5
6
Б7"
trackable_list_wrapper
Z
t0
v1
x2
z3
|4
~5
А6
В7"
trackable_list_wrapper
љ
Гtrace_0
Дtrace_1
Еtrace_2
Жtrace_3
Зtrace_4
Иtrace_5
Йtrace_6
Кtrace_72Џ
#__inference__update_step_xla_248175
#__inference__update_step_xla_248180
#__inference__update_step_xla_248185
#__inference__update_step_xla_248190
#__inference__update_step_xla_248195
#__inference__update_step_xla_248200
#__inference__update_step_xla_248205
#__inference__update_step_xla_248210ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0zГtrace_0zДtrace_1zЕtrace_2zЖtrace_3zЗtrace_4zИtrace_5zЙtrace_6zКtrace_7
—Bќ
$__inference_signature_wrapper_248170lstm_33_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
(__inference_lstm_33_layer_call_fn_248221inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
(__inference_lstm_33_layer_call_fn_248232inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_33_layer_call_fn_248243inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_33_layer_call_fn_248254inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_33_layer_call_and_return_conditional_losses_248397inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_33_layer_call_and_return_conditional_losses_248540inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_33_layer_call_and_return_conditional_losses_248683inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_33_layer_call_and_return_conditional_losses_248826inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
…
Рtrace_0
Сtrace_12О
*__inference_lstm_cell_layer_call_fn_249486
*__inference_lstm_cell_layer_call_fn_249503≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zРtrace_0zСtrace_1
€
Тtrace_0
Уtrace_12ƒ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249535
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249567≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0zУtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
(__inference_lstm_34_layer_call_fn_248837inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
(__inference_lstm_34_layer_call_fn_248848inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_34_layer_call_fn_248859inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_34_layer_call_fn_248870inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249015inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249160inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249305inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249450inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
…
Щtrace_0
Ъtrace_12О
*__inference_lstm_cell_layer_call_fn_249584
*__inference_lstm_cell_layer_call_fn_249601≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0zЪtrace_1
€
Ыtrace_0
Ьtrace_12ƒ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249633
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249665≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЫtrace_0zЬtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_22_layer_call_fn_249459inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_22_layer_call_and_return_conditional_losses_249469inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Э	variables
Ю	keras_api

Яtotal

†count"
_tf_keras_metric
c
°	variables
Ґ	keras_api

£total

§count
•
_fn_kwargs"
_tf_keras_metric
0:.	†2Adam/m/lstm_33/lstm_cell/kernel
0:.	†2Adam/v/lstm_33/lstm_cell/kernel
;:9
»†2)Adam/m/lstm_33/lstm_cell/recurrent_kernel
;:9
»†2)Adam/v/lstm_33/lstm_cell/recurrent_kernel
*:(†2Adam/m/lstm_33/lstm_cell/bias
*:(†2Adam/v/lstm_33/lstm_cell/bias
1:/
»А2Adam/m/lstm_34/lstm_cell/kernel
1:/
»А2Adam/v/lstm_34/lstm_cell/kernel
::8	 А2)Adam/m/lstm_34/lstm_cell/recurrent_kernel
::8	 А2)Adam/v/lstm_34/lstm_cell/recurrent_kernel
*:(А2Adam/m/lstm_34/lstm_cell/bias
*:(А2Adam/v/lstm_34/lstm_cell/bias
&:$ 2Adam/m/dense_22/kernel
&:$ 2Adam/v/dense_22/kernel
 :2Adam/m/dense_22/bias
 :2Adam/v/dense_22/bias
оBл
#__inference__update_step_xla_248175gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_248180gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_248185gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_248190gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_248195gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_248200gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_248205gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_248210gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
*__inference_lstm_cell_layer_call_fn_249486inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
*__inference_lstm_cell_layer_call_fn_249503inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249535inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249567inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
*__inference_lstm_cell_layer_call_fn_249584inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
*__inference_lstm_cell_layer_call_fn_249601inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249633inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249665inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
Я0
†1"
trackable_list_wrapper
.
Э	variables"
_generic_user_object
:  (2total
:  (2count
0
£0
§1"
trackable_list_wrapper
.
°	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЧ
#__inference__update_step_xla_248175pjҐg
`Ґ]
К
gradient	†
5Т2	Ґ
ъ	†
А
p
` VariableSpec 
`Ај≥°Из>
™ "
 Щ
#__inference__update_step_xla_248180rlҐi
bҐ_
К
gradient
»†
6Т3	Ґ
ъ
»†
А
p
` VariableSpec 
`ашжЋНз>
™ "
 П
#__inference__update_step_xla_248185hbҐ_
XҐU
К
gradient†
1Т.	Ґ
ъ†
А
p
` VariableSpec 
`А„≤°Из>
™ "
 Щ
#__inference__update_step_xla_248190rlҐi
bҐ_
К
gradient
»А
6Т3	Ґ
ъ
»А
А
p
` VariableSpec 
`ј аЋНз>
™ "
 Ч
#__inference__update_step_xla_248195pjҐg
`Ґ]
К
gradient	 А
5Т2	Ґ
ъ	 А
А
p
` VariableSpec 
`†Й°№Жз>
™ "
 П
#__inference__update_step_xla_248200hbҐ_
XҐU
К
gradientА
1Т.	Ґ
ъА
А
p
` VariableSpec 
`А№аЋНз>
™ "
 Х
#__inference__update_step_xla_248205nhҐe
^Ґ[
К
gradient 
4Т1	Ґ
ъ 
А
p
` VariableSpec 
`јфйёЖз>
™ "
 Н
#__inference__update_step_xla_248210f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`ахйёЖз>
™ "
 †
!__inference__wrapped_model_246723{'()*+,%&:Ґ7
0Ґ-
+К(
lstm_33_input€€€€€€€€€
™ "3™0
.
dense_22"К
dense_22€€€€€€€€€Ђ
D__inference_dense_22_layer_call_and_return_conditional_losses_249469c%&/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
)__inference_dense_22_layer_call_fn_249459X%&/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "!К
unknown€€€€€€€€€Џ
C__inference_lstm_33_layer_call_and_return_conditional_losses_248397Т'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ":Ґ7
0К-
tensor_0€€€€€€€€€€€€€€€€€€»
Ъ Џ
C__inference_lstm_33_layer_call_and_return_conditional_losses_248540Т'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ":Ґ7
0К-
tensor_0€€€€€€€€€€€€€€€€€€»
Ъ ј
C__inference_lstm_33_layer_call_and_return_conditional_losses_248683y'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "1Ґ.
'К$
tensor_0€€€€€€€€€»
Ъ ј
C__inference_lstm_33_layer_call_and_return_conditional_losses_248826y'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "1Ґ.
'К$
tensor_0€€€€€€€€€»
Ъ і
(__inference_lstm_33_layer_call_fn_248221З'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "/К,
unknown€€€€€€€€€€€€€€€€€€»і
(__inference_lstm_33_layer_call_fn_248232З'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "/К,
unknown€€€€€€€€€€€€€€€€€€»Ъ
(__inference_lstm_33_layer_call_fn_248243n'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "&К#
unknown€€€€€€€€€»Ъ
(__inference_lstm_33_layer_call_fn_248254n'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "&К#
unknown€€€€€€€€€»Ќ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249015Е*+,PҐM
FҐC
5Ъ2
0К-
inputs_0€€€€€€€€€€€€€€€€€€»

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ Ќ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249160Е*+,PҐM
FҐC
5Ъ2
0К-
inputs_0€€€€€€€€€€€€€€€€€€»

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ Љ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249305u*+,@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€»

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ Љ
C__inference_lstm_34_layer_call_and_return_conditional_losses_249450u*+,@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€»

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ ¶
(__inference_lstm_34_layer_call_fn_248837z*+,PҐM
FҐC
5Ъ2
0К-
inputs_0€€€€€€€€€€€€€€€€€€»

 
p

 
™ "!К
unknown€€€€€€€€€ ¶
(__inference_lstm_34_layer_call_fn_248848z*+,PҐM
FҐC
5Ъ2
0К-
inputs_0€€€€€€€€€€€€€€€€€€»

 
p 

 
™ "!К
unknown€€€€€€€€€ Ц
(__inference_lstm_34_layer_call_fn_248859j*+,@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€»

 
p

 
™ "!К
unknown€€€€€€€€€ Ц
(__inference_lstm_34_layer_call_fn_248870j*+,@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€»

 
p 

 
™ "!К
unknown€€€€€€€€€ д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249535Ъ'()ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€»
#К 
states_1€€€€€€€€€»
p
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€»
UЪR
'К$
tensor_0_1_0€€€€€€€€€»
'К$
tensor_0_1_1€€€€€€€€€»
Ъ д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249567Ъ'()ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€»
#К 
states_1€€€€€€€€€»
p 
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€»
UЪR
'К$
tensor_0_1_0€€€€€€€€€»
'К$
tensor_0_1_1€€€€€€€€€»
Ъ я
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249633Х*+,БҐ~
wҐt
!К
inputs€€€€€€€€€»
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€ 
SЪP
&К#
tensor_0_1_0€€€€€€€€€ 
&К#
tensor_0_1_1€€€€€€€€€ 
Ъ я
E__inference_lstm_cell_layer_call_and_return_conditional_losses_249665Х*+,БҐ~
wҐt
!К
inputs€€€€€€€€€»
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€ 
SЪP
&К#
tensor_0_1_0€€€€€€€€€ 
&К#
tensor_0_1_1€€€€€€€€€ 
Ъ ґ
*__inference_lstm_cell_layer_call_fn_249486З'()ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€»
#К 
states_1€€€€€€€€€»
p
™ "{Ґx
#К 
tensor_0€€€€€€€€€»
QЪN
%К"

tensor_1_0€€€€€€€€€»
%К"

tensor_1_1€€€€€€€€€»ґ
*__inference_lstm_cell_layer_call_fn_249503З'()ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€»
#К 
states_1€€€€€€€€€»
p 
™ "{Ґx
#К 
tensor_0€€€€€€€€€»
QЪN
%К"

tensor_1_0€€€€€€€€€»
%К"

tensor_1_1€€€€€€€€€»≤
*__inference_lstm_cell_layer_call_fn_249584Г*+,БҐ~
wҐt
!К
inputs€€€€€€€€€»
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p
™ "xҐu
"К
tensor_0€€€€€€€€€ 
OЪL
$К!

tensor_1_0€€€€€€€€€ 
$К!

tensor_1_1€€€€€€€€€ ≤
*__inference_lstm_cell_layer_call_fn_249601Г*+,БҐ~
wҐt
!К
inputs€€€€€€€€€»
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p 
™ "xҐu
"К
tensor_0€€€€€€€€€ 
OЪL
$К!

tensor_1_0€€€€€€€€€ 
$К!

tensor_1_1€€€€€€€€€ …
I__inference_sequential_31_layer_call_and_return_conditional_losses_247740|'()*+,%&BҐ?
8Ґ5
+К(
lstm_33_input€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ …
I__inference_sequential_31_layer_call_and_return_conditional_losses_248051|'()*+,%&BҐ?
8Ґ5
+К(
lstm_33_input€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ £
.__inference_sequential_31_layer_call_fn_248072q'()*+,%&BҐ?
8Ґ5
+К(
lstm_33_input€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€£
.__inference_sequential_31_layer_call_fn_248093q'()*+,%&BҐ?
8Ґ5
+К(
lstm_33_input€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€µ
$__inference_signature_wrapper_248170М'()*+,%&KҐH
Ґ 
A™>
<
lstm_33_input+К(
lstm_33_input€€€€€€€€€"3™0
.
dense_22"К
dense_22€€€€€€€€€