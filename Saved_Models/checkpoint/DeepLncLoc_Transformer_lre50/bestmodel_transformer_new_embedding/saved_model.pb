��(
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-0-ga4dfb8d1a718��$
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:@*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:@*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:@*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Hd*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:Hd*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:d*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:d*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
3transformer_block/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*D
shared_name53transformer_block/multi_head_attention/query/kernel
�
Gtransformer_block/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp3transformer_block/multi_head_attention/query/kernel*"
_output_shapes
:@@*
dtype0
�
1transformer_block/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*B
shared_name31transformer_block/multi_head_attention/query/bias
�
Etransformer_block/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/query/bias*
_output_shapes

:@*
dtype0
�
1transformer_block/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*B
shared_name31transformer_block/multi_head_attention/key/kernel
�
Etransformer_block/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/key/kernel*"
_output_shapes
:@@*
dtype0
�
/transformer_block/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*@
shared_name1/transformer_block/multi_head_attention/key/bias
�
Ctransformer_block/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp/transformer_block/multi_head_attention/key/bias*
_output_shapes

:@*
dtype0
�
3transformer_block/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*D
shared_name53transformer_block/multi_head_attention/value/kernel
�
Gtransformer_block/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp3transformer_block/multi_head_attention/value/kernel*"
_output_shapes
:@@*
dtype0
�
1transformer_block/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*B
shared_name31transformer_block/multi_head_attention/value/bias
�
Etransformer_block/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/value/bias*
_output_shapes

:@*
dtype0
�
>transformer_block/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>transformer_block/multi_head_attention/attention_output/kernel
�
Rtransformer_block/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp>transformer_block/multi_head_attention/attention_output/kernel*"
_output_shapes
:@@*
dtype0
�
<transformer_block/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*M
shared_name><transformer_block/multi_head_attention/attention_output/bias
�
Ptransformer_block/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp<transformer_block/multi_head_attention/attention_output/bias*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
�
+transformer_block/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+transformer_block/layer_normalization/gamma
�
?transformer_block/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp+transformer_block/layer_normalization/gamma*
_output_shapes
:@*
dtype0
�
*transformer_block/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*transformer_block/layer_normalization/beta
�
>transformer_block/layer_normalization/beta/Read/ReadVariableOpReadVariableOp*transformer_block/layer_normalization/beta*
_output_shapes
:@*
dtype0
�
-transformer_block/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-transformer_block/layer_normalization_1/gamma
�
Atransformer_block/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp-transformer_block/layer_normalization_1/gamma*
_output_shapes
:@*
dtype0
�
,transformer_block/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,transformer_block/layer_normalization_1/beta
�
@transformer_block/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp,transformer_block/layer_normalization_1/beta*
_output_shapes
:@*
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
�
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/batch_normalization/gamma/m
�
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/batch_normalization/beta/m
�
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:@*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Hd*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:Hd*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:d*
dtype0
�
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:d*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
�
:Adam/transformer_block/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*K
shared_name<:Adam/transformer_block/multi_head_attention/query/kernel/m
�
NAdam/transformer_block/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/query/kernel/m*"
_output_shapes
:@@*
dtype0
�
8Adam/transformer_block/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*I
shared_name:8Adam/transformer_block/multi_head_attention/query/bias/m
�
LAdam/transformer_block/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/query/bias/m*
_output_shapes

:@*
dtype0
�
8Adam/transformer_block/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*I
shared_name:8Adam/transformer_block/multi_head_attention/key/kernel/m
�
LAdam/transformer_block/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/key/kernel/m*"
_output_shapes
:@@*
dtype0
�
6Adam/transformer_block/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*G
shared_name86Adam/transformer_block/multi_head_attention/key/bias/m
�
JAdam/transformer_block/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block/multi_head_attention/key/bias/m*
_output_shapes

:@*
dtype0
�
:Adam/transformer_block/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*K
shared_name<:Adam/transformer_block/multi_head_attention/value/kernel/m
�
NAdam/transformer_block/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/value/kernel/m*"
_output_shapes
:@@*
dtype0
�
8Adam/transformer_block/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*I
shared_name:8Adam/transformer_block/multi_head_attention/value/bias/m
�
LAdam/transformer_block/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/value/bias/m*
_output_shapes

:@*
dtype0
�
EAdam/transformer_block/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*V
shared_nameGEAdam/transformer_block/multi_head_attention/attention_output/kernel/m
�
YAdam/transformer_block/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpEAdam/transformer_block/multi_head_attention/attention_output/kernel/m*"
_output_shapes
:@@*
dtype0
�
CAdam/transformer_block/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*T
shared_nameECAdam/transformer_block/multi_head_attention/attention_output/bias/m
�
WAdam/transformer_block/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOpCAdam/transformer_block/multi_head_attention/attention_output/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	@�*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_1/kernel/m
�
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	�@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
�
2Adam/transformer_block/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*C
shared_name42Adam/transformer_block/layer_normalization/gamma/m
�
FAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/m*
_output_shapes
:@*
dtype0
�
1Adam/transformer_block/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/transformer_block/layer_normalization/beta/m
�
EAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/m*
_output_shapes
:@*
dtype0
�
4Adam/transformer_block/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/m
�
HAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/m*
_output_shapes
:@*
dtype0
�
3Adam/transformer_block/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/m
�
GAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/m*
_output_shapes
:@*
dtype0
�
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/batch_normalization/gamma/v
�
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/batch_normalization/beta/v
�
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:@*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Hd*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:Hd*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:d*
dtype0
�
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:d*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
�
:Adam/transformer_block/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*K
shared_name<:Adam/transformer_block/multi_head_attention/query/kernel/v
�
NAdam/transformer_block/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/query/kernel/v*"
_output_shapes
:@@*
dtype0
�
8Adam/transformer_block/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*I
shared_name:8Adam/transformer_block/multi_head_attention/query/bias/v
�
LAdam/transformer_block/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/query/bias/v*
_output_shapes

:@*
dtype0
�
8Adam/transformer_block/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*I
shared_name:8Adam/transformer_block/multi_head_attention/key/kernel/v
�
LAdam/transformer_block/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/key/kernel/v*"
_output_shapes
:@@*
dtype0
�
6Adam/transformer_block/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*G
shared_name86Adam/transformer_block/multi_head_attention/key/bias/v
�
JAdam/transformer_block/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block/multi_head_attention/key/bias/v*
_output_shapes

:@*
dtype0
�
:Adam/transformer_block/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*K
shared_name<:Adam/transformer_block/multi_head_attention/value/kernel/v
�
NAdam/transformer_block/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/value/kernel/v*"
_output_shapes
:@@*
dtype0
�
8Adam/transformer_block/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*I
shared_name:8Adam/transformer_block/multi_head_attention/value/bias/v
�
LAdam/transformer_block/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/value/bias/v*
_output_shapes

:@*
dtype0
�
EAdam/transformer_block/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*V
shared_nameGEAdam/transformer_block/multi_head_attention/attention_output/kernel/v
�
YAdam/transformer_block/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpEAdam/transformer_block/multi_head_attention/attention_output/kernel/v*"
_output_shapes
:@@*
dtype0
�
CAdam/transformer_block/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*T
shared_nameECAdam/transformer_block/multi_head_attention/attention_output/bias/v
�
WAdam/transformer_block/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOpCAdam/transformer_block/multi_head_attention/attention_output/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	@�*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_1/kernel/v
�
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	�@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
�
2Adam/transformer_block/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*C
shared_name42Adam/transformer_block/layer_normalization/gamma/v
�
FAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/v*
_output_shapes
:@*
dtype0
�
1Adam/transformer_block/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/transformer_block/layer_normalization/beta/v
�
EAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/v*
_output_shapes
:@*
dtype0
�
4Adam/transformer_block/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/v
�
HAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/v*
_output_shapes
:@*
dtype0
�
3Adam/transformer_block/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/v
�
GAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/v*
_output_shapes
:@*
dtype0
�
ConstConst*#
_output_shapes
:�@*
dtype0*��
value��B���@"��      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?�jW?@Q
?�z.?�T;?�}?�X?��>ƒi?>9�>jNs?'�p>��x?:#5>��{?�%>(�}?vu�=��~?7o�=�G?�6f=h�?��,=��?\�=<�?�>�<��?B��<��?IzZ<,�?W�#<��?��;(�?\D�;��?].�;k�? >O;��?i;��? �:��?�ɮ:��?m�:��?��D:��?j:��?%�9��?_˥9��?�x9  �?Sw:9  �?q�9  �?��h?3վ�Z?QM�=
�f?���>5??9*?T?�{N?���>i�c?�G�>��o?���>��v?�oK>��z?� >O }?���=�a~?���=?�p�=�|?�0B=N�?\�=��?Pu�<��?>ԣ<��?T�u<��?�C8<��?.
<��?�=�;��?�h�;C�?i;��?��.;��?i;��?���:��?j�:��?$]:��?_�%:��?��9��?Sw�9��?qԋ9��?Á>&p}��<G?Ϳ ��E~?���c!t?c�>�	P?W/?�$'?��A?m/?)m\?�h�>7�k?mN�>�t?�md>��y?��+>�]|?,3>C�}?���=O�~?��=;Z?MiZ=â?��#=��? ��<��?IG�<k�?�1�<��?IDO<��?n<�?�;W�?�Ϯ;�?�;z�?��D;��?ao;��?�:��?Yѥ:��?�x:��?~::��?~�:��?���9��?ϽA�0U'���>;l}��IG?�� ��G~?����t?�.�>�P?x6?�'?��A?-+?�o\?�a�>��k? I�>��t?�ed>	�y?��+>�]|?�.>i�}?���=d�~?ȍ�=GZ?laZ=ʢ?��#=��?A��<��?�@�<l�?�,�<��?�<O<��?th<�?��;X�?Xɮ;�?X�;z�?y�D;��?j;��?�:��?\˥:��?�x:��?Rw::��?q�:��?|u�,<�>d5��#R��ڥ>@2r���[?D��?�r)��?m?�V�>��F?�L!?TR?,I?Dw�>@�`?���>7n?��>|�u?�OV>�Tz?<!>��|?�B�=�3~?!۵=�~?�s�=an?��L=�?؊=��?�M�<�?϶�<o�?���<��?%BB<e�?��<i�?�{�;��?�֣;.�?��u;��?�D8;��?q.
;��?1>�:��?
i�:��?&i:��?��.:��?�����u?�6z��}X�t�k�Sy�W�?T�Q�Mxr?o?���3}?��>�0`?4/�>ͩ7?V2?i�?2IS?P��>��f?�}�>�q?�*�>l�w?o A>�g{?�4>�i}?��=Q�~?7��=V.?ќu=�?Y;8=��?�,
=��?
@�<�?Fl�<4�?�i<^�?�.<E�?�<��?Y��;��?Io�;V�?];��?Q�%;��?��:��?~�:��?}ً:��?��Q:��?F0(?��@?��[�W�?n�6�`O3�hA>!h{�o�L?�t���~?\^��D�r?���>h�M?aU?s�$?��C?LK ?M�]?�`�>�kl?`�>i�t?P�`>��y?U3)>({|?�F�=�~?h�=��~?2>�=�_?3�V=��?`1!=;�?T��<s�?�R�<��?R��<��?*�K<��?��<%�?�_�;e�?��;�?���;~�?.tA;��?�;��?��:��?f(�:��?ĳt:��?�F}?���z��3�u?�-z� Y�
lk��$y�}?�Q��}r?5���1}?�,>�+`?z@�>��7?_[2?Շ?TLS?Ҥ�>R�f?x�>�q?R&�>�w?�A>8h{?�/>�i}?��=l�~?Q��=f.?��u=�?�48=��?�'
=��?�8�<�?�f�<5�?%i<^�?��.<E�?<��??��;��?�i�;V�?
];��?T�%;��?
��:��?Ow�:��?pԋ:��?2�>�?i����>�d?F�p��>��:K���>��t��mX?���/�?:��"�n?Fr�>�H?�!?f�?O�G?�4�>K�_?���>v�m?.>��u?��X>1z?�/#>u�|?|4�=�(~??�=��~?��=�j?�6O=�?�j=��?��<v�?�Ү<�?x�<��?��D<H�?:t<Y�?�&�;��?+ץ;)�?�x;��?��:;��?��;��?8��:��?�N�:��?�D�d�V��p?9��>l��FJ?m8a�>h�p�����8@2?�7�k�z?
�R���x?1�p>�jW?@Q
?�z.?�T;?�}?�X?��>ƒi?>9�>jNs?'�p>��x?:#5>��{?�%>(�}?vu�=��~?7o�=�G?�6f=h�?��,=��?\�=<�?�>�<��?B��<��?IzZ<,�?W�#<��?��;(�?\D�;��?].�;k�? >O;��?i;��? �:��?�ɮ:��?\��r�;+Ml?��ľ�8ǽ0�~?�M�gۖ�!A����q��?�z\�;m?o��m�~?ns�=*&d?�=�>&<?��-?�r?��P?��>��d?���>�p?��>�Vw?�G>,{?u�>0@}?r��=�s~?���=*!?�4}=��?s�==��?ks=[�?=��<��?�;�<v�?�Rp<��?j84<	�?�%<��?���;��?���;L�?��c;��?��*;��?2 ;��?D�:��?�\	��X?�>i�3��>�d?>�p�&��>&��UOK�@R�>��t�*xX?����? ��n?���>�H?Y(?��?5�G?e,�>��_?,��>��m?!��>f�u??�X>�1z?'*#>��|?�+�=�(~?��=��~?��=�j?/O=�?e=��?��<x�?x̮<�?��<��?q�D<H�?�n<Y�?��;��?.ѥ;)�?�x;��?�}:;��?w�;��?���:��?" �>oNh?+���T�r�[?pe?@�7�.&2?LS�����p=�����<?��,���|? �%���v?���>6�S?+�?��*?�>?�j?n|Z?@��>ëj?�Y�>u�s?%�j>�0y?l�0>�)|?о> �}?�U�=��~?���=�P?�n`=��?iV(=��?w��<��?�\�<}�?��<'�?k�T<v�?�<��?ً�;@�?���;�?%��;r�?{J;��?�;��?19�:��?r�}?�>�a�H$��l�?����k�����m?��u����5���{��U?�|K�X�t?j��oF|?�.>�
^?x��>�[5?í4?�?٪T?�V�>�Qg?�ߦ>fr?O|>}x?�>>5�{?d�>�~}?k��=+�~?h�=5?]�q=Ӎ?FG5=ɿ?��=��?��<��?�<��?V^e<��?,,<c�?|� <��?�s�;��?��;\�?��Y;��?^(#;��?���:��?Dy&?�zB�\�w�!�>��U?����-={�?u���"�<�ξ�8j����>p�c��h?�2վ�[?�ސ=��f?���>A:??03*?�X?wxN?���>h�c? N�>��o?D��>O�v?9wK>G�z?O> }?���=�a~?勬=�?tu�=�|?�7B=I�?��=��?3}�<��?)ڣ<��?3�u<��?EJ8<��?
3
<��?YE�;��?�n�;C�?si;��?��.;��?%;��?h��,)u�g�	�6�W?60�>�h���>�d?.�p�0>�>Iu��dK����>J�t���X?B���?�3��n?���>�}H?�.?��?�G?6$�>��_?���>�m?��>#�u?��X>�1z?P$#>��|?�"�=�(~?��=��~?��=�j?�'O="�?�_=��?�<z�?)Ʈ<�? �<��?W�D<H�?�i<Y�?��;��?1˥;)�?��x;��?Cw:;��?k�;��?%v�6⌾�+9>��{?m�	�~�}�z:F?�!?��I�O�?��F�@.!�(�=D4~�/mD?-,$���}?���[�t?BV�>Q?��?�3(?��@?�?��[?���>czk?Co�>dt?�'f>.sy?#>->IO|?30>0�}?�|�=��~?0��=�W?�\=S�?*%=��?Ҝ�<�?��<)�?�A�<��?b�P<��?�<�?��;Q�?�'�;�?3�;x�?�F;��?��;��?�@@��
)?zzM?��?Eg$��;D��*w?,T�>Ũ��T?0g���۾��r�Č���,?��<�Ny?��h�F�y?�s`>Y?�?/00?��9?��	?��W?4��>�i?�>;�r?�ps>�x?�S7>.�{?�	>�}?���=��~?N�=KC?�i=ܕ?��.=N�?+=n�?��<�?�r�<b�?f%]<�?��%<��?n��;�?���;��?oދ;g�?&�Q;��?�N;��?iy>�}?�m~?T��R�s������|?�_!�A���dv?�z�f<R�^�p���x��6?#R��@r?6����F}?��>S_`?'��>y�7?�!2?p�?\*S?��>�sf?緩>��q?iW�>��w?:dA>�d{?h>�g}?�f�=H�~?@�=�-?��u=��?�|8=~�?�]
=��?���<��?~��<,�?ani<Y�? /<B�?bE<��?4��;��?���;V�?�m];��?;&;��?ȶi?"��>��&?� B�K�w�x�~>E$V?xH�;g)=��?���w��<�jξ�Ej����>-�c���h?3վ�Z?QM�=
�f?���>5??9*?T?�{N?���>i�c?�G�>��o?���>��v?�oK>��z?� >O }?���=�a~?���=?�p�=�|?�0B=N�?\�=��?Pu�<��?>ԣ<��?T�u<��?�C8<��?.
<��?�=�;��?�h�;C�?i;��?��.;��?/V?�7�(
#����/��:?~�	?ФW�z6�>7�o?D�v��T�>��pRT��R�>'>q�J�\?�=�{�?Cw����l?t��>�6F?�"?
�?��I?�>V�`?�ɺ>'[n?w��>v?�vU><`z?q� >�|??J�=�7~?T �=2�~?>�=�o?L�K=��?��=O�?�`�<N�?��<��? �<��?zA<n�?�<n�?���;��?!.�;0�?x�t;��?ņ7;��?�o��M�5��<4�GF��'{?}r>�8}�'�?yH?`����>-S2���7�NS>�}z���N?���3?~����q?���>��L?��?�$?��D?�(�>��]?<�>\�l?��>�u?�w_>j�y?�+(>*�|?��=~?&��=,�~?[]�=xa?��U=֦?4 =��?PL�<��?�5�<$�?�$�<�?��J<��?[�<.�?+��;j�?[�;�?�1�;��?
D@;��?�X��g���e}����>��n?�����nv��V?t?��<���,?� P��;��k�=?J���>?�*���|?��g6v?F8�>(S?ż?5*?�8??[�?|�Z?͞�>j�j?���>�t?�ri>3By?��/>�3|?�>��}?S�=��~?Ӕ=�R?�J_=��?@{'=1�?�7�<-�?>f�<��?�H�<A�?��S<��? �<��?�S�;D�?���;�?��;t�?OI;��?��g��-�>j�@�k�(?�/M?
?�$��wD��w?�ۅ>s���sT?g��+ܾG�p����(�,?��<��Qy?�fh���y?��`>Y?��?+0?c�9?K�	?��W?��>s	i?|�>) s?Qhs>��x?�L7>z�{?&�	>�}?*��=��~?yH�=YC?]�h=�?H�.=S�?p=p�?і�< �?`m�<c�?j]<�?��%<��?r��;�?�}�;��?bً;g�?��Q;��?8��x�}?]�н	�~?~5?J�=H)f��(�d�?W�S��ر�Ep?2�v��B�C�I{�x5?�M�(Dt?a;����|?#(>=�^?���>��5?�4?_?�PT?2�>�g?㋧>��q?wW}>�
x?��>>��{?S|>ny}?G��=%�~?r��=O3?��r=ތ?,	6=?�?��=��?W��<��?���<|�?�Sf<��?D�,<\�?��<��?C�;��?��;Z�?�{Z;��?7C?��%?u?}'L?��b?���5� ���n?�)��_Q�>;~?k�~�B���`£�r�r���?][���m?�f��$}~?�2�=�c?���>E�;?�<.?�?�P?Qa�>e?���>5�p?��>Uew?�cF>J&{?V/>�D}?h�=|v~? 2�=�"?�a|=y�?�O==��?{�=��?���<��?��<��?5�o<��?�3<�?ڴ<��?<�;��?Ѐ�;M�?9c;��?�t?8���`+|?�z0>-A ?*�]��l���>�bF?��!��3�=p,~?��~� ��=���9�e����>Fqg��f?Ɂ�ʥ?��V=Luh?�w�>��@?�8(?
�?�KM?~�> c?�c�>Õo?��>��v?��M>E�z?$�>}?���=�W~? ��=D?�	�=�y?��D=y�?�q=��?9(�<�?pڥ<��?��x<r�?��:<��?)�<��?s��;��?�T�;?�?^�k;��?*��>Wmv�'�V?i��������a'0���9?l;
?�xW�rò>��o?k�v����>���eT����>|5q�]?�,���?�_v���l?���>u1F?	"?4�?j�I?���>��`?)ú>i\n?}~�>�v?�nU>�`z?�� >I�|?�A�=�7~?��=D�~?X�=�o?��K=Ǯ?C�=R�?�X�<P�?���<��?v��<��?sA<n�?w<n�?���;��?<(�;0�?��t;��?��)���?�i�w>[gx����KS�2a���q?`��>o�w�C<?�-T?,g�+8�>��)���?���t>��x���R?�^��?�u�P�p?���>�7K? �?�"?B�E?{}�>ݴ^?N�>5m?Th�>xOu?��\>g�y?�@&>y�|?���=�~?��=��~?ʺ�=e?5#S=�?�\= �?��<r�?#�<��?���<I�?�[H<�?�?<?�?�W�;s�?���;!�?�p};��?��|��>V����_��j��d˾m�=?�~�ہ�p=?b�,?��O�?A?��A�29'�Á>&p}��<G?Ϳ ��E~?���c!t?c�>�	P?W/?�$'?��A?m/?)m\?�h�>7�k?mN�>�t?�md>��y?��+>�]|?,3>C�}?���=O�~?��=;Z?MiZ=â?��#=��? ��<��?IG�<k�?�1�<��?IDO<��?n<�?�;W�?�Ϯ;�?�;z�?�ξ�,j?�bs�;���4�|���>�A�>��_?2����m�zS`?D��>VN2�N�7?6YV����|P*=R��w�:?d9/��3|?�/�X)w?�_�>��T?^�?��+?�=?�?�Z?���>|oj?�0�>"�s?}�k>%y?\�1>�|?~{>��}?�q�=Z�~?k�= O?9�a=r�?�F)=�?M��<��?�k�<K�?�̎<�?�,V<f�?\� <��?E��;;�?\��;�?�u�;q�?M*?��U?�1h�ڛ�>�A�(?B�L?�x?��#���D�=w?c�> �5VT?g�8sܾ�o�?����,?ٶ<��Uy?&h���y?a�`>Y?�?&0?6�9?��	?j�W?���>i?��>s?�_s>"�x?oF7>��{?5�	>7�}?���=��~?�B�=fC?��h=�?��.=W�?�=s�?���<"�?h�<d�?n]<�?��%<��?x��;�?w�;��?Vԋ;g�?9�?��Y�����I$m?!���Z$u?v�y?�`>��X�
��{�?��<�^ξ�Hj?��s�N���!�y�|��[?�$I���u?돾��{?��6>�;]?�� ?�4?��5?��?�+U?�>�g?��>�/r?g�z>�3x?�<>̚{?J
>u�}?�T�={�~?x�=o7?�:p=0�?�04=��?�$=R�?��<��?+�<��?��c<��?��*<n�?U6 <��?�J�;��?�2�;^�?�q?�;Y�.�>�Ao?;��>ոv?��z?�K�ymx�'7w�rz?V&T�%up���x?��{���5�Iւ��w���?=qT��>q?�N����}?��>B2a?�>��8?�31?��?؝R?oD�>�"f?Ҿ�>_Xq?�!�>`�w?�B>�U{?�P>�_}?���=��~?��=+?�w=@�?ݥ9=��?�<= �?
��<��?F��<�?��j<D�?7'0<6�?�<��?y�;��?���;T�?�:۾_Xg�ĳe?��>�R=?�P,?P?�4�ST�$�=)�f?��ܾ*_r�*�?x���8�ܙ����o�Q�>	�^��l?�'ƾ_�~?���=��d?d"�>9�<?��,?�>?��O?�b�>}�d?M��>�zp?�ׄ>�;w?�>H>�{?��>{7}?�5�= o~?�ȩ=g?�~=�?�?=��?�T=��?(��<n�?^9�<O�?�q<��?~U5<��?��<��?-��;��?8�;I�?8�}����u?�����
|?.\3>�� ?�G]�	�l�Z�>��F?m�!��]�=x3~?� �R��=
����e����>�fg��f?$`��?ƶW=�ph?��>`�@?u>(?K�?OM?1v�>c?J]�>�o?6��>[�v?p�M>��z?��>C}?'��=�W~?՟�=U?��=�y?j�D=�?�l=��?> �<�?sԥ<��?��x<s�?Ã:<��?�<��?���;��?�N�;?�?�$�-�C?�?�]�0#m?Y����	�=��~�7�B�6�%?�?��K�y��>R�t?߼y�%a>W��Y�䴷>3�n�tp_?���`�?.X,<g�k?μ�>��D?�#?��?��J?�>Fwa?�%�>�n?�>�>�5v?��S>�zz?�>��|?�=�?~?vv�=�?Y��=1r?J=>�?v�=%�?KD�<��?�o�<��?�<�?�?<��?��<z�?���;��?x��;4�?���>�t?�a�ɼy��2?EP��[���Hs����HZ?���>kj����>\�c?�	p�p��>����|J��b�>�)u�MX?�M	�-�?K����n?m��>ʵH?5�?p ?׽G?�|�>=�_?J�>��m?��> �u?(Y>d-z?�c#>_�|?^��=f'~?�L�=�~?�I�=mj?�xO=�?M�=��?Ph�<e�?�
�<
�?ND�<��?K�D<E�?I�<W�?Dm�;��?�;)�?K�v?l��>�dS�)d��t=����F,��[=���l��y?�3>�|�3[?�xK?�b�Y6�>q0���9�2y\>��y�IP?';��M?�����q?�>�kL?n?6�#?��D?ko�>'^?��>��l?��>4!u?��^>9�y?��'>��|?	��=;~?�"�=��~?��=tb?�T=d�?�=+�?M��<��?���<=�?���<#�?�J<�?߅<3�?�@�;m�?�j�;�?��>?t�*��}���>%���bZ`��j���̾ B�=�?"�x�=���<?��,?�P�+?ϽA�0U'���>;l}��IG?�� ��G~?����t?�.�>�P?x6?�'?��A?-+?�o\?�a�>��k? I�>��t?�ed>	�y?��+>�]|?�.>i�}?���=d�~?ȍ�=GZ?laZ=ʢ?��#=��?A��<��?�@�<l�?�,�<��?�<O<��?th<�?��;X�?Xɮ;�?�m"�D�|��˝H?E�_��"��.��6�0<3��>��k?�A��X�t��{X?=�?�m:�iq/?�zQ��'��*�=�l�F�=?�+�	�|?�G!��nv?(��>kS?=?��*?M�>?�?K�Z?��>n�j?�>��s?�j>�9y?*0>�.|?�d>��}?R��=}�~?�/�=�Q?��_=�?��'=��?+��<�?�ۼ<��?��<4�?kT<~�?K<��?X��;B�?�'�;�?(�j���̾�=T0?ԗ���f=�mh� ��>8�'?cEA?x���:\��=m?�b�>�r!�'�F?�_�w���v������3?�	6�[�z?~�K�C�x?@v>��V?�.?��-?9�;?5 ?��X?���>2�i?���>Khs?�o>��x?�j4>��{?��>Ҿ}?���=8�~?}ј=LI?�Ie==�??�+=5�?� =�?�v�<��?@�<��?J�Y<8�?�-#<��?��;,�?���;��?1�T��?�<?��,?��P�{?�%(��A?�[?*{?��2��g7�΃z?��R>[���_Z?ډj��5;������z)?��?�|�x?Z�u�ORz?6{V>$Z?�?	:1?�8?��
?�W?p�>��h?!@�>N�r?F4u>[�x?`�8>��{?�
>�}?�x�=��~?(s�=@?�j=I�?�0=l�?�=��?��<��?x��<:�?��^<��?0'<��?���;�?5�;��?��<��?��?MD�w�¾��l?�Д���t?�y?�b>b�X��P�b�?�<��ξ�2j?2�s��Z���!�H�|��m?�I��u?%ʏ�G�{?D�6>$7]?� ?�{4?��5?x�?�.U?��>Νg?2�>�0r?��z>4x?H�<>�{?2>��}?<M�=��~?��=~7?�1p=8�?u*4=��?�=T�?���<��?���<��?��c<��?��*<o�?�1 <��?�C�;��?��Y?�{?��9?�0�}�/>2|?h{>��}?K�~?�[���r��0���0}?QG����3�u?j?z���W��^l�"y�/�?��Q��rr?�`���5}?��>L5`?��>��7?�P2?��?FS?ͳ�>��f?���>ُq?a/�>��w?S'A>�g{?�9>�i}?�!�=6�~?��=G.?��u=
�?�A8=��?�1
=��?�G�<�?�q�<3�?�#i<]�?U�.<E�?�<��?r��;��?��f?mFݾ�]=�����+?d�=?z?�rZ?o�j?��˾���x���r?�������)}?�b~�9��-����s���?4�Y�~�n?\���qF~?~V�=-c?/j�>=�:?b/?�^?�SQ?+M�>�ce?"�>f�p?t��>�{w?}dE>�2{?an>�K}?���=zz~?dW�=�$?g{=��?}Y<=��?�C=�?s��<�?�<��?2Rn<�?�2<�?b<��?�;��?��=�	~�v"�'�E�4|v?XJ�>^2S?��?D�??��)�A!}���>G-`?;�������?�����J�OK���um����>��`���j? �̾? �=^�e?i��>f�=?ث+?'&?�WO?���>�=d?ܽ�>{Cp?x��>Kw? I>�z?g�>}-}?c��=`i~?���=<?�F�=R?�p@=��?pU=M�?]}�<�?GZ�<!�?h�s<��?w�6<��?9�<��?�_�;��?V�D���#�̹}��0�eu?_ב���{?�<6>�3?]��m��>�>k�F?.R!�w��=r:~?���2�=YV⾮�e��+�>�[g��#f?~>�P�?��X=zlh?*��>0�@?hD(?��?�RM?Rn�>c?W�>�o?g��>�v?�M>�z?�>y}?ʜ�=�W~?���=g?A �=�y?S�D=��?Cg=��?B�<!�?vΥ<��?��x<s�?}:<��?�<��?L��;��?")t�D�>B�P��?*�(?<�@�~x?
+v��DX>�9z���O��?�'?T�A�!g~>D�w?�{��>>����\�U��>'m��5a?�r�)�?�P�<!�j?��>[�C?X�$?��?�CK?���>��a?���>H�n?;M�>�Wv?�R>�z?H	>��|?�o�=F~?i:�=]?�=$t?��H=W�?y=��?"��<�?�B�<�?��}<"�?�_><��?��<��?��;��?�U��w?C�O���z?a >7�|���I?f���oӽ͡~���&�E9B?�)?�p\��>�Pm?|u�,<�>d5��#R��ڥ>@2r���[?D��?�r)��?m?�V�>��F?�L!?TR?,I?Dw�>@�`?���>7n?��>|�u?�OV>�Tz?<!>��|?�B�=�3~?!۵=�~?�s�=an?��L=�?؊=��?�M�<�?϶�<o�?���<��?%BB<e�?��<i�?�{�;��?$�+?��=?��?��Z?��ɾdHk����>t�b�l�оy�i����x�c?Q;�>��o��i�>�q^?1m�L��>��!���F�^�>nyv��'V?eC�M�?��+��vo?u�>�I?|�?x� ?G?^��>/l_?��>S�m?zՐ>:�u?s�Z>7z?�n$>��|?��=N!~?�{�=��~?"-�=h?2�P=ʪ?��=�?���<�?�*�<��?��<z�?�$F<5�?��<N�?$��;|�?��|?�&�5Zv?�;�>��R�C��ˀ=F~�e�+���=�Y�n�;�x?�5>��{�9(?s�K?*b�k��>D�/�}�9���\>"�y�P?�*��N?����݊q?E��>�fL?A!?H�#?��D?g�>f)^?c��>6�l?ۗ�>�!u?�^>��y?��'>�|?���=_~? �=�~?��=�b?b�T=j�?V�=.�?���<��?��<?�?���<$�?AJ<�?f�<3�?�8�;m�?���>�k��c?8�����t(��ų�`�o�T^������Y�:��?��׸  ��M�4?�/5?{U�z�?�f=��:,��V$>��|��I?����~?׽O|s?��>"O?�x?�=&?�B?�j?��\?-�>�l?	Y�>��t?h�b>��y?�*>�i|?S\ >�}?f��=$�~?��=c\?��X=��?�"=?�?t�<��?D�<��?�J�<��?��M<��?;j<�?^��;]�?���MT��֭>��p���]���>�4��5�k�z���M��ur>k�x?�=5�R�{�IVK?�?��E�;{"?��I�P��ϊ�=i�~���B?�)&�m�}?G���Ju?L��>��Q?��?p�(?�q@?k�?̒[?��>�Kk? �>�It?�+g>(dy?A.>�F|?��>i�}?�\�=�~?qY�=(V?�]=y�?��%=F�?<��<��?g��<�?��<r�?Y�Q<��?T<��?���;M�?���,C�<Lɾ�qk�s��8b??�n���WX~�^~�=R��>#�c?�T��L�o��5^?";�>J�4�bk5?gU����uG=@��a�;?�9.�R`|?E�+���v?�ۆ>RTT?�?�_+?C->?��??Z?�;�>w�j?�כ>[�s?:`k>3%y?�31>D#|?m->a�}?w��=��~?��=�O?�*a=�?f�(=D�?�S�<��?���<`�?�x�<�?�U<m�?�= <��?�T�;=�?^���lZ?�j���Ͼ�֙=�F?ţ��:Y=�h��o�>t�'?ЕA?;5��i\��#m?���>��!�|�F?�_�"G��f_��&��k4?.�5���z?P�K�P}x?�7v>��V?�6?��-?��;?��?��X?��>��i?1��>2is?��o>�x?/d4>�{?��>��}?B��=P�~?�˘=YI?�Ae=D�?
�+=9�?^� =��?�o�<��?�<��?n�Y<9�?�'#<��?2��;,�?�P�>�]f?5�q��>�_?��M?�c���>X�;�s�-?�MP?��?�$'���A�4�w?�>�����U?��g��&پ>z���z��9,?�g=��(y?B%k��y?��^>�GY?�^?@b0?�9?S%
?ӆW?�>�>��h?_Q�>�r?��s>�x?��7>?�{?��	>9�}?�;�=��~?%��=�B?yXi=��?�/=$�?�D=V�?���<�?��<[�?�s]<�?�&<��?��;�?�,~?��=�@��b?	�n?̖�>���D�G?5��
�_?�nm?{n�>��F��G!�,,~?@E�=V���h�b?WQo�g͵��$���(~�0$?�D��,w?E��� {?~�F>2�[?]|?��2?�+7?LK?k"V?л�>T*h??�>��r?��w>�ax?D�:>Ŵ{?�e>�}?Y��=��~?>>�=<?Qom=͑??2=�?�=%�?�W�<f�?&>�<��?�Va<��?_�(<��?hp�;
�?C#?�eE�Y�>�Lw?S{?��B�����w?F�C�FJ{?*F}?L	>�3`�d#����?�b��l��:om?�tu��n����3�	|�0�?�=K���t?EՔ��<|?��.>��]?J�>�D5?��4?�m?��T?�5�>�Yg?�Ŧ>�	r?�&|>
x?�=>��{?M�>�}?�z�=��~?C��=D5?�q=��?�)5=޿?k�=��?���<��?7՘<��?9e<��?2�+<e�?�� <��?#��V�s�*�X?��?ϧ:?�3/�hH,>�Y|?|��=�~?c�~?�C��m�r��룾�;}?�"������u?�6z��}X�t�k�Sy�W�?T�Q�Mxr?o?���3}?��>�0`?4/�>ͩ7?V2?i�?2IS?P��>��f?�}�>�q?�*�>l�w?o A>�g{?�4>�i}?��=Q�~?7��=V.?ќu=�?Y;8=��?�,
=��?
@�<�?Fl�<4�?�i<^�?�.<E�?�<��?Sw��%��_{?��A� �>Ľw�C�?U�T?�<�>_�g?�Ur?E���2}�����u?[���ψ:�{�{?��}����Ñ��gu���	?��W���o?����~?���=Zb?,�>i:?�/?q�?t�Q?��>�e?�4�>�q?�A�>��w?HND>{@{?�>�S}?���=�~~?i�=K'?z�y=�?�L;=r�?z=r�?��<R�?U�<��?�l<%�?׸1<%�?F<��?�:=��j,?��?��N�R
���s��Y?e�?��/?�):?�*X?b$	�������<acj?�;�*��b?�}��������p�� ?�A]�n�l?��¾�~?���=Hqd?��>�Z<?�_-?��?WZP?���>k�d?>�>��p?�W�>�Lw?�{G>n{?>�<}?uW�=r~?�!�=# ?�}=�?X^>=.�?^�=,�?-(�<��?b��<h�?��p<��?��4<�?iu<��?K_+>�c|?�
��-~�f�C�$%���}?��>��`?n��>J�1?8��z�pS>��Z?r2�N��<��?S��ձC<��Ǿ�k�ϧ�>�|b���i?rѾ�>?�1�=vf?{��>�>?�*?1�?��N?���>l�c?A��>p?�m�>�w?u�J>��z?�i> &}?	��=(e~?�ګ=�?M��=�}?�oA=�?�=��?;��<��?n1�<��?�t<��?z�7<��?��	<��?Ԇk?���>$�C�m4%���}�`W���u?����@�{?M9>۬?�\�x8m��{�>�F?�!�Y��=^A~?��ѱ=��a�e��X�>=Qg�(,f?�ྒ�?0wY=hh?E��> �@?ZJ(?��?&VM?sf�>&c?�P�>G�o?���>��v?��M>f�z?~�>�}?m��=X~?A��=x?���=�y?;�D=��?�a=��?G�<"�?zȥ<��?��x<t�?Kv:<��?�<��?�S?���#���RF=PXi�Д�>5�B?<&���}?�C	��b�>\u��tX���?$�/?:�jH\>�z?��|��%>������^���>7�k���b?<��?���<QGj?�d�>#C?��%?�?&�K?���>�/b?��>�o?���>qqv?� Q>k�z?�6>�|?�2�=�J~?�K�=�	?��=�u?��G=*�?6�=:�?O��<b�?�_�<(�?%�|<7�?`=<��?O<��?΁ټ�����2�iX7?:F�1}U? -�>�[g�Kpf?߾r�h=����<���,?{?W�O�Y��>qBs?e�x��Up>�
�ŋW�o��>�o�E�^?������??p�;�l?b�>TTE?#?:�?�<J?L/�>�Ga?���>ӑn?ƪ�>&v?�+T>�qz?	�>��|?���=%=~?M�=V?��=Pq?�J=��?x�=��?V��<��?���<��?S5�<��?�I@<|�?�2<v�?[[�����ḼO�?93����?,M�<���U8?;�1���7�[�{�zP���K?2�>��a�}H�>j?��s��>�JqO�9�>sNs�؅Z?[�[�?#�����m?��>�|G?�p ?��?��H?~��>�\`?�_�>2n?轎>��u?�VW>�Fz?�">��|?vn�=e/~?���=��~?�=�l?Y�M=M�?�I=}�?Yl�<��?���<J�?�&�<��?�3C<Y�?�a<b�?��e�mZ�>5*?�8??�?|�[?��Ǿ`�k�%��>�(b���Ͼj��龅�c?wز>��o�m��>Ր^?�m��.�>o!��F�(��>Crv�|2V?�2���?��*��ro?_�>��I?�?�� ?G?$��>|n_?R�>��m?dА>��u?��Z>�z?�h$>ʭ|?�=p!~?u�=��~?(�=�h?��P=Ъ?�=�?Z��<�?�$�<��?��<{�?�F<5�?3�<N�?M��N~?C�~?m^�=�nd?� �>�;�Q#.�B�.>U?|�����K��w��B�t?��b>B�y��?\�P?�,e��)�>�X,��K=�kTk>�%y�K�Q?����s?��=q?��>��K?C?�"?apE?0B�>�|^?a��>+�l?8�>A=u?H�]>�y?�&>��|?���=G~?B-�=��~?,3�=d?��S=J�?+�=��?XT�<B�?���<f�?	�<:�?[I<�?�<:�?�F?5!"?��J?76���~?|2��h|r�0'�����3R}�G2G��� �q��5~?U�=�~�F0(?��@?��[�W�?n�6�`O3�hA>!h{�o�L?�t���~?\^��D�r?���>h�M?aU?s�$?��C?LK ?M�]?�`�>�kl?`�>i�t?P�`>��y?U3)>({|?�F�=�~?h�=��~?2>�=�_?3�V=��?`1!=;�?T��<s�?�R�<��?R��<��?*�K<��?��<%�?Qxs?:8����'>]�|�6�J?�6�}�~�J��=C���Ee��eg��۾�6s=^�?��0������:?s>/?��Q�I?x�@���(���>�7}��G?����^~?��潩�s?#R�>��O?��?��&?$B?��?k�\?��>v�k?��>t�t?��c>�y?N�+>La|?�� >V�}?x��=z�~?.I�=�Z?l�Y="�?�~#=��?L<�<��?��<{�?��<��?��N<��?<�?#��>��w��m�cU�X��>�Jp�?�^���>ى3��|6�}�z�DRP���p>W�x?D�3��|��-K?�?��E��T"?��I�ϫ�#j�=w�~���B?�&���}?�o�OGu?���>��Q?��?o�(?Wv@?"�?]�[?��>?Mk?��>bJt?�#g>�dy?	�->G|?F�>��}?qU�=(�~?!T�=4V?�]=��?��%=J�?B��<��?���<�?�܋<s�?��Q<��?aN<��?�@-� w<���x��o���U�U]z�Y@�f�N?cc�J6����&=2w�>=Cj?�'����s�7�Y?�?�;9�m�0?�9R� �:]�= }�Ds=?-,���|?�s#��v?�߉>��S?��?��*?��>?�>?%�Z?�S�>�j?�"�>4�s?�Jj>�5y?�a0>|,|?��>��}?T�=��~?
_�=uQ?�`=ԝ?�(=��?5$�<��?��<��?΍<.�?��T<z�?�}<��?�2|���/>�^����>�2�WT7�J�U��Zz?��|�n>$��v��E�>I?�NT?{�۾�Ag��f?F��>iy+��>?�Z�6
��U�<��j�7?v2�~�{?�_;��w?��>��U?�%?"�,?G=?e�?ǕY?���>'j? 1�>�s?�qm>�y?��2>�|?�\>c�}?��=+�~?�i�=�L?�-c=�?f*=D�?$��<�?���<�?H��<��?`�W<S�?��!<��?Q�ƾ��k?E����t?��x�-To���V>DNz?��|�q9>p�_��f�>X2?�7?���
�V�� p?/z�>U���eJ?�Ja��#����^��{02?D�7�z?d1S���x?B�p>�oW?yI
?�.?�O;? �?H�X?��>.�i?�>�>�Ms?��p>l�x?�)5>9�{?�*>��}?�|�=��~?�t�=�G?�>f=`�?6�,=��?	�=:�?�E�<��?���<��?-�Z<,�?B�#<��?n�?aS?ؚ�>�Ag?{r�?/�>Jq?�fN?>d�5��>Ni<��O-?�P?I6?��&��$B���w?!��>�%���U?��g�nپ�����|��I,?Y=��,y?c�j�[�y?��^>�BY?�f?(]0?ڎ9?� 
?��W?�7�>_�h?�K�>��r?"�s>j�x?g�7>��{?��	>e�}?n4�=��~?��=�B?Pi=��?V /=(�?�?=Y�?���<�?���<[�?�k]<�?�&<��?��?Z�����m?;Ƽ>/_!�ݻF?8�^?��> �4��j5?�l�Q�T?�!g?��>�2?��;*���|?
>���'�_?i�m����j�׽ԓ~�J7&?N�B��w?�:����z?��L>[?#~?�52?��7?��?�~V?���>�_h?�W�>b�r?��v>�rx?��9>��{?��>��}?���=Ѧ~?L��=�=?al=ǒ?sM1=��?��=t�?�s�<��?���<�?�U`<��?�:(<��?�?��[��vn?�<��߁��C+~?=�~?	�=�~�R�d?�����:p?��v?��>Q"T�M���?\ ]=uM׾�Ch?��r�[�����7}��?��G�v?����ް{?\;>d�\?\�?
4?n�5?nX?$qU?�q�>�g?nc�>�Fr?*z>{@x?T<>�{?i�>��}?]��=͝~?��=�8?ro=�?��3=��?�=��?�
�<�?6��<��?�?c<��?!j*<t�?�b�Z^e���>�f��P�>"Sg?�hr?!������}?�n��I~?�~?���=�Me�ҥ㾟�?�l<�.峾��o?��v�r���>3A��f{��?
�L��^t?y����{|?�()>��^?\5�>��5?5/4?)�?C`T?0�>�&g?%n�>��q?�)}>�x?�>>X�{?b>\z}?�Z�=��~?���=�3?	�r=�?��5=W�?�m=��?���<��?pu�<��?Z)f<��?k�,<]�?}o~���6*xt�OX?�<	?�|;?�O.��(>��|?��=d~?8�~?�+���fr�Ǧ���F}?���z��3�u?�-z� Y�
lk��$y�}?�Q��}r?5���1}?�,>�+`?z@�>��7?_[2?Շ?TLS?Ҥ�>R�f?x�>�q?R&�>�w?�A>8h{?�/>�i}?��=l�~?Q��=f.?��u=�?�48=��?�'
=��?�8�<�?�f�<5�?%i<^�?��.<E�?W@!���F?�5^��<����?w�a;4n�>
�k��4�>U�b?���>ܷo?��v?����1{��vE��Jx?�cy��T�Jmz?��|��� �ל���pv�eS?V�]zp?Q�����}?/$>��a?V@�>�j9?��0?l?Y5R?�;�>!�e?I��>�5q?s��>ҥw?�{C>�J{?��>PY}?	��=�~?败= )?٤x=$�?��:=�?��=��?���<��?�W�<��?��k<4�?��0<-�?�_�>s?0>y�s�i>#Y?t���ⰼ���JF7?T�2?�?��S?Eg?YDܾO���wx���p?�������	�}?ð~�E�ν�D���Ls�b|?�qZ�.Tn?'����`~?�!�=Vcc?75�>`,;?�.?�?XQ?���>Ce?���>��p??H�>�pw?��E>�,{?;�>|H}?��=�x~?t��=�#?��{=#�?��<=V�?��=��?zf�<��?I�<��?��n<�?G'3<�?��w?r�>-��i�T?��>>�f���۾�Ag�S�e?d��>�f=?�:,?��O?�F�S�詔=��f?m�ܾn�q���?ɽ��8�̣��ùo�e�> �^��l?-ƾ��~?���=��d?c�>�<?��,?F??U�O?�c�>+�d?L��>�zp?�؄>�;w?�?H>�{?c�>r7}?�6�=�n~?�ɩ=d?��~=�?�?=��?�U=��?n��<m�?S:�<N�?��q<��?�V5<��?\�;?.��d">��|?�|潥_~���B��&�{}?�M>��`?���>I2? �7�J�z�vQ>��Z?���u�<��?�����8<D�Ǿٹk�C��>�qb�9�i?|PѾ�=?��=~qf?!��>�>?��*?|�?R�N?��>i�c?��><p?�h�>tw?=�J>�z?md>5&}?���=Fe~?kԫ=�?��=~?�hA=�?l=��?`��<��?�+�< �?I�t<��?م7<��?+M4� |���I?*J?���a�G���u�@����|?�3��&w?nq�>��?�YT�dfq�wo�>�iL?t�A�=W�~?�j��(�=�c۾�Ng��b�>f�g?�Uܾ��?�r=��g?���>�S@?��(?�Y?V�M?���>�Nc?��>Ժo?���>��v?qM>*�z?V1>�}?���=r[~?�ޭ=e?t�=�z?еC=&�?S�=��?Q+�<T�?��<��?�w<��?"�9<��?�gl�tľ� ?������q�녧���}�q>5�a?�����?|`�<*R�>eKj�,�c�0�>s<?��-��)>%||?�
~�N��=���$zb�H��>��i��gd?M;羣�?N�)=�Ui?o��>�B?$'?`�?c�L?	�>]�b?N��>UYo?��>a�v?YcO>߱z? �>}? [�=�Q~?6�=�?`��=�w?�F=`�?7�=��?@��<��?��<_�?؍z<V�?k�;<��?�bR�(�?59+?�O>��Py�vh>��X���?��0?9�
Xz?V��Zp>�x��gR���?Z�)?N�?�Lt>��x?i�{��N7>N� ��>]����>��l���a?����?��<�j?�b�>�C?Z%?k?~lK?���>�a?���>��n?�>e_v?��Q>7�z?��>@�|?��=rG~?��=#?���=�t?�OH=��?==��?.Y�<3�?,��<�?�w}<(�?�><��?��=��?�B��A��K�3��6?�c��T?���>
�f��f?�ݾq�q=���&&=�ȁ,?"�?ˣO�b�>lUs?�x��o>� 
�F�W��ȳ>ݲo�˪^?������? ��;gl?d�>%OE?V#?h�?�@J?>'�>�Ia?0��>�n?ӥ�>�&v?C$T>3rz?Q�>1�|?��=E=~?���=i?�=[q?��J=Ư?��=��?��<��?a�<��?�0�<��?�B@<}�?�-\?��?�1�TK8���\���y?Y+��c|?�>x�}��EF?s�!�,��2~���$��D?�B ?)�]���>�l?d!u�ɛ�>O��؛Q�S��>�kr��[?��b�?�B�,\m?3˿>-�F?&!!?�s?�I?��>�`?ޭ�>N.n?/4�>��u?D�V>�Qz?�c!>��|?O~�=�2~?�=��~?Q��=n?��L=�?۰=��?��<�?��<h�?���<��?CrB<b�?��d?�i�O���\�SE�>�p?Xq�>M�w?��=���{��?J�K�_���Y�t�,��DBX?2�>�?i����>�d?F�p��>��:K���>��t��mX?���/�?:��"�n?Fr�>�H?�!?f�?O�G?�4�>K�_?���>v�m?.>��u?��X>1z?�/#>u�|?|4�=�(~??�=��~?��=�j?�6O=�?�j=��?��<v�?�Ү<�?x�<��?��D<H�?��=ގ~��oD�4)$?Z�I?��? ?Z�G?S����]`����>M�j����G�c��־��h?�`�>�r�L�?v[?pLk�ֲ�>�$��{D�U��>�"w� U?���F�?�;B�;�o?��>�J?q?�r!?ΫF?>��>�4_?���>�am?�O�>(yu?WC[>�z?#�$>ȧ|?���=~?c�=��~?٥�=xg?m�Q=6�?�$=��?״�<��?�ð<��?Z��<k�?��F<-�?�G��^ �g����~?ղ~?�>�=��c?՟�>��:��.�	�1>�|��`�ztK��P���t?A=d>Z�y���?;�P?*Be�V��>�=,��c=��k>�y�ݳQ?���t?6z��jq?d��>��K??.�"?ptE?�9�>\^?���>��l?ݒ>>u?g�]>��y?%�&>�|?���=j~?{&�=��~?.�=d?N�S=P�?o�=��?�K�<D�?-��<g�?<�<;�? I<�?��r���>z�?��O?9e?����?qU=nh��3ؾ-������<���,���'���|?���={~�#?�ME?Y~^�q=�>�4���5�<L>��z�t)N?b��_?�˩��"r?6�>�6M?�?i$?;:D?u��>1�]?��>p�l?�i�>Du?&`>��y?�(>с|?VV�=�~?�0�=��~?L��=�`?*V=f�?G� =��?���<��?_��<�?y�<
�?`/K<��?V#{�}.x?{?3G>�&?�Z�Z�n?E��*~�����0���t�]X����� ���?���<����p1?E�8?uW���
?��;�5.�I,>�Y|�^�J?��n�~?�ν�8s?��>!�N?Y�?��%?3�B?|?9]?C��>E&l?q��>��t?�_b>��y?�_*>�n|? >��}?�:�=��~?~>�=@]?jX=v�?R"=��?�y�<�?���<��?��<��?�^M<��?=�.?��:?��Y?v��Q{�G����3?�6��{�c�G>����[�@m�V�����=Ӫ~?�虽�F�U�>?Q�*?��N�p�?��B�%&��H>�}�!�F?�^!��3~?�B��Ct?�<�> <P?/�?�U'?\�A?2Y?xT\?���>�k?���>݈t?��d>�y?Z+,>
[|?�`>��}?zD�=~�~?�Ƒ=�Y?նZ=��?�$=k�?h�<n�?���<_�?�b�<��?�O<��?h�{?��8����>��v����)uV�<T�>��o�u_�+�>��2�X7�2�z�>�R�R�n>�x?��2��|�MK?��?2F�
."?��I�J��mI�=��~�H�B?�	&���}?.1��Cu?���>��Q?5�?n�(?�z@?ڕ?�[?/��>�Nk?J�>9Kt?pg>ey?��->WG|?��>��}?`N�=>�~?�N�=@V?�]=��?��%=N�?H��<��?�y�<�?�׋<s�?3�Q<��?�[�>x�l�H���ȳb��h���վ]���nz���,�/�<?��X��������6�m��>��n?5$���]v�#"V?�K?��<�b-?�P��%��ɗ=�K�b�>?m�*��|?�5��8v?�'�>�+S?x�?�8*?T5??r�?��Z?ƣ�>V�j?���>�t?�xi>�Ay?!�/>q3|?C>�}?9X�=��~?�֔=�R?nP_=��?�'=.�?&>�<,�?k�<��?�L�<@�?y�S<��?(���Q�j�q�:�����}�Y>���(ib� dӾv)i?��r��C���/}��a>6m�>�e`?'���k0n��
`?���>6�2��b7?�*V�Q>�F.=����:?�/��9|?x-/�_"w?���>z�T?�?��+?-�=?�?�Z?o��>�rj?�$�>�s?��k>>y?N�1>V|?�p>*�}?b�=��~?_�=O?3�a=��?c9)=�?��<��?L\�<N�?���<�?�V<g�?��8#=u�j���>y�D��#?�I����$�߽_x~?x�,����r�G�>j�?N?%B��c�0�h?�s�>P(��"A?��[��k33<����6?�w3�Vh{?A�� x?j�}>�V?�v?�-?J�<?dE?�WY?)��>\j?��>��s?�2n>E�x?WX3>|?s�>��}?�k�=�~?&�={K?��c=w�?0�*=��?�5 =��?zM�<��?b6�<��?KX<J�?.����\?��˾��j?Wf���ps?��x�f?u��NR>�z?r}���>*`��F�>|�1?��7?�D�d�V��p?9��>l��FJ?m8a�>h�p�����8@2?�7�k�z?
�R���x?1�p>�jW?@Q
?�z.?�T;?�}?�X?��>ƒi?>9�>jNs?'�p>��x?:#5>��{?�%>(�}?vu�=��~?7o�=�G?�6f=h�?��,=��?\�=<�?�>�<��?B��<��?IzZ<,�?�o�>nZd?�E�>{@q?*{>.x?��{��+7>���>��]?z�l�A&�>+�F�kW!?q�H?�?� �Q�G��v?̈́�>�K���R?�&f��3ྭ'V�]���-?��;�8�y?�d���y?gc>��X?(?+�/?c:?��	?��W?Ĉ�> !i?� >�s?9�r>@�x?��6>��{?d�	>{�}?�=�~?C��=D?h�h=S�?�f.=��?��=��?�/�<4�?! �<n�?��\<�?��~?*�=�c?NX�>�q9?�{0?S���?��>?� +?WrO��?�'���A?D2\?�?�*3��6��z?}�P>8�4�Z?�j���̾$���N��V)?��?��yx?Ppv��Wz?zV>�#Z?P�?E1?i�8?�
?�W?��>j�h?JL�>F�r?�Fu>4�x?��8>��{?��
>��}?���=a�~?H�=b@?�j=9�?� 0=b�?3=��?� �<��? ��<8�?��^<��?/|?I@H�;�v?������z?�I>@F���Z?>j?s��>�f&���B?�#�t\?'�k?�F�>�D�3$�e�}?W�>�q񾋿a?��n�
���~ ��J~�4�$?��C�NWw?_	���{?3�H>�w[?+�?I�2?�[7? ?�>V?�u�>�:h?1գ>E�r?O�w>�fx? �:>��{?5>ǖ}?;��=��~?H�=�<?�m=�?N�1=1�?�c==�?(�<t�?�	�<�?a<��?�����er���?�"Z�O9o?�K���� ���}?�~?!~�=��Q0d?�.��X�o?�v?ه>o�S������?P�a=��׾--h?�tr�+U��4*��;}�� ?��G�� v?�ό���{?�I;>��\?��?�4?�6?�S? tU?nj�>��g?�]�>�Gr?R�y>
Ax?KM<>l�{?U�>��}?���=�~?B��=�8?qio=�?�3=��?�=��?R�<�?�~�<��?[7c<��? ux���v�w�J���z���?��L��D�>
�t?Q�y?&�\�S�l�Iy?�4���{?�}?�
>�3a��y��?n�� ?����m?3�u�����6�:�{��C?��K�N�t?����H|?��->s^?���>a5?��4?��?ϧT?Z^�>�Og?��>fr?�W|>�x?o>>�{?��>�~}?$��=�~?6�=�4?�q=ʍ?�M5=Ŀ?n�=��?{��<��?��<��?�fe<��?&:���/?�P� �:�=]#��S(?��@?Go\?�+��Yz;��?��W9  �?��?$�:;l�Kž"�~?�½H5���r?�x���u���U�xZz��d?s*O�xs?:��A�|?�_ >�R_?qM�>��6?K3?2�?��S?FQ�> �f?^m�>��q?C�~>r�w?k�?>'w{?�C>\r}?���=*�~?%��=1?�t=��?�7=��?�E	=/�?���<L�?zh�<\�?�g<t�?m7=>q�{?K�}�~�>���0
c��h?�*�>�)?�D@�\t>��x?TX5> �{?�}?�G��t��#���P|?� -�I�����v?��z���K��pu���x�|p?t�R�r?Aܦ�_Z}?��>6�`?���>8?�1?��?
S?0C�>af?���>|q?��>��w??�A>6a{?��>�e}?շ�=2�~?'�=%-?MOv=f�?L�8=L�?=�
=}�?���<��?Wݛ<#�?&�i<T�?�Cm?�B�>2�#���D?�]�p���?��!<?��>YLk����>�Kc?@a�>��o?�w?����{�k�F��\x?Ax��\U��az?��|��/!�`��)yv�3g? V�s�p?�p����}?�X>��a?�Q�>�e9?d�0?�?�8R?4�>��e?U{�>�6q?޲�>l�w?�tC>K{?��>�Y}?��=*�~?ﮥ=0)?�x=,�?{:=�?��=��?���<��?4R�<��?i�k<4�?Q?j���i=X�?�����=��j?��̾�g�=g�~��'?�CA?
;?Mf\?�k?w�ƾ��~�4pý�s?��������|?YH~����H䙾�)t��I?�TY�e�n?u����=~?*��=��b?���>G�:?6#/?�E?deQ?�#�>�me?��>:�p?u߂>�~w?p>E>�4{?�Q>�L}?L��={~?�6�=1%?q�z=�?�4<=Ⱥ?(=�?��<�?Ǟ<��?�#n<�?�75�Կ��8?X1?��S�G�?,?��=���f��fy�.�P?�j?�)'?�A?�\?M��\��r�;+Ml?��ľ�8ǽ0�~?�M�gۖ�!A����q��?�z\�;m?o��m�~?ns�=*&d?�=�>&<?��-?�r?��P?��>��d?���>�p?��>�Vw?�G>,{?u�>0@}?r��=�s~?���=*!?�4}=��?s�==��?ks=[�?=��<��?�;�<v�?�Rp<��?>S]��� ���?��d<�;��j?H�>�[s��q��[���m?3��>+�F?xB!?�vI?��� �~��y�=rBd?~�羌�(�e�?_��@=��r����n���>f�_�h{k?�ȾI�~?E�=�Le?���>PR=?OQ,?X�?��O?� �>�vd?��>�cp?8�>�.w?��H>k{??>[3}?���=�l~?qF�=?��=_�?'�?=8�?ξ=��?b��<L�?ʰ�<<�?0�r<��?��c��t�>�=?��+��g>l}?V�ؽW�~��B��'�DX}?�>7`?��>}�2?�U7�d�z���O>G�Z?����]v<��?O����-<�tǾ��k����>fb���i?�.Ѿ�<?1�=�lf?��>��>?��*?��?��N?W��>f�c?���>_p?d�>w?�J>v�z?�^>i&}?���=ce~?;Ϋ=�? �=~?�aA=�?0
=��?���<��?�%�<�?r�t<��?Oǽ��~?�ǭ=��pe'?ůA?� �-)]�$Tl���ľ��~?�(����r?*ߣ>7�?�vM��:t�9x�>aP?F��Aב=�Y?����X=4D־:�h��0�>"+e�,�g?�uپ-z?)Ђ=��g?(s�>q�??|u)?��?�N?��>'{c?��>0�o?鏇>!�v?�bL>N�z?��>Y}?���=^~?�U�=�?=�=�{?�C=��?�U=*�?�}�<y�?���<��?��v<��?z�H?�?g���uI���t?p8�>`)P�7��6�L��:-r?.����3}?E�>��>s�_�Yk��w�>�D?��#�c6>��}?��~��*�=���R e�ZB�>7�g���e?��.�?YO=4�h?���>_&A?�(?�?F,M?���>��b?���>d�o?���>ͳv?�+N>��z?0>,}?u��=�V~?�ݮ=�?x3�=ay?3�D=I�?�=k�?�n�<�?]�<��?�y<m�?r?�Ц���|�s���v?�ㆾ �z�.K���x��Kq>��W?�	���?�����R�>\rn��`��s�>	�7?�,2��;>ٰ{?ۘ}���>l:��Da�z4�>�Qj��c?��龌�?�=�i?D%�>�gB?�&?�@?OL?-��>�{b?0�>�Ao?��>�v?�O>`�z?�k>��|?P �=O~?qe�=u?�Y�=w?ގF=��?P�=��?�_�<��?7��<L�?7?{<K�?]Wr>D�x��(T�mC?��,?Z�<��y�ϒa>�Y��?2�1?�l8��z?�%S�ۆr>_�x��R�n{?��)?�q?��as>�x?}�{���6>�� ��O]���>�l���a?���D�?3��<��j?;v�>�C?�%?8f?(pK?���>6�a?U��>��n?6�>`v?}�Q>��z?"�>y�|?	�=�G~?!��=5?��=�t?�HH=��?�7=��?Q�<5�?��<�?wn}<)�?�0�o^9��mf�'oy?S�6>��{���L���?�%�#�C?�@?`�\��5m?����2�=ϑ~�[C���%?x"?֣K�Ys�>��t?w�y��`>ԛ��!Y�J��>��n��r_?i���V�?0G-<P�k?���>i�D?��#?t�?��J?�|�>�wa?$�>S�n??=�>�5v?��S>�zz?>��|?��=�?~?�t�=�?��=4r?,J=@�?�=&�?+B�<��?�m�<��?��<�?8a{�%�A>5��>��]?�A���wm�t���`?f쿾vUm?	s�>�'u��pX?X��P����܊1�Cn8?.q?��V�ἰ>�Cp?�'w��k�>�g�[�T�5_�>Tq�'1]?S� ���?��4���l?��>F?�%"?m�?r�I?<c�>o�`?5��>bn?h�>�
v?�LU>vbz?�w >P�|?��=D8~?l��=��~?Ḟ=�o?ϻK=�?g�=a�?J3�<X�?��<��?|�<��?�(��L�m?�t?_Q�>T�O������!?#,���h?�a=��k�<?��,�$��|�<>��;I?��>��`�`w�>��j?�t��#�>��| P�O�>$s���Z?����?{փ���m?4J�>�OG? � ?�?��H?`H�>p`?�'�>:n?���>��u?�W>Jz?�!>��|? #�=�0~?��=;�~?s�=Qm?puM=��?�=��?h$�<��?�W�<T�?��<��?�?*nP?Mf?��߾�|�d����ө>ԁq?E�{>g'x?~9���{�K?؄K�K���l�t��\	��X?�>i�3��>�d?>�p�&��>&��UOK�@R�>��t�*xX?����? ��n?���>�H?Y(?��?5�G?e,�>��_?,��>��m?!��>f�u??�X>�1z?'*#>��|?�+�=�(~?��=��~?��=�j?/O=�?e=��?��<x�?x̮<�?��<��?[�?~SG�멸>��n���`��
�>dS0?"�9?q�?SJX?�pо6�i���>��c�~WԾ �h�18�(�d?��>�bp�=��>^?b�l�߸�>��!�$JF����>��v�JV?�}��?F/���o?���>	�I?G�?�!?(�F?H�>d_?�)�>�|m?Y�>��u?��Z>�z?9�$>��|?)4�=� ~?,��=f�~?�>�=Yh?��P=��?v�=�?��<�?QA�<��?[-�<x�?UW�>s�]��W���m�X���z_?"�l?�S�>XkE?4�"?�;�<�J��j�>:�t�:3���X��i���o?���>rNv�}�?^�V?�rh����>(�0A���{>�"x�yS?OF��?�e��hp?V�>9�J?�!?s,"?F?��>��^?2��>/m?[�>n\u?k\>��y?9�%>��|?�<�=�~?��=��~?�d�=�e?D�R=J�?��=<�?���<��?)��<��?�D�<T�?xx��Qc��g�5ھ��X=+�?��?���IPn?�>πG�sk �ݼ�=�5~���#�l�D�QƆ���v?5�L>��z�D�?ON?S�c�j��>P .�Ш;��Cd>��y���P? �b?����Fq?5!�>~
L?Z�?�H#?;*E?���>T^?�)�>��l?';�>�/u?92^>��y?$5'>f�|?�D�=�~?4��=k�~?	��=Kc?�[T=ݧ?%G=n�?���< �?+�<S�?�\�</�?X�~�s��)�s��#�>��?@Q?�f?Õ��?�l=�g�' ھT�s����T�<��3-�$�)�w|?)� >��}�`�"?�vE?>�^�d��>��3�g6�ˇL>l�z��5N?����?�Q���r?�K�>�1M?�?d$?_>D?��>��]??��>ґl?�d�>u?1�_>)�y?��(>�|?=M�=�~?�)�=��~?'��=�`?qV=l�?{� =��?���<��?ٟ�<�?9t�<
�?Դ���I?e��L_?�wl?�'�>��#?��D�|}w?�邾־z��gN���p���x�&�Q�����Ӈ��o?G7Q=t����-?��;?�Y� �?��9�dG0�~�4>��{��zK?�X���~?j�Ľ��r?�q�>4VN?��?�}%?�PC?�� ?@]?(�>RBl?��>��t?��a>��y?��)>�s|?wU�=� ~?!��=K�~?B׏=(^?�W=��?��!=��?	��<6�?��<��?؋�<��?���>�q?�Mr>ٺx?pX|?Dh,��3�>bv���V?:-������=��ξ�@j��~c�-��R�	=��?C�üM��>8?e�1?�$S���?�?�AR*�.�>��|�9�H?����w~?��߽1�s?	��>�wO?S�?y�&?�aB?=�?��\?K��>7�k?E��>C�t?��c>Ǚy?r?+>e|?Ѯ >w�}?�8�=��~?[��=�[?��Y=��?$)#=��?!��<��?���<��?w��<��?I�x?��m>�U?|�?��>?�+��b��/}�G� ?%G���v�77�>���JT��q��5���m>��}?`,ʽ�~���A?#N'?X�L���?�hD��1$�O�>q�}���E?�{"��~?U���}�t? ��>�P?�j?��'?IqA?4�?(\?$�>��k?6��>Vzt?Me>�y?�,>fV|?ݲ>2�}?��=�~?p#�=�X? B[=
�?wt$=(�?8��<H�?^��<J�?��<��?�8?�a1��f|?+�	��>�>v��)
��W���>�Do���_�ZA�>�\2�5�7��dz��%U��m>�y?$%1��#|���J?y&?�2F�j"?��I�����(�=��~���B?��%�ޡ}?��
��@u?V̒>s�Q?z�?m�(?@?��?~�[?N��>1Pk?��>Lt?=g>�ey?��->�G|?�>��}?OG�=T�~?�I�=MV?��\=��?ɿ%=R�?N��<��?4s�<�?�ҋ<t�?�F��){�֊?)TK�,&���u�EV�����A=���y<��-?�P��0�)A��-�����>Y�q?15|�!x�cQS?n�?	1?��=*?�dN��s�vϨ=� ��??j)��%}?�v�I�u?��>��R?�E?��)?c�??X~?�[?
�>G�j?o1�>ot?I�h>/Ky?I/>�8|?ݺ>w�}?���=��~?�o�=�S?3�^=�?'=z�?c��<W�?
�<��?S�<N�?ln�����ƽ��~��?��c)���|�$p ������v�k���T?�$g��ܾ��cli=" �>oNh?+���T�r�[?pe?@�7�.&2?LS�����p=�����<?��,���|? �%���v?���>6�S?+�?��*?�>?�j?n|Z?@��>ëj?�Y�>u�s?%�j>�0y?l�0>�)|?о> �}?�U�=��~?���=�P?�n`=��?iV(=��?w��<��?�\�<}�?��<'�?=�O���?��?���)�u�|��#�w�VɅ>2d�YiU�����ep?��v��Ԇ�`{���A>�7?Oh\?N�ƾP�k�Q3b?���>�+0���9?��W��
�;�=���D�9?�!0�A
|?�i3��Ww?��>��T?g?��+?I�=?V?��Y?��>�Xj?ā�> �s?�dl>�y?��1>�|?��>y�}?;��=�~?���=AN?;(b=�?��)=��?�q�<a�?�Ѿ<8�?��< �?-nY=��?����<	�k�C&�>F��,"?~�H�������%X~?��~��T���r��ݢ>!�?iNN?V����c���h?E��> /(�� A?��[�28�yo:<�����6?Jh3�gk{?$�@���w?�!~>� V?�~?�-?�<?A?cZY?��>�j?���>r�s?J*n>��x?�Q3>P|?��>��}?{d�=2�~?��=�K?��c=�?�*=��?N1 =��?�F�<��?-1�<��?�t^?�_�>`�6�9D3?���JKR?��0e?S2p������=~?��~�|a�=��e�p��>�h+?�$>?����gZ��9n?�t�>�����G?��_�rh���J����e3?U�6��z?�;N�.�x?3t>�W?��
?�.?�;?[+?��X?��>��i?3ў>j_s?��o>��x?�4>��{?t�>9�}?���=R�~?��=�H?9�e=��?Q8,=�?�)=h�?]��<��?�H�<��?��b?�z����8�=�?�'6�*�?�C)��?2���o�M��>ҋo?��v���>�T���?F�=?�,?^���O��s?�a�>�S�|N?��c�� � ��l��H0?��9�dz?+�[�H6y?->j>X?�D	?9)/?��:?	?c4X?ԅ�>�[i?���>/s?��q>)�x?6>y�{?D�>�}?�r�=h�~?�-�=F?�Tg=f�?��-=,�?_"=��?00�<e�?h`�<��?���=��~�<�%?sC?�r�>o^?!�>5�m?Wv���>~?+�S?^g��P�>��?�[�)?��M?�L?��$���C�*=w?�̄>}�:�T?�@g�r�۾��t���k�,?��<�LJy?}�h��y?JC`>�Y?�?F50?��9?)�	?�W?c��>/i?��>M�r?�ys>��x?Z7>��{?�	>��}?��=u�~?�S�=>C?,i=Օ?��.=J�?�=l�?��<�?x�<a�?�YJ����pF~?�V�=�a?;;�>u8?��1?�S�L�?޺=?)�+?�O�4L?j�'�!�A?�[?�?��2�7��z?]�Q>Ue��Z?)�j���̾pª����g)?��?��}x?6/v�VUz?�BV>�Z?X?�?1?O�8?��
?s
W?gx�>�h?�F�>8�r?B>u>��x?��8>-�{?��
>ۢ}?1��=y�~?�y�=o@?��j=A�?/0=g�?n=��?��<��?���<9�?�Hq���>�IN?B��lW?�̒��p?
$�>C��XaJ?��`?��>�D2���7?j\�2V?��g?���>�@�1)�!}?��>�!����_?L�m��񽾆۽߇~��%?�B��w?]���A�z?�<L>�[?�_?I2?e�7?s�?tV?���>^Yh?Pm�>ɛr?�w>�px?�	:>[�{?}�>�}?K�=t�~?���=�=?�l=��?ve1=��?�=k�?���<��?@��<�?��i�Ay?�>>��{��<N?��wI?����� ��~q?|Gw?��>����]T?�Lݾ�f?
�q?�`�>�AL��R���~?���=��}�d?��p��Ю����M�}�y"?��E��v?7M���Z{?51B>\?�?�P3?��6?��?��U?�h�>h?���>jr?�x>�Tx?za;>l�{?)�>��}?^��=e�~?�Ş=�:?�:n=�?��2=��?{=��?{�<D�?ݾ�<��?O22?�7?���4�X�};�>�Dn��a?���0ڼ��? �?.��<�EξNj?�򝾘�s?|�x?��p>e>W��
��?�N=ޅѾB�i?FBs�c������2�|���?Q�H���u?�ގ���{?� 8>m]?�?#W4?�5?1�?5DU?&��>-�g?���>�7r?(�z>8x?�<>_�{?��>�}?h�=L�~?|�=�7?��o=s�?�3=��?�=g�?Mx�<��?y֗<��?��z?��J�&�w�����WY?��}{��|?�^K��4�>&Wu?�=z?��W��@p���x?��7�-�{?r�}?�>�a�H$��l�?����k�����m?��u����5���{��U?�|K�X�t?j��oF|?�.>�
^?x��>�[5?í4?�?٪T?�V�>�Qg?�ߦ>fr?O|>}x?�>>5�{?d�>�~}?k��=+�~?h�=5?]�q=Ӎ?FG5=ɿ?��=��?��<��?�<��?��>[�n�"�a�н�>Ď.�B;��j>m2y�w�?�pR?Ǎf?�޾��q���?@���?��?d3=܈i��Ѿ�G?�����l���q?<�w��q��}M���z�?�?�7N���s?X��|?b�#>��^? |�>X_6?�3?\g?�T?3��>��f?��>��q?�~>��w?h?>�|{?��>�u}?f$�=��~?Q7�=2?�fs=0�?��6=ݾ?�=^�?�a�<f�?��<j�?�y�FO�X���bAr?|�w������	B��\{���K?I�?I�E?SQ"����=�1~?oӰ=D?�~?򘀽*�p�((��3�}?���甾-�t?V�y��ka��7e��y�` ?��P�
�r?�k��H}?��>f�_?)"�><a7?��2?�K?:uS?�B�>�f?%+�>f�q?:�>��w?y�@>�l{?z�>`l}?Y��=ˌ~?6]�=+/?) u=��?��7=�?��	=��?���<�?N�<@�?���Ňk=W�>�i??t��[�>%�x|Q��q?�!�>FJ?�GL�E��>a�t?�D_>D�y?�|?T&��v�����a�{?T�>�����w?�`{���A�H�|�3x��C?�zS�I�q?pᨾ~w}?�>��`?���>�a8?��1?�/?��R?���>�Df?cP�>�kq?�̀>p�w?�B>\{?��>c}?D2�=��~?��=8,?��v=�?)9=�?�
=S�?�K�<��?�4�<�?/g���_?�k?�w�>��%�wC?��[�"��M�?�{�<��>G�j����>3�c?A�>�3p?Y5w?���){��H�ox?�w�<8V��Uz?Z�|�6�!�?#����v��z?#V���p?�O��7�}?ˍ>H�a?�c�>�`9?Ѝ0?4?�;R?�,�>��e?bu�>8q?I��>�w?�mC>hK{?i�>�Y}?'��=F�~?���=?)?�x=5�?Kt:=�?��=��?_��<��?�L�<��?K|�>�Db?)�p?m�����&m}?�N~��!�=�t?�E����/>;2|��e?bpK?Ja�>Lb?HUo?����~��t����t?]J����+��^|?z�}�S���ɕ���t��?�yX��Uo?ǵ��p"~?(��=[�b?��>�]:?<�/?��?��Q?}��>e�e?"��>�q?���>g�w?�D>�:{?��>BP}?@�=�|~?�Φ=B&?FLz=��?��;=�?�=C�?.5�<7�?"d�<��?�?��=�k�>�d����>ٴi?t���>'�P?���r���w�.�<?��,?�?�_P?	e?���C��e�@�.�o?�����}?��~�o6ý [��r�r� �?D�Z�9n?���(n~?ir�=*�c?��>�Y;?;u.?��?u�P?��>^2e?���>9�p?
q�>�kw?F>�){?3�>�F}?���=�w~?���=?#?�|=ԃ?�
==*�?��=��?���<��?�{�<��?O�?�
K�qی�v�< U?[?�?�Qf*?�?a�M� ��kpt���X?Ԙ?�/?[�:?݂X?������LI�<��j?-;;OU���?z�?���լ�;�p�i� ?�2]���l?i¾]�~?��=�kd?�+�>DT<?�f-?�?a^P?���>��d?��>P�p?BR�>�Mw?�rG>�{?��>1=}?�M�=8r~?~�=6 ?��}= �?V>=4�?�=0�?��<��?X��<i�?	:���p��H[���`�?7l�</"Ѿ��i?�>��r��[�̺[��Bm?�I�>`F?�!?��I?�����~�9I�=>ed?<E��K,���?���9��6��T�n����>�t_���k?��Ⱦ�~?��=�Ge?��>"M=? W,?��?Z�O?���>�xd?��>ep?^3�>X/w?��H>�{?��>�3}?a��=�l~?O@�=)?Ix=h�?<�?==�?��=��?���<N�?�<=�?��y�Ye��z�+(S>I\?����r:��?L�;���M3�¸6���z?סR>� Z?% ?�9?��0�C�{��(5>�]?J ��.�8  �?������|þ
�l���>�a��&j?��ξ5*?yJ�=� f?K�>wD>?�E+?�y?bO?~j�>�d?�*�>s/p?_�>�w?� J>��z?>�)}?[�=Ug~?f�=?͘�=�~?u�@=D�?�=�?f�<��?�¢<�?$7�3?]S��[Q?L��>7d����>�yi?�R����s�I5Y��|���?
_�< j?L��>Dy&?�zB�\�w�!�>��U?����-={�?u���"�<�ξ�8j����>p�c��h?�2վ�[?�ސ=��f?���>A:??03*?�X?wxN?���>h�c? N�>��o?D��>O�v?9wK>G�z?O> }?���=�a~?勬=�?tu�=�|?�7B=I�?��=��?3}�<��?)ڣ<��?a O>��z?�>��}?g+����~�f]??�*?���aO�G�r�V���.}?�|���u?���>�9?� R��]r��ۤ>μM?�W���=�?m�O9�=��پ��g���>S�e��Ng?c۾�?N�x=��g?�]�>.@?5)?_7?��M?�K�>u]c?]q�>5�o?և>}�v?��L>��z?~	>F}?th�=M\~?���=�?R�=/{?�C=M�?�=��? ��<`�?��<��?�n?�Է>�`F?��!?����YK��3t?���>z%O��k��U����}r?���}?��>@	�>:�_���k�ε�>��D?�#�@K>�}?��~���=���6e��o�>��g��e?M��x�?��O=Ηh?��>0!A?�	(?:?�/M?»�>��b?W��>��o?���>x�v??$N>Q�z?�>b}?��=�V~?n׮=�?�.�=ky?�D=O�?��=n�?�f�<�?^	�<��?EpN?d��r?�k��}�o�>���@~?���H�s����f�|���>�&`?�R����?y$�<�!�>��j�STc�;o�>W;?<x.�� ,>�\|?R�}��� >_m��Hb��(�> �i��Ld?G��x�?/'=mci?�c�>OB?(�&?c�?�L?�*�>Нb?��>�Uo?J��>@�v?�zO>��z?�>n}?�u�=Q~?-��=�?_�=�w?MF=O�?�=��?���<��?� �<\�?.�}�>���y/? f:��z�9R>��[?_P�^��؏;�l���>�F?�\!�H~?y��T2�>��s�	�Y��j?�<1?&�8��gV>ZSz?��|�� >L���a_����>�|k�S�b?������?_>�<�+j?���>�C?�%?��?o�K?���>=b?�ٶ>Ao?�w�>�uv?��P>�z?�>i�|?;��=zK~?�"�=h
?��=�u?�dG=N�?��=N�?bP�<m�?�8�<.�?`�_�6m��N��;����7��2?��?#�Q�Y�r��[�>�(O��f?h'?"�A�x?ۓ|�6lS>�{z�?0O��\?[�&?�dB��6�>��w?<o{�.�@>�N��Z\��h�>E<m�k!a?R����?�Y�<��j?`]�>��C?��$?��?�;K?��>��a?���>��n?X�>7Vv?'R>�z?�>S�|?�=�E~?�H�=5?�ą=t?��H=J�?�=��?-��<�?+P�< �?��a�i|�>�z-��A<�-�r���x?-@>�s{�Z�M��;?�&���B? ?rw\��}m?l#����=m�~�TWC�gv%?�b?�rK����>��t?x�y�;`>�~��3Y�*�>��n�D|_?ո��.�?2�0<�k?���>:�D?��#?��?W�J?�t�>�ya?��>��n?P8�>f6v?)}S>{z?�>-�|??	�=@~?Sn�=�?<��=>r?��I=F�?�}=)�?�9�<��?�g�<��?YꢽQ0?)A��-��)��>�r?>Xl��y�.E��P?�6��hd?"�>�p�S�^?���x<���Ue6�ޡ3?̴?�S����>�q?��w���>�����U��j�>��p���]?������?��P:5pl?�K�>�E?�"?�_?��I?���>�a?J?�>3vn?m�>bv?&�T>�hz?� >��|?���=R:~?��=� ?�}�=lp?FK=?�?v=��?���<v�?^�<��?!�K?�?OH���?2-F?C"?*��K��	���st?�j�-y?��4>�{�p�K?A���9����~��l(���@?U�?
�[����>6�m?��u�Jw�>���߈R��զ>"r��\?���9�?u���*m?N��>7�F?�m!?�9?�?I?�M�>��`?�`�>=n?m��>*�u?)V>�Vz?�!>��|? �=�4~?���=}�~?rZ�=�n?>�L=7�?�n=�?�#�<"�?���<t�?]�p?z[��U��9}?�~?W��=@Ua�q��]q<��?û;��?ޡ������5?�4�opC�JK{���m�L?�
�>F�b���>K�i?�Zs��>x���O��3�>ys�PZ?����?�N��8�m?U.�>͗G?�N ?|?I�H?W��>�P`?΁�>sn?P؎>��u?�~W>_Dz?!">V�|?���=�.~?X߶=5�~?7�=�l?j�M=-�?g=l�?S��<��?���<E�?�`>��y�\?��R?��g?d�پhR�?��� `�>jr?3Bv>�|x?�r5���{���?�K�h��,)u�g�	�6�W?60�>�h���>�d?.�p�0>�>Iu��dK����>J�t���X?B���?�3��n?���>�}H?�.?��?�G?6$�>��_?���>�m?��>#�u?��X>�1z?P$#>��|?�"�=�(~?��=��~?��=�j?�'O="�?�_=��?�<z�?)Ʈ<�?��3��66���y?B�]>�	?�W���p�8�>�Z?z;L?�n�>�c?�m����o�V�>�]�ݞþ��l�Y�}�a?>P�n�7�>��_?3�m��`�>�< �Y�G�iɌ>�!v�u�V?Ay���?�� ��Fo?C�>bI?�?� ?;G?r��>�_?<þ>T�m?���>S�u?"*Z>\z?'$>t�|?.��=�"~?�*�=��~?8��=i?�rP=�?�W=>�?��<$�?�ݯ<��?�{z�pS>��\?�����;r�� �7��Q2?�6R?�?t@(?��@?�@��b\����>	�l�K�񾡡a���ϾG�i?b��>xjs��o?DyZ?W�j��R�>�$�Q�C���>,Xw�r�T?�R���?�tI���o?Fn�>�DJ?�?И!?�F?��>�"_?��>AWm?Ew�>Psu?�[>�z?�)%>�|?v/�= ~?;P�=>�~?�̋="g?�Q=�?tP=��?���<��?Z��<��?ɶ���Uo?��>�[u������Y��3��)�m?�9u?��>��P?�?/'���A���>��w����'nT�=��nq?���>�|w�$�?x�T?dbg�r�>��)��?�8cv>�zx���R?&�.�?K[r��p?�Ӯ>�%K?:�?�n"?�E?�`�>�^?��>�m?�V�>Ru?�\>��y?�,&>P�|?���=~?�u�=��~?^��=>e?	S=��?�H=�?qk�<y�?��<��?�M?;�M?5��Te��-f�Q��0=��?f�??dͼ
�m?���>j�F�;=!���=�~��Z#�OE�������v?Z�M>y�z��]?�tN?7�c���>�.�C�;�ɬd>��y�t�P?���"c?����%Cq?�6�>XL?&�?D#?O.E?N��>~V^?Q#�>�l?�5�>�0u?T*^>��y?(/'>��|?�;�=~?j��=�~?=Vc?2TT=�?eA=r�?7��<"�?�$�<T�?�o?�ۇ��o�����x~�y�=*��>��d?�;q?�_��!j}?H*>M:`������C�Q���76�K�3�+�D��={?>]E}�e�?P�G?��_����>m2�g�7���R>�z���N?t���2?"
����q?��> �L?�{?�$?�}D?�0�>{�]?�B�>��l?+�>u?�_>��y?�1(>�|?��=�
~?���=�~?~b�=la?V�U=Ϧ?�9 =��?�T�<��?!<�<#�?�q�>`���l��n�>:dH�O?�`F?�!?�J?>u�$�~?�½��r�cң��E�YM}�BG�W� ��\�J7~?F�=G�~�F8(?��@?��[�.�?��6�K3��	A>�h{�l�L?jw�n�~?jr��߄r?%��>@�M?>T?C�$?�C?�K ?�]?�a�>�kl?;��>H�t?��`>��y?S4)>{|?9H�=�~?��=��~??�=_?y�V=��?T2!=;�?���<s�?�S�<��?P{�F3a��־h�h?~0��v�q?�:w?�ބ>�?��S��r?�䦾�4}�����Ռ��v��NV�F���0�	�?�	=����40?a�9?÷W���	?��:��.�. />{:|���J?d/�Ƚ~?�ʽ� s?�P�>��N?o+?B�%?�C?)� ?�]?��>�/l?,ӕ>G�t?�)b>��y?�6*>Ap|?S��=��}?�=9�~?��=�]?�5X=��?�*"=��?�>�<�?Pk�<��?�F������V�>�s?�e>݃y?}�|?�O"���>�u�'�W?��	����hm�<7;Ój��7c��뾴q=��?�ø�T����7?w2?h@S�A�??��m*�\(>��|��H?B���y~?r4߽��s?6��>~rO?g?�&?'fB?�?�\?���>��k?���>�t?�~c><�y?R9+>Te|?2� >��}?�1�=��~?!��=�[?��Y=��?@##= �?K��<��?炷<��?��?jL?F^`?���>�x5?��4?�V?7{�
�����11?��8�?~z�<@S>m��D�Z��m�DR��8e�=N�~?'2���4�9??z4*?��N��4?�C���%��#>/�}�'�F?�!��.~?'��@Mt?V�>�IP?(�?�b'?�A?�d?�M\?ֽ�>/�k?���>��t?K�d>Ćy?�;,>WZ|?5m>k�}?W�=E�~?�ԑ=�Y?��Z=o�?�$=a�?(�<h�?~��<\�?
|�>m p?�2x?��z���y?s`>\�	?~�W��Z���Up��� ?y8]�e3m����>� ��CG�%v�6⌾�+9>��{?m�	�~�}�z:F?�!?��I�O�?��F�@.!�(�=D4~�/mD?-,$���}?���[�t?BV�>Q?��?�3(?��@?�?��[?���>czk?Co�>dt?�'f>.sy?#>->IO|?30>0�}?�|�=��~?0��=�W?�\=S�?*%=��?Ҝ�<�?��<)�?�z?�D\>�
?�W�#1q?���a�>�A}������H�9��>uKu�\mX��?:�9�� 0���{��6�$�>��w?6�B� U{���L?�}?��D���#?��J�]k����=ĳ~�G8B?��&��}?���ku?��>��Q?|?�)?�F@?��?�y[?���>@=k?�M�>HAt?�|g>z_y?{@.>*D|?-�>��}?��=<�~?���=�U?b]=5�?�&= �?��<��?�ɺ<��?�j5?��4���3��|�]M?0I�V���^v��0U�����LY=�����<���,?ٌO�����4�	"��Pɦ>L	r?t�z�3x��+S?ķ?vR?��*?�NN����갩=����??2Z)��'}?�7���u?���>��R?;M?��)?֏??
z?�[?�>��j?
,�>It?�h>�Ky?�B/>�8|?"�>��}?���=��~?8j�=�S?*�^=�?'=~�?W��<Y�?A�<��?��W�5?z���L����$D�=��~�N$��PD���v�!̈�hj;��{��E���K?�a����8����<~��>�k?� ��QHt�GY?կ?9�9��0?��Q����J_�=�t�	�=?��+�9�|?6V"�}|v?UH�>�S?9?A�*?�>?5+?	�Z?J4�>��j?>
�>�s?d%j>�7y?E0>�-|?y>G�}?���=�~?�F�=�Q?C�_=��?��'=��?��<��?���<��?��o������~�m��=Od�=�e��Cf���߾f���];=QUѾ$�i��龭�c?��o�W����~�G��=+>�>��b?�X��՗o�<�^?I��>i04���5?�BU�i���B=o���d;?bi.�X|?ap,�r�v?���>�cT?�?�n+?o>?�?�6Z?,Q�>σj?Q�>��s?�yk>�#y?>G1>k"|?�;>��}?e�=��~?9#�=�O?ZCa=ќ?��(=8�?�o�<��?m�<\�?(M�C6?��'�e<A?0Z�:��q���#���ho�Q�>����J��]��2�t?m�y���d���y�ߴ`>�H?�UY?<�ξp%j�޽c?���>yY.��s;?�X����]z�<I��A9?�0���{?"�6��~w?�߂>�0U?��?�;,?�e=?��?N�Y?�m�>QEj?EƜ>�s?��l>�y?gI2>
|?��>}�}?�7�=��~?���=�M?o�b=��?i�)=��?���<E�?(�<(�?��=�[?�==�?[���
C<��l�Q4�>wXG��� ?(�G��	 �I��6~?�~����y�r�*��>�/?��N?n�辋�c��wh?�l�>�U(���@?(�[�SY�B�A<l��,�6?�X3�wn{?7�@���w?�P~>��U?=�?�-?��<?�<?]Y?��>}j?��>V�s?�!n>G�x?�K3>�|?��>
�}?3]�=I�~?3ܗ=�K?��c=��?��*=��?�, =��?�?�<��?��`?�u�>��4?�35?*�V�G?T�/���9?%���V?V�g��=پt=��?���Zv)=�i�dZ�>,=&?I�B?�']� �l?l��>@'"��F?��^�4���[û����D4?U�5���z?^�J��rx?��v>/�V?�Q?�-?X�;?r�?Y�X?
��>S�i?ʁ�>[ls?�uo>��x?�M4> |?��>��}?���=��~?���=�I?�$e=^�?J�+=G�?� =��?,W�<��?Ǩ`?�x��N�?�=e׾v>h?���q?󯃾8cw?��z�k}L�	�p>+�x?|�h2>� ^���>i[4?߭5?XW��qU�a�p?T�>���K?�a�:��¼���,�1?�'8�kz?T�T���x?bio>�W?�
?��.?D4;?�?�X?���>Ӈi?[_�>-Hs?��p>h�x?�O5>��{?yG>�}?��=��~?&��=vG?�of=5�?��,=��?m�=,�?�n�<��?�֐=�[���A?�'�G�>��}?"ʮ=�?��e=�?T��T�=��>�=j?;�s� B�>+P�� ?"vA?	�'?E��)M�7#t?��>	O��O?��d����7*����y[/?r�:���y?٫^��Xy?\�g>�RX?�?Ig/?Vw:?�J	?*X?��>�Gi?�<�>�#s?Ur>̽x?�Q6>��{?K
	>y�}?H��=D�~?�q�=bE?��g=	�?)�-=��?�[=��?V��<U�?WM��4�>��=��~�	#?�\E?���>;�_?FB�>�un?��v�X(�>x?"GT?�ug����>�@@��
)?zzM?��?Eg$��;D��*w?,T�>Ũ��T?0g���۾��r�Č���,?��<�Ny?��h�F�y?�s`>Y?�?/00?��9?��	?��W?4��>�i?�>;�r?�ps>�x?�S7>.�{?�	>�}?���=��~?N�=KC?�i=ܕ?��.=N�?+=n�?��<�?G�o����>(^�U�L��*s?��>�	M?bH?+�"?|�E?�`_���>�a2?��7?��V�_-?�j.��c;?(WX?,�?7,/�ծ:�!�y?��`>���h�X?Ⱥi�9�о󺝽X=�=R*?�?���x?��r�20z?f�X>u�Y?�s?H�0?��8?�
?�2W?��>O�h?H��>v�r?o�t>?�x?jU8>j�{?�
>?�}?��=Ҭ~?�*�=1A?�Pj=��?�/=��?��=�?~��<��?��W��?z?O�{�x�5�ex?�w���y?-�_>wX?�H	?w�;��.?�P?S+?(sB�R�&?S����K?��a?��>dc9�׊0���{?�l6>k� �[(]?�#l���ž�½C�~���'?�_A��x?.�|���z?�qQ>"�Z?�9?��1?w;8?&V??�V?t-�>w�h?TԢ>�r?�v>Lx?@W9>��{?�R>��}?7=�=�~?��=??ܛk=}�?r�0=��?�=��?��<��?l5?��4?�VW�Sp
?N1?��8���z?��L�*x?S }>4��3DU?�'g?t�>��*�`�>?��ANZ?�\j?I�>�C���%���}?��>���a?kn��x���<潍`~��)%?�C��rw?/;��;�z?��I>
Y[?��?�2?({7?�?-QV?�G�>IEh?>��>V�r?kw>=jx?Y:>��{?b>ߗ}?~b�=J�~?f�=�<?��l=K�?ޱ1=M�?GE=M�?���<}�?oz?FL\�0�|�x?v2M>��z���O?�e�co?���������p?��v?�ǆ>����S?c޾[�f?�kq?BQ�>�L������~?T��='h�h�d?̏p�����1�>�}���"?R�E���v?k,��UX{?OcB>+\?G�?�K3?�6?&�?��U?ya�>�h?��>�jr?A�x>Ux?�Z;>��{?�>"�}?���=~�~?Կ�=�:?�1n=�?J�2=��?��=��?9��<F�?Ux�>!p����>0�`?\���\�o�� ?4f]��{m?n.����=f~?5�~?�=�}�e?�Y����p?Pw?(��>�eT����_�?�UW=��־�`h?��r������9�d1}���?��G�"v?*��ѳ{?��:>��\?�?�4?�5?^?bmU?{�>��g?�j�>mEr?Mz>�?x?{\<>��{?Κ>[�}?���=��~?@��=�8?�|o=�?��3=��?�=��?��<�?>�iL���r?OS�>� L�%~��&�=�~��C?O�$�z��=��}?�~?:���
����?r?��|��x?Qo{?q�@>D\����p�?��*<�Ⱦ-�k?4qt����&6)�
{|��5?�
J�`^u?M���|?�I3>�]?�F ?��4?>55?�
?��T??��>�g?1G�>�r?<d{>b*x? ^=>��{?}]>��}?9��=֙~?�x�=�6?��p=��? �4=C�?`t=(�?`+�<��?�F���=��h?�!վu����Ο��5s��
?�{Y�z��>�_o?�v?�"���OG��{?3��r$}?�U~?C�=hc�V���?V��/���n?C-v�kx���$;�@�{�>�?L�V�t?�ꖾ�_|?�+>�B^?�>ї5?�q4?�?h�T?*��><=g?�#�>��q?�|>�x?�_>>y�{?& >�|}?o��=��~?U�=W4?�r=r�?��5=��?�.=��?�B�<��?�w�64a?�d�>�l�/rc����>�s,��2=���r>P�x��r?�ZS?wg?�\ܾn���?��J���?��?YW =�`i�coҾM?;<��_ԩ���q?��w������M��z���?�)N�	�s?;͛���|?�%$>��^?'��>3Z6?+�3?�b?�T?���>d�f?���>��q?�	~>?�w?Fa?>A}{?��>�u}?��=�~?y1�=(2?�]s=8�?�6=�?�=a�?�Z�<h�?su�>(`?���C�o�O����\?�j�W̾$���>��>?O�+?�O?�Q���=�[?�N=��?��?:��9�n�b޷��F~?�3��y��t?�:y���i���^���y�� ?0+P�}s?ǫ��w�|?N�>��_?)
�>�7?��2?O?@�S?��>6�f?�ۨ>?�q?Y\>��w?�b@>�p{?i�>�n}?�A�=4�~?��=�/?��t=��?[�7=0�?v�	=��?r�<0�?�o?�ˇ=�e�Wz侻w�<�?���@<Zľq{l�xa?�>�?2?e�7�֝O>خz?iy>�}?�m~?T��R�s������|?�_!�A���dv?�z�f<R�^�p���x��6?#R��@r?6����F}?��>S_`?'��>y�7?�!2?p�?\*S?��>�sf?緩>��q?iW�>��w?:dA>�d{?h>�g}?�f�=H�~?@�=�-?��u=��?�|8=~�?�]
=��?���<��?�K?g�M�Q�u���>6?TIT?6Th�+�>�&�UDB��gw?ɍ�>P�?�aT���>l�q?@�}>px?�{?�-=�.�w����&�z?H�K���v��vx?�{��i:�K���w��e?sT��iq?h\��t�}?�^>�a?%��>Z�8?�Z1?4d?�R?��>�/f?���>�_q?� �>��w?�eB>8X{?�*>�`}?��=W�~?�Ƥ=�+?�>w=�?*u9=ʼ?.=4�?;��<��?{����To��4�)j\?+:j?V��>3�'��0A?��Z�L���?��<y9�>�Pj�cF�>�#d?�Ư>�pp?�Ww?�����z��J��x?��u��W� Jz?��|�w|"�s找2�v�ǎ?%�U���p?=.��z�}?��>��a?+u�>e[9?<�0?�?�>R?�$�>��e?oo�>9q?���>��w?�fC>�K{?$�>�Y}?7��=a�~?���=O)?�x=>�?�m:=�?��=��?̸�<��?!|z�XhS���[>�z?�=}?-��e\��Qu?�Oy���h�=#z?��Y�y&p>B�x�wp?w�R?5��>	wf?γq?_����h}��O�ʰu?�Տ��P7�N�{?�}��w
�q���XFu�-�	?�W�M�o?�����~?\I�=vkb?;��>�:?��/?��?t�Q?�;�>.�e?�J�>�q?�R�>n�w?HhD>5?{?��>�R}?Q��=f~~?\�='?��y=��?�e;=`�?�=h�?^��<L�?��3�B86?�R?؃?'CB?P�&�-l>C�}?e�]7�=CWf?mk߾�q=\���(,?Pw=?��?�/Z?�j?[t̾���8���pr?(l���^�0}?�e~���佑X����s�N�?:�Y�ܿn?Uĸ��G~?�	�=�c?]]�>��:?n/??b?hQQ?�R�>Xbe?j&�>��p?���>!{w?�iE>�2{?1r>�K}?g��=fz~?�[�=�$?�{=��?\^<=��?@G=�?���<�?��`>i�y?LM}?�F�K�>��t�Э?GSZ?�tk����>ӦE?�"�S��1~�4�C?��$?�?��K?�bb?&ﾬ��+��N�n?����y���A~?2��k�����/�r�L�?si[�N�m?X����~~?��=��c?���>r�;?U7.?�?��P?�h�>.e?��>�p?���>�dw?�jF>�%{?�4>�D}?x �=`v~?8�=�"?�j|=p�?�V==�?�=��?���<��?�p?�W�>o ?A�G��/���/w��TS?�{?A�@��(?Q�?-�L�,���h�t��X?�d	?+�.?<;?A�X?�%�O�����<6�j? �̾���?�w�P���b���q�I� ?�&]���l?�G¾��~?��=gd?�=�>O<?pl-?e�?�aP?�~�>��d?�ܮ>i�p?�M�>0Nw?�kG>6{?(�>d=}?�E�=Ur~?f�=F ?ϵ}=)�?$O>=9�?��=2�?�<��?�K?r�!	��*K�y!<��-���{?N5>���!;\?H�>	k�����c�4[h?���>g@?��(?�M?��� ��ި=O!f?gI�L[�=�?�����&��#���qo����>��^���k?�Ǿ��~?8�=�e?\��>�	=? ,?�\?�O?���>ܑd?Է�>�sp?i��>�7w?�lH>j{?��>-6}?�j�=Dn~?��=�?� =߀?�G?=��?Pv=��?�.�<c�?���)0���;�x�-�5�{��M:�~ox?�w�$9^�*�y?��->�G|�Gk�JlK���t?7�>�LP?��?rB?D'�މ}���>�2a?�}�0��R�?t���ҋ�Q�����m���>߂`�7�j?ȶ˾�?<�=I�e?��>��=?J�+??�oO?��>�Kd?���>kKp?,��>� w?nI>��z?	|>�.}?���=/j~?ͪ=�?�%�=�?�?@=Ʒ?�0=a�?1F�<(�?��a��x����X;��m�\��>?cI?'��N�=��~?����`o���<� �,�v|?��)>�^?#��>��4?95��%{�coF>��[?z!�:�<��?���R��;�ƾLl�$�>�!b�u�i?�fо%6?=Rf?���>�|>?
+?��?*�N?��>9d?em�>!#p?�G�>�	w?oJ>��z?q>>�'}?���=f~?_��=a?Rˀ=G~?J8A=�?�=��?�]�<��?i�_��p�>.�:��/?�����N?.�>��b����>\gj?���Kt���X� ���?ޖ=ȶi?"��>��&?� B�K�w�x�~>E$V?xH�;g)=��?���w��<�jξ�Ej����>-�c���h?3վ�Z?QM�=
�f?���>5??9*?T?�{N?���>i�c?�G�>��o?���>��v?�oK>��z?� >O }?���=�a~?���=?�p�=�|?�0B=N�?\�=��?Pu�<��?��}�]�?����i?X���%n?��}=��r�*?��>?���wz[�#Em�=�� �~?Y�̽��r?�:�>6�?�N�0�s����>�	P?�/�E[�=~Q?7��'_]=e�־�fh����>Q@e��g?I�پ�{?���=�g?�N�>f�??5j)?�?'N?��>Ewc?c"�>��o?��>��v?�pL>��z?0�>�}?}��=�]~?�a�=�??�=�{?)C=��?�_=$�?ߌ�<v�?pqN?ib?�g!?�F?�}�>�2a?�7��
�o���]?; ?D�3� a6���z�p�R�y?=m�`�y?��_>b?9�X��@o�\%�>+�I?������=��~?�9�%�=��޾�tf�d��>�f�b�f?�U޾;�?Le=P,h?G��>ڢ@?��(?��?څM?��>�/c?���>�o?�A�>��v?�qM>z�z?��>�}?m#�=�Y~?F>�=`?���=Wz?k!D=Ӵ?=��?n��<:�?b�n?Wط�u�}?�> _?O7�>�J4�c�5��uz?��S>owY�M����O���n?k����%~?��=���>�vb�i�i����>�B?>.&��>��}?��~����=���od���>85h��ze?����?��F=��h?��>mXA?J�'?�G?
M?��>�b?�ִ>�o?�>Z�v?~rN>K�z?�G>
}?XH�=sU~?��=?(a�=y?�E=�?f�=N�?���<��?��N>b�z�M�Q?�����?��J��n����y�~?�`ܽ�s�mh���-}�\�>՟`?����m�?ж�<%�>B�j��c�ɲ�>@�;? >.�m+>�f|?��}�w��=2�Xb��V�>ٟi�pUd?�����?J�'=_i?�v�>B?/�&?��?��L?#�>�b?ɰ�>�Vo?r��>�v?:sO>�z?$
>�}??m�=>Q~?���=�?��=�w?(F=T�?��=��?���<��?�7�� 3��0U>�cz�J�Q?5
���� ]=�Si?]�ҾU&�VǦ��{r��+�>�MN?P��=0?9��d�>�q�}�\���?
4?r�5�_�J>[�z?�*}�2�>5���.`���>��j�.*c?��3�?�>	=��i?��>��B?Q'&?�?�L?
6�>rWb?���>R-o?�:�>c~v?�sP>��z?j�>#�|? ��=M~?Ӱ=E?��=Wv?�
G=��?I=u�?��<��?"�y�$e>ϧ�*�[����>� l�>�c��w�>S =?8�,��|�_�>�#`�s^�>xQ8?��1�O�{?��6���>�bw�r�T��$?5,?l=�_�j>�1y?�1|�I�/>#$��+�]����>#Ul��a?Ù���?��<D�j?�3�>�sC?�T%?8?i�K?�H�>�b?Qd�>�o?
�>�fv?�tQ>^�z?��>��|?���=�H~?]��=�?�Q�=�t?�H=ұ?n=�?��<F�?Q6����p?f�u�ۍ���(�~|�H��"H?t��>%�^��l�3��>��F��a!?�?��H�v?R����<>ݟ{��L�q�?�$?q�D����>7w?�{��G>A�w�[��{�>��m�A�`?�����?5��<k?���>�%D?R�$?��?~K?�Z�>��a?�=�>��n?=��>�Nv?uR>�z?�P>�|?���=~D~?���=y?���=�s?=�H=�?Ž=��?6�<�?��?�	K?�Vd�o~�>�Y*�?�����w? �I>��z�A�N�4�?L'���A?��?��[���m?i����(�=�r~�(�C��#%?_�?bAK����>Q�t?p�y��_>�a��EY�!�>d�n���_?A����?}4<ޭk?���>�D?2�#?Ԁ?�J?�l�>'|a?A�>̯n?a3�>7v?�uS>n{z?>f�|?� �=4@~?�g�=?a��=Ir?��I=K�?x=-�?�1�<��?p?����f��xSp?� v�N����7->�O|?sl�7~�8�%�-C?1��z\?�$�>�jk��c?]E�P=v���:���/?_�?ϢQ����>΄r?<nx��*w>a9���V��><p�PC^?y����?��f;�<l?kB�>J�E?T�"?�$?J?�~�>h2a?�>��n?tی>v?vT>�mz?H�>��|?v%�=�;~?D�=�?�A�=�p?��J=��?r2=��?PI�<��?

NoOpNoOp
��
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*��
value�B� Bߒ
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
�
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
_
dropout
	variables
trainable_variables
regularization_losses
	keras_api
�
att
 ffn
!
layernorm1
"
layernorm2
#dropout1
$dropout2
%	variables
&trainable_variables
'regularization_losses
(	keras_api
R
)	variables
*trainable_variables
+regularization_losses
,	keras_api
 
R
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api
h

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
�
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratem�m�1m�2m�;m�<m�Fm�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�Qm�Rm�Sm�Tm�Um�v�v�1v�2v�;v�<v�Fv�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�Qv�Rv�Sv�Tv�Uv�
�
0
1
2
3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
120
221
;22
<23
�
0
1
F2
G3
H4
I5
J6
K7
L8
M9
N10
O11
P12
Q13
R14
S15
T16
U17
118
219
;20
<21
 
�
Vnon_trainable_variables
Wmetrics
Xlayer_metrics
	variables

Ylayers
Zlayer_regularization_losses
trainable_variables
regularization_losses
 
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
�
[non_trainable_variables
\metrics
]layer_metrics
	variables

^layers
_layer_regularization_losses
trainable_variables
regularization_losses
R
`	variables
atrainable_variables
bregularization_losses
c	keras_api
 
 
 
�
dnon_trainable_variables
emetrics
flayer_metrics
	variables

glayers
hlayer_regularization_losses
trainable_variables
regularization_losses
�
i_query_dense
j
_key_dense
k_value_dense
l_softmax
m_dropout_layer
n_output_dense
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
�
slayer_with_weights-0
slayer-0
tlayer_with_weights-1
tlayer-1
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
q
yaxis
	Rgamma
Sbeta
z	variables
{trainable_variables
|regularization_losses
}	keras_api
t
~axis
	Tgamma
Ubeta
	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15
v
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15
 
�
�non_trainable_variables
�metrics
�layer_metrics
%	variables
�layers
 �layer_regularization_losses
&trainable_variables
'regularization_losses
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
)	variables
�layers
 �layer_regularization_losses
*trainable_variables
+regularization_losses
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
-	variables
�layers
 �layer_regularization_losses
.trainable_variables
/regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
�
�non_trainable_variables
�metrics
�layer_metrics
3	variables
�layers
 �layer_regularization_losses
4trainable_variables
5regularization_losses
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
7	variables
�layers
 �layer_regularization_losses
8trainable_variables
9regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

;0
<1

;0
<1
 
�
�non_trainable_variables
�metrics
�layer_metrics
=	variables
�layers
 �layer_regularization_losses
>trainable_variables
?regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block/multi_head_attention/query/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1transformer_block/multi_head_attention/query/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1transformer_block/multi_head_attention/key/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/transformer_block/multi_head_attention/key/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block/multi_head_attention/value/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1transformer_block/multi_head_attention/value/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE>transformer_block/multi_head_attention/attention_output/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE<transformer_block/multi_head_attention/attention_output/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUE
dense/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+transformer_block/layer_normalization/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*transformer_block/layer_normalization/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-transformer_block/layer_normalization_1/gamma'variables/18/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,transformer_block/layer_normalization_1/beta'variables/19/.ATTRIBUTES/VARIABLE_VALUE

0
1

�0
 
F
0
1
2
3
4
5
6
7
	8

9
 

0
1
 
 
 
 
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
`	variables
�layers
 �layer_regularization_losses
atrainable_variables
bregularization_losses
 
 
 

0
 
�
�partial_output_shape
�full_output_shape

Fkernel
Gbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Hkernel
Ibias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Jkernel
Kbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Lkernel
Mbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
8
F0
G1
H2
I3
J4
K5
L6
M7
8
F0
G1
H2
I3
J4
K5
L6
M7
 
�
�non_trainable_variables
�metrics
�layer_metrics
o	variables
�layers
 �layer_regularization_losses
ptrainable_variables
qregularization_losses
l

Nkernel
Obias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

Pkernel
Qbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api

N0
O1
P2
Q3

N0
O1
P2
Q3
 
�
�non_trainable_variables
�metrics
�layer_metrics
u	variables
�layers
 �layer_regularization_losses
vtrainable_variables
wregularization_losses
 

R0
S1

R0
S1
 
�
�non_trainable_variables
�metrics
�layer_metrics
z	variables
�layers
 �layer_regularization_losses
{trainable_variables
|regularization_losses
 

T0
U1

T0
U1
 
�
�non_trainable_variables
�metrics
�layer_metrics
	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 
 
*
0
 1
!2
"3
#4
$5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
 
 
 
 
 
 
 

F0
G1

F0
G1
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 

H0
I1

H0
I1
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 

J0
K1

J0
K1
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 

L0
M1

L0
M1
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 
 
*
i0
j1
k2
l3
m4
n5
 

N0
O1

N0
O1
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses

P0
Q1

P0
Q1
 
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
 
 
 

s0
t1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
��
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/query/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/query/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/key/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE6Adam/transformer_block/multi_head_attention/key/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/value/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/value/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEEAdam/transformer_block/multi_head_attention/attention_output/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUECAdam/transformer_block/multi_head_attention/attention_output/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/dense/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/query/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/query/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/key/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE6Adam/transformer_block/multi_head_attention/key/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/value/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/value/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEEAdam/transformer_block/multi_head_attention/attention_output/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUECAdam/transformer_block/multi_head_attention/attention_output/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/dense/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*,
_output_shapes
:����������@*
dtype0*!
shape:����������@
z
serving_default_input_2Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaConst3transformer_block/multi_head_attention/query/kernel1transformer_block/multi_head_attention/query/bias1transformer_block/multi_head_attention/key/kernel/transformer_block/multi_head_attention/key/bias3transformer_block/multi_head_attention/value/kernel1transformer_block/multi_head_attention/value/bias>transformer_block/multi_head_attention/attention_output/kernel<transformer_block/multi_head_attention/attention_output/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/betadense/kernel
dense/biasdense_1/kerneldense_1/bias-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_100513
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpGtransformer_block/multi_head_attention/query/kernel/Read/ReadVariableOpEtransformer_block/multi_head_attention/query/bias/Read/ReadVariableOpEtransformer_block/multi_head_attention/key/kernel/Read/ReadVariableOpCtransformer_block/multi_head_attention/key/bias/Read/ReadVariableOpGtransformer_block/multi_head_attention/value/kernel/Read/ReadVariableOpEtransformer_block/multi_head_attention/value/bias/Read/ReadVariableOpRtransformer_block/multi_head_attention/attention_output/kernel/Read/ReadVariableOpPtransformer_block/multi_head_attention/attention_output/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp?transformer_block/layer_normalization/gamma/Read/ReadVariableOp>transformer_block/layer_normalization/beta/Read/ReadVariableOpAtransformer_block/layer_normalization_1/gamma/Read/ReadVariableOp@transformer_block/layer_normalization_1/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/query/kernel/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/query/bias/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/key/kernel/m/Read/ReadVariableOpJAdam/transformer_block/multi_head_attention/key/bias/m/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/value/kernel/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/value/bias/m/Read/ReadVariableOpYAdam/transformer_block/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpWAdam/transformer_block/multi_head_attention/attention_output/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/query/kernel/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/query/bias/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/key/kernel/v/Read/ReadVariableOpJAdam/transformer_block/multi_head_attention/key/bias/v/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/value/kernel/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/value/bias/v/Read/ReadVariableOpYAdam/transformer_block/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpWAdam/transformer_block/multi_head_attention/attention_output/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpConst_1*X
TinQ
O2M	*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_102166
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate3transformer_block/multi_head_attention/query/kernel1transformer_block/multi_head_attention/query/bias1transformer_block/multi_head_attention/key/kernel/transformer_block/multi_head_attention/key/bias3transformer_block/multi_head_attention/value/kernel1transformer_block/multi_head_attention/value/bias>transformer_block/multi_head_attention/attention_output/kernel<transformer_block/multi_head_attention/attention_output/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/beta-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betatotalcount Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m:Adam/transformer_block/multi_head_attention/query/kernel/m8Adam/transformer_block/multi_head_attention/query/bias/m8Adam/transformer_block/multi_head_attention/key/kernel/m6Adam/transformer_block/multi_head_attention/key/bias/m:Adam/transformer_block/multi_head_attention/value/kernel/m8Adam/transformer_block/multi_head_attention/value/bias/mEAdam/transformer_block/multi_head_attention/attention_output/kernel/mCAdam/transformer_block/multi_head_attention/attention_output/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m2Adam/transformer_block/layer_normalization/gamma/m1Adam/transformer_block/layer_normalization/beta/m4Adam/transformer_block/layer_normalization_1/gamma/m3Adam/transformer_block/layer_normalization_1/beta/m Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v:Adam/transformer_block/multi_head_attention/query/kernel/v8Adam/transformer_block/multi_head_attention/query/bias/v8Adam/transformer_block/multi_head_attention/key/kernel/v6Adam/transformer_block/multi_head_attention/key/bias/v:Adam/transformer_block/multi_head_attention/value/kernel/v8Adam/transformer_block/multi_head_attention/value/bias/vEAdam/transformer_block/multi_head_attention/attention_output/kernel/vCAdam/transformer_block/multi_head_attention/attention_output/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v2Adam/transformer_block/layer_normalization/gamma/v1Adam/transformer_block/layer_normalization/beta/v4Adam/transformer_block/layer_normalization_1/gamma/v3Adam/transformer_block/layer_normalization_1/beta/v*W
TinP
N2L*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_102401��
�
�
4__inference_batch_normalization_layer_call_fn_101067

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_994092
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�*
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101188

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
X
4__inference_position_embedding2_layer_call_fn_101195
x
unknown
identity�
PartitionedCallPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_position_embedding2_layer_call_and_return_conditional_losses_994422
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������@:�@:O K
,
_output_shapes
:����������@

_user_specified_namex:)%
#
_output_shapes
:�@
�4
�

A__inference_model_layer_call_and_return_conditional_losses_100214

inputs
inputs_1(
batch_normalization_100155:@(
batch_normalization_100157:@(
batch_normalization_100159:@(
batch_normalization_100161:@
position_embedding2_100164.
transformer_block_100167:@@*
transformer_block_100169:@.
transformer_block_100171:@@*
transformer_block_100173:@.
transformer_block_100175:@@*
transformer_block_100177:@.
transformer_block_100179:@@&
transformer_block_100181:@&
transformer_block_100183:@&
transformer_block_100185:@+
transformer_block_100187:	@�'
transformer_block_100189:	�+
transformer_block_100191:	�@&
transformer_block_100193:@&
transformer_block_100195:@&
transformer_block_100197:@ 
dense_2_100202:Hd
dense_2_100204:d 
dense_3_100208:d
dense_3_100210:
identity��+batch_normalization/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�+position_embedding2/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_100155batch_normalization_100157batch_normalization_100159batch_normalization_100161*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1000812-
+batch_normalization/StatefulPartitionedCall�
+position_embedding2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0position_embedding2_100164*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_position_embedding2_layer_call_and_return_conditional_losses_1000272-
+position_embedding2/StatefulPartitionedCall�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall4position_embedding2/StatefulPartitionedCall:output:0transformer_block_100167transformer_block_100169transformer_block_100171transformer_block_100173transformer_block_100175transformer_block_100177transformer_block_100179transformer_block_100181transformer_block_100183transformer_block_100185transformer_block_100187transformer_block_100189transformer_block_100191transformer_block_100193transformer_block_100195transformer_block_100197*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_999522+
)transformer_block/StatefulPartitionedCall�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_996122*
(global_average_pooling1d/PartitionedCall�
concatenate/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_996212
concatenate/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_100202dense_2_100204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_996342!
dense_2/StatefulPartitionedCall�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0,^position_embedding2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_997472#
!dropout_3/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_100208dense_3_100210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_996572!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall,^position_embedding2/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2Z
+position_embedding2/StatefulPartitionedCall+position_embedding2/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:)%
#
_output_shapes
:�@
�
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_101678

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������d*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
M__inference_transformer_block_layer_call_and_return_conditional_losses_101596

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_query_add_readvariableop_resource:@T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:@@F
4multi_head_attention_key_add_readvariableop_resource:@V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_value_add_readvariableop_resource:@a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@O
Amulti_head_attention_attention_output_add_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@E
2sequential_dense_tensordot_readvariableop_resource:	@�?
0sequential_dense_biasadd_readvariableop_resource:	�G
4sequential_dense_1_tensordot_readvariableop_resource:	�@@
2sequential_dense_1_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/Tensordot/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�+sequential/dense_1/Tensordot/ReadVariableOp�
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsum�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/query/add/ReadVariableOp�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/query/add�
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2(
&multi_head_attention/key/einsum/Einsum�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02-
+multi_head_attention/key/add/ReadVariableOp�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/key/add�
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsum�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/value/add/ReadVariableOp�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention/Mul/y�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/Mul�
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/Einsum�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:�����������2&
$multi_head_attention/softmax/Softmax�
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������@*
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������@*
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsum�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2+
)multi_head_attention/attention_output/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMul-multi_head_attention/attention_output/add:z:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2
dropout_1/dropout/Mul_1o
addAddV2inputsdropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2
add�
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indices�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2"
 layer_normalization/moments/mean�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������2*
(layer_normalization/moments/StopGradient�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2/
-layer_normalization/moments/SquaredDifference�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2&
$layer_normalization/moments/variance�
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52%
#layer_normalization/batchnorm/add/y�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2#
!layer_normalization/batchnorm/add�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2%
#layer_normalization/batchnorm/Rsqrt�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOp�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/mul�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_1�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_2�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02.
,layer_normalization/batchnorm/ReadVariableOp�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/sub�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/add_1�
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02+
)sequential/dense/Tensordot/ReadVariableOp�
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes�
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free�
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape�
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axis�
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2�
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axis�
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1�
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/Const�
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod�
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1�
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1�
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis�
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concat�
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stack�
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@2&
$sequential/dense/Tensordot/transpose�
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"sequential/dense/Tensordot/Reshape�
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/dense/Tensordot/MatMul�
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2$
"sequential/dense/Tensordot/Const_2�
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis�
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1�
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Tensordot�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2
sequential/dense/BiasAdd�
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Relu�
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp�
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes�
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free�
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape�
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axis�
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2�
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axis�
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1�
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/Const�
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod�
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1�
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1�
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis�
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concat�
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stack�
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2(
&sequential/dense_1/Tensordot/transpose�
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2&
$sequential/dense_1/Tensordot/Reshape�
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#sequential/dense_1/Tensordot/MatMul�
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2&
$sequential/dense_1/Tensordot/Const_2�
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis�
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1�
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/Tensordot�
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp�
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/BiasAddw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_2/dropout/Const�
dropout_2/dropout/MulMul#sequential/dense_1/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2
dropout_2/dropout/Mul�
dropout_2/dropout/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform�
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_2/dropout/GreaterEqual/y�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@2 
dropout_2/dropout/GreaterEqual�
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2
dropout_2/dropout/Cast�
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2
dropout_2/dropout/Mul_1�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_2/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2
add_1�
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indices�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2$
"layer_normalization_1/moments/mean�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������2,
*layer_normalization_1/moments/StopGradient�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@21
/layer_normalization_1/moments/SquaredDifference�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2(
&layer_normalization_1/moments/variance�
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52'
%layer_normalization_1/batchnorm/add/y�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2%
#layer_normalization_1/batchnorm/add�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2'
%layer_normalization_1/batchnorm/Rsqrt�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOp�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/mul�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_1�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_2�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_1/batchnorm/ReadVariableOp�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/sub�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/add_1�
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�	
�
C__inference_dense_3_layer_call_and_return_conditional_losses_101697

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�*
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99086

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������@2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul�
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
F
*__inference_dropout_3_layer_call_fn_101656

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_996452
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_99329
dense_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_993052
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:����������@
%
_user_specified_namedense_input
�
�
2__inference_transformer_block_layer_call_fn_101292

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_995732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
v
O__inference_position_embedding2_layer_call_and_return_conditional_losses_100027
x
unknown
identity�?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@2
Cast/xU
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast?
SqrtSqrtCast:y:0*
T0*
_output_shapes
: 2
SqrtU
mulMulxSqrt:y:0*
T0*,
_output_shapes
:����������@2
mul�
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_1/stackx
strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/0x
strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/2�
strided_slice_1/stack_1Pack"strided_slice_1/stack_1/0:output:0strided_slice:output:0"strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:2
strided_slice_1/stack_1�
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_1/stack_2�
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������@*

begin_mask*
end_mask2
strided_slice_1m
addAddV2mul:z:0strided_slice_1:output:0*
T0*,
_output_shapes
:����������@2
adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/dropout/Const�
dropout/dropout/MulMuladd:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2
dropout/dropout/Mule
dropout/dropout/ShapeShapeadd:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2
dropout/dropout/Mul_1r
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������@:�@:O K
,
_output_shapes
:����������@

_user_specified_namex:)%
#
_output_shapes
:�@
�
�
4__inference_batch_normalization_layer_call_fn_101054

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_990862
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_99645

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_100323
input_1
input_2
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@ 

unknown_10:@@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:	@�

unknown_15:	�

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:Hd

unknown_21:d

unknown_22:d

unknown_23:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1002142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������@
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:)%
#
_output_shapes
:�@
�
p
F__inference_concatenate_layer_call_and_return_conditional_losses_99621

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������H2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
s
G__inference_concatenate_layer_call_and_return_conditional_losses_101631
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������H2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�4
�

A__inference_model_layer_call_and_return_conditional_losses_100449
input_1
input_2(
batch_normalization_100390:@(
batch_normalization_100392:@(
batch_normalization_100394:@(
batch_normalization_100396:@
position_embedding2_100399.
transformer_block_100402:@@*
transformer_block_100404:@.
transformer_block_100406:@@*
transformer_block_100408:@.
transformer_block_100410:@@*
transformer_block_100412:@.
transformer_block_100414:@@&
transformer_block_100416:@&
transformer_block_100418:@&
transformer_block_100420:@+
transformer_block_100422:	@�'
transformer_block_100424:	�+
transformer_block_100426:	�@&
transformer_block_100428:@&
transformer_block_100430:@&
transformer_block_100432:@ 
dense_2_100437:Hd
dense_2_100439:d 
dense_3_100443:d
dense_3_100445:
identity��+batch_normalization/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�+position_embedding2/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinput_1batch_normalization_100390batch_normalization_100392batch_normalization_100394batch_normalization_100396*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1000812-
+batch_normalization/StatefulPartitionedCall�
+position_embedding2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0position_embedding2_100399*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_position_embedding2_layer_call_and_return_conditional_losses_1000272-
+position_embedding2/StatefulPartitionedCall�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall4position_embedding2/StatefulPartitionedCall:output:0transformer_block_100402transformer_block_100404transformer_block_100406transformer_block_100408transformer_block_100410transformer_block_100412transformer_block_100414transformer_block_100416transformer_block_100418transformer_block_100420transformer_block_100422transformer_block_100424transformer_block_100426transformer_block_100428transformer_block_100430transformer_block_100432*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_999522+
)transformer_block/StatefulPartitionedCall�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_996122*
(global_average_pooling1d/PartitionedCall�
concatenate/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_996212
concatenate/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_100437dense_2_100439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_996342!
dense_2/StatefulPartitionedCall�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0,^position_embedding2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_997472#
!dropout_3/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_100443dense_3_100445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_996572!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall,^position_embedding2/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2Z
+position_embedding2/StatefulPartitionedCall+position_embedding2/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:U Q
,
_output_shapes
:����������@
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:)%
#
_output_shapes
:�@
��
�
L__inference_transformer_block_layer_call_and_return_conditional_losses_99952

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_query_add_readvariableop_resource:@T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:@@F
4multi_head_attention_key_add_readvariableop_resource:@V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_value_add_readvariableop_resource:@a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@O
Amulti_head_attention_attention_output_add_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@E
2sequential_dense_tensordot_readvariableop_resource:	@�?
0sequential_dense_biasadd_readvariableop_resource:	�G
4sequential_dense_1_tensordot_readvariableop_resource:	�@@
2sequential_dense_1_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/Tensordot/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�+sequential/dense_1/Tensordot/ReadVariableOp�
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsum�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/query/add/ReadVariableOp�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/query/add�
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2(
&multi_head_attention/key/einsum/Einsum�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02-
+multi_head_attention/key/add/ReadVariableOp�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/key/add�
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsum�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/value/add/ReadVariableOp�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention/Mul/y�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/Mul�
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/Einsum�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:�����������2&
$multi_head_attention/softmax/Softmax�
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������@*
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������@*
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsum�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2+
)multi_head_attention/attention_output/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMul-multi_head_attention/attention_output/add:z:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2
dropout_1/dropout/Mul_1o
addAddV2inputsdropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2
add�
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indices�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2"
 layer_normalization/moments/mean�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������2*
(layer_normalization/moments/StopGradient�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2/
-layer_normalization/moments/SquaredDifference�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2&
$layer_normalization/moments/variance�
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52%
#layer_normalization/batchnorm/add/y�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2#
!layer_normalization/batchnorm/add�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2%
#layer_normalization/batchnorm/Rsqrt�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOp�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/mul�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_1�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_2�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02.
,layer_normalization/batchnorm/ReadVariableOp�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/sub�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/add_1�
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02+
)sequential/dense/Tensordot/ReadVariableOp�
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes�
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free�
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape�
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axis�
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2�
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axis�
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1�
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/Const�
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod�
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1�
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1�
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis�
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concat�
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stack�
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@2&
$sequential/dense/Tensordot/transpose�
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"sequential/dense/Tensordot/Reshape�
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/dense/Tensordot/MatMul�
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2$
"sequential/dense/Tensordot/Const_2�
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis�
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1�
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Tensordot�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2
sequential/dense/BiasAdd�
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Relu�
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp�
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes�
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free�
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape�
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axis�
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2�
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axis�
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1�
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/Const�
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod�
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1�
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1�
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis�
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concat�
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stack�
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2(
&sequential/dense_1/Tensordot/transpose�
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2&
$sequential/dense_1/Tensordot/Reshape�
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#sequential/dense_1/Tensordot/MatMul�
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2&
$sequential/dense_1/Tensordot/Const_2�
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis�
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1�
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/Tensordot�
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp�
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/BiasAddw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_2/dropout/Const�
dropout_2/dropout/MulMul#sequential/dense_1/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2
dropout_2/dropout/Mul�
dropout_2/dropout/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform�
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_2/dropout/GreaterEqual/y�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@2 
dropout_2/dropout/GreaterEqual�
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2
dropout_2/dropout/Cast�
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2
dropout_2/dropout/Mul_1�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_2/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2
add_1�
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indices�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2$
"layer_normalization_1/moments/mean�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������2,
*layer_normalization_1/moments/StopGradient�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@21
/layer_normalization_1/moments/SquaredDifference�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2(
&layer_normalization_1/moments/variance�
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52'
%layer_normalization_1/batchnorm/add/y�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2%
#layer_normalization_1/batchnorm/add�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2'
%layer_normalization_1/batchnorm/Rsqrt�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOp�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/mul�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_1�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_2�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_1/batchnorm/ReadVariableOp�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/sub�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/add_1�
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_99747

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������d*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101154

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_99305

inputs
dense_99294:	@�
dense_99296:	� 
dense_1_99299:	�@
dense_1_99301:@
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_99294dense_99296*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_992022
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_99299dense_1_99301*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_992382!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�1
�

A__inference_model_layer_call_and_return_conditional_losses_100386
input_1
input_2(
batch_normalization_100327:@(
batch_normalization_100329:@(
batch_normalization_100331:@(
batch_normalization_100333:@
position_embedding2_100336.
transformer_block_100339:@@*
transformer_block_100341:@.
transformer_block_100343:@@*
transformer_block_100345:@.
transformer_block_100347:@@*
transformer_block_100349:@.
transformer_block_100351:@@&
transformer_block_100353:@&
transformer_block_100355:@&
transformer_block_100357:@+
transformer_block_100359:	@�'
transformer_block_100361:	�+
transformer_block_100363:	�@&
transformer_block_100365:@&
transformer_block_100367:@&
transformer_block_100369:@ 
dense_2_100374:Hd
dense_2_100376:d 
dense_3_100380:d
dense_3_100382:
identity��+batch_normalization/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinput_1batch_normalization_100327batch_normalization_100329batch_normalization_100331batch_normalization_100333*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_994092-
+batch_normalization/StatefulPartitionedCall�
#position_embedding2/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0position_embedding2_100336*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_position_embedding2_layer_call_and_return_conditional_losses_994422%
#position_embedding2/PartitionedCall�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall,position_embedding2/PartitionedCall:output:0transformer_block_100339transformer_block_100341transformer_block_100343transformer_block_100345transformer_block_100347transformer_block_100349transformer_block_100351transformer_block_100353transformer_block_100355transformer_block_100357transformer_block_100359transformer_block_100361transformer_block_100363transformer_block_100365transformer_block_100367transformer_block_100369*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_995732+
)transformer_block/StatefulPartitionedCall�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_996122*
(global_average_pooling1d/PartitionedCall�
concatenate/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_996212
concatenate/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_100374dense_2_100376*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_996342!
dense_2/StatefulPartitionedCall�
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_996452
dropout_3/PartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_100380dense_3_100382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_996572!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:U Q
,
_output_shapes
:����������@
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:)%
#
_output_shapes
:�@
� 
�
A__inference_dense_layer_call_and_return_conditional_losses_101877

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������@2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101100

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul�
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�*
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101134

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������@2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul�
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
Ԡ
�)
__inference__traced_save_102166
file_prefix8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopR
Nsavev2_transformer_block_multi_head_attention_query_kernel_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_query_bias_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_key_kernel_read_readvariableopN
Jsavev2_transformer_block_multi_head_attention_key_bias_read_readvariableopR
Nsavev2_transformer_block_multi_head_attention_value_kernel_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_value_bias_read_readvariableop]
Ysavev2_transformer_block_multi_head_attention_attention_output_kernel_read_readvariableop[
Wsavev2_transformer_block_multi_head_attention_attention_output_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableopJ
Fsavev2_transformer_block_layer_normalization_gamma_read_readvariableopI
Esavev2_transformer_block_layer_normalization_beta_read_readvariableopL
Hsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopK
Gsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_query_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_query_bias_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_key_kernel_m_read_readvariableopU
Qsavev2_adam_transformer_block_multi_head_attention_key_bias_m_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_value_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_value_bias_m_read_readvariableopd
`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_m_read_readvariableopb
^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_query_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_query_bias_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_key_kernel_v_read_readvariableopU
Qsavev2_adam_transformer_block_multi_head_attention_key_bias_v_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_value_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_value_bias_v_read_readvariableopd
`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_v_read_readvariableopb
^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableop
savev2_const_1

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�%
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*�$
value�$B�$LB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*�
value�B�LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�'
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopNsavev2_transformer_block_multi_head_attention_query_kernel_read_readvariableopLsavev2_transformer_block_multi_head_attention_query_bias_read_readvariableopLsavev2_transformer_block_multi_head_attention_key_kernel_read_readvariableopJsavev2_transformer_block_multi_head_attention_key_bias_read_readvariableopNsavev2_transformer_block_multi_head_attention_value_kernel_read_readvariableopLsavev2_transformer_block_multi_head_attention_value_bias_read_readvariableopYsavev2_transformer_block_multi_head_attention_attention_output_kernel_read_readvariableopWsavev2_transformer_block_multi_head_attention_attention_output_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopFsavev2_transformer_block_layer_normalization_gamma_read_readvariableopEsavev2_transformer_block_layer_normalization_beta_read_readvariableopHsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopGsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_query_kernel_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_query_bias_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_key_kernel_m_read_readvariableopQsavev2_adam_transformer_block_multi_head_attention_key_bias_m_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_value_kernel_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_value_bias_m_read_readvariableop`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_m_read_readvariableop^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_query_kernel_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_query_bias_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_key_kernel_v_read_readvariableopQsavev2_adam_transformer_block_multi_head_attention_key_bias_v_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_value_kernel_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_value_bias_v_read_readvariableop`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_v_read_readvariableop^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@:@:Hd:d:d:: : : : : :@@:@:@@:@:@@:@:@@:@:	@�:�:	�@:@:@:@:@:@: : :@:@:Hd:d:d::@@:@:@@:@:@@:@:@@:@:	@�:�:	�@:@:@:@:@:@:@:@:Hd:d:d::@@:@:@@:@:@@:@:@@:@:	@�:�:	�@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:$ 

_output_shapes

:Hd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@�:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :  

_output_shapes
:@: !

_output_shapes
:@:$" 

_output_shapes

:Hd: #

_output_shapes
:d:$$ 

_output_shapes

:d: %

_output_shapes
::(&$
"
_output_shapes
:@@:$' 

_output_shapes

:@:(($
"
_output_shapes
:@@:$) 

_output_shapes

:@:(*$
"
_output_shapes
:@@:$+ 

_output_shapes

:@:(,$
"
_output_shapes
:@@: -

_output_shapes
:@:%.!

_output_shapes
:	@�:!/

_output_shapes	
:�:%0!

_output_shapes
:	�@: 1

_output_shapes
:@: 2

_output_shapes
:@: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@: 6

_output_shapes
:@: 7

_output_shapes
:@:$8 

_output_shapes

:Hd: 9

_output_shapes
:d:$: 

_output_shapes

:d: ;

_output_shapes
::(<$
"
_output_shapes
:@@:$= 

_output_shapes

:@:(>$
"
_output_shapes
:@@:$? 

_output_shapes

:@:(@$
"
_output_shapes
:@@:$A 

_output_shapes

:@:(B$
"
_output_shapes
:@@: C

_output_shapes
:@:%D!

_output_shapes
:	@�:!E

_output_shapes	
:�:%F!

_output_shapes
:	�@: G

_output_shapes
:@: H

_output_shapes
:@: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:L

_output_shapes
: 
�
�
+__inference_sequential_layer_call_fn_101710

inputs
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_992452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
r
N__inference_position_embedding2_layer_call_and_return_conditional_losses_99442
x
unknown
identity?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@2
Cast/xU
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast?
SqrtSqrtCast:y:0*
T0*
_output_shapes
: 2
SqrtU
mulMulxSqrt:y:0*
T0*,
_output_shapes
:����������@2
mul�
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_1/stackx
strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/0x
strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/2�
strided_slice_1/stack_1Pack"strided_slice_1/stack_1/0:output:0strided_slice:output:0"strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:2
strided_slice_1/stack_1�
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_1/stack_2�
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������@*

begin_mask*
end_mask2
strided_slice_1m
addAddV2mul:z:0strided_slice_1:output:0*
T0*,
_output_shapes
:����������@2
addp
dropout/IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������@2
dropout/Identityr
IdentityIdentitydropout/Identity:output:0*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������@:�@:O K
,
_output_shapes
:����������@

_user_specified_namex:)%
#
_output_shapes
:�@
��
�
A__inference_model_layer_call_and_return_conditional_losses_100806
inputs_0
inputs_1C
5batch_normalization_batchnorm_readvariableop_resource:@G
9batch_normalization_batchnorm_mul_readvariableop_resource:@E
7batch_normalization_batchnorm_readvariableop_1_resource:@E
7batch_normalization_batchnorm_readvariableop_2_resource:@
position_embedding2_100654h
Rtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:@@Z
Htransformer_block_multi_head_attention_query_add_readvariableop_resource:@f
Ptransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:@@X
Ftransformer_block_multi_head_attention_key_add_readvariableop_resource:@h
Rtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:@@Z
Htransformer_block_multi_head_attention_value_add_readvariableop_resource:@s
]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@a
Stransformer_block_multi_head_attention_attention_output_add_readvariableop_resource:@Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:@U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:@W
Dtransformer_block_sequential_dense_tensordot_readvariableop_resource:	@�Q
Btransformer_block_sequential_dense_biasadd_readvariableop_resource:	�Y
Ftransformer_block_sequential_dense_1_tensordot_readvariableop_resource:	�@R
Dtransformer_block_sequential_dense_1_biasadd_readvariableop_resource:@[
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:@W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:Hd5
'dense_2_biasadd_readvariableop_resource:d8
&dense_3_matmul_readvariableop_resource:d5
'dense_3_biasadd_readvariableop_resource:
identity��,batch_normalization/batchnorm/ReadVariableOp�.batch_normalization/batchnorm/ReadVariableOp_1�.batch_normalization/batchnorm/ReadVariableOp_2�0batch_normalization/batchnorm/mul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�>transformer_block/layer_normalization/batchnorm/ReadVariableOp�Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp�Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�=transformer_block/multi_head_attention/key/add/ReadVariableOp�Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp�?transformer_block/multi_head_attention/query/add/ReadVariableOp�Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp�?transformer_block/multi_head_attention/value/add/ReadVariableOp�Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp�9transformer_block/sequential/dense/BiasAdd/ReadVariableOp�;transformer_block/sequential/dense/Tensordot/ReadVariableOp�;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp�
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp�
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2%
#batch_normalization/batchnorm/add/y�
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2#
!batch_normalization/batchnorm/add�
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:@2%
#batch_normalization/batchnorm/Rsqrt�
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp�
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2#
!batch_normalization/batchnorm/mul�
#batch_normalization/batchnorm/mul_1Mulinputs_0%batch_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#batch_normalization/batchnorm/mul_1�
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1�
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:@2%
#batch_normalization/batchnorm/mul_2�
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2�
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2#
!batch_normalization/batchnorm/sub�
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2%
#batch_normalization/batchnorm/add_1�
position_embedding2/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
position_embedding2/Shape�
'position_embedding2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2)
'position_embedding2/strided_slice/stack�
)position_embedding2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2+
)position_embedding2/strided_slice/stack_1�
)position_embedding2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)position_embedding2/strided_slice/stack_2�
!position_embedding2/strided_sliceStridedSlice"position_embedding2/Shape:output:00position_embedding2/strided_slice/stack:output:02position_embedding2/strided_slice/stack_1:output:02position_embedding2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!position_embedding2/strided_slicez
position_embedding2/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@2
position_embedding2/Cast/x�
position_embedding2/CastCast#position_embedding2/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
position_embedding2/Cast{
position_embedding2/SqrtSqrtposition_embedding2/Cast:y:0*
T0*
_output_shapes
: 2
position_embedding2/Sqrt�
position_embedding2/mulMul'batch_normalization/batchnorm/add_1:z:0position_embedding2/Sqrt:y:0*
T0*,
_output_shapes
:����������@2
position_embedding2/mul�
)position_embedding2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2+
)position_embedding2/strided_slice_1/stack�
-position_embedding2/strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 2/
-position_embedding2/strided_slice_1/stack_1/0�
-position_embedding2/strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : 2/
-position_embedding2/strided_slice_1/stack_1/2�
+position_embedding2/strided_slice_1/stack_1Pack6position_embedding2/strided_slice_1/stack_1/0:output:0*position_embedding2/strided_slice:output:06position_embedding2/strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:2-
+position_embedding2/strided_slice_1/stack_1�
+position_embedding2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2-
+position_embedding2/strided_slice_1/stack_2�
#position_embedding2/strided_slice_1StridedSliceposition_embedding2_1006542position_embedding2/strided_slice_1/stack:output:04position_embedding2/strided_slice_1/stack_1:output:04position_embedding2/strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������@*

begin_mask*
end_mask2%
#position_embedding2/strided_slice_1�
position_embedding2/addAddV2position_embedding2/mul:z:0,position_embedding2/strided_slice_1:output:0*
T0*,
_output_shapes
:����������@2
position_embedding2/add�
$position_embedding2/dropout/IdentityIdentityposition_embedding2/add:z:0*
T0*,
_output_shapes
:����������@2&
$position_embedding2/dropout/Identity�
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02K
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp�
:transformer_block/multi_head_attention/query/einsum/EinsumEinsum-position_embedding2/dropout/Identity:output:0Qtransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2<
:transformer_block/multi_head_attention/query/einsum/Einsum�
?transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02A
?transformer_block/multi_head_attention/query/add/ReadVariableOp�
0transformer_block/multi_head_attention/query/addAddV2Ctransformer_block/multi_head_attention/query/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@22
0transformer_block/multi_head_attention/query/add�
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02I
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp�
8transformer_block/multi_head_attention/key/einsum/EinsumEinsum-position_embedding2/dropout/Identity:output:0Otransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2:
8transformer_block/multi_head_attention/key/einsum/Einsum�
=transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02?
=transformer_block/multi_head_attention/key/add/ReadVariableOp�
.transformer_block/multi_head_attention/key/addAddV2Atransformer_block/multi_head_attention/key/einsum/Einsum:output:0Etransformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@20
.transformer_block/multi_head_attention/key/add�
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02K
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp�
:transformer_block/multi_head_attention/value/einsum/EinsumEinsum-position_embedding2/dropout/Identity:output:0Qtransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2<
:transformer_block/multi_head_attention/value/einsum/Einsum�
?transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02A
?transformer_block/multi_head_attention/value/add/ReadVariableOp�
0transformer_block/multi_head_attention/value/addAddV2Ctransformer_block/multi_head_attention/value/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@22
0transformer_block/multi_head_attention/value/add�
,transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2.
,transformer_block/multi_head_attention/Mul/y�
*transformer_block/multi_head_attention/MulMul4transformer_block/multi_head_attention/query/add:z:05transformer_block/multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������@2,
*transformer_block/multi_head_attention/Mul�
4transformer_block/multi_head_attention/einsum/EinsumEinsum2transformer_block/multi_head_attention/key/add:z:0.transformer_block/multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe26
4transformer_block/multi_head_attention/einsum/Einsum�
6transformer_block/multi_head_attention/softmax/SoftmaxSoftmax=transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:�����������28
6transformer_block/multi_head_attention/softmax/Softmax�
7transformer_block/multi_head_attention/dropout/IdentityIdentity@transformer_block/multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:�����������29
7transformer_block/multi_head_attention/dropout/Identity�
6transformer_block/multi_head_attention/einsum_1/EinsumEinsum@transformer_block/multi_head_attention/dropout/Identity:output:04transformer_block/multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������@*
equationacbe,aecd->abcd28
6transformer_block/multi_head_attention/einsum_1/Einsum�
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02V
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumEinsum?transformer_block/multi_head_attention/einsum_1/Einsum:output:0\transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������@*
equationabcd,cde->abe2G
Etransformer_block/multi_head_attention/attention_output/einsum/Einsum�
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp�
;transformer_block/multi_head_attention/attention_output/addAddV2Ntransformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Rtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2=
;transformer_block/multi_head_attention/attention_output/add�
$transformer_block/dropout_1/IdentityIdentity?transformer_block/multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:����������@2&
$transformer_block/dropout_1/Identity�
transformer_block/addAddV2-position_embedding2/dropout/Identity:output:0-transformer_block/dropout_1/Identity:output:0*
T0*,
_output_shapes
:����������@2
transformer_block/add�
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2F
Dtransformer_block/layer_normalization/moments/mean/reduction_indices�
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(24
2transformer_block/layer_normalization/moments/mean�
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������2<
:transformer_block/layer_normalization/moments/StopGradient�
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2A
?transformer_block/layer_normalization/moments/SquaredDifference�
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block/layer_normalization/moments/variance/reduction_indices�
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(28
6transformer_block/layer_normalization/moments/variance�
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�527
5transformer_block/layer_normalization/batchnorm/add/y�
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������25
3transformer_block/layer_normalization/batchnorm/add�
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������27
5transformer_block/layer_normalization/batchnorm/Rsqrt�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@25
3transformer_block/layer_normalization/batchnorm/mul�
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization/batchnorm/mul_1�
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization/batchnorm/mul_2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02@
>transformer_block/layer_normalization/batchnorm/ReadVariableOp�
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@25
3transformer_block/layer_normalization/batchnorm/sub�
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization/batchnorm/add_1�
;transformer_block/sequential/dense/Tensordot/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02=
;transformer_block/sequential/dense/Tensordot/ReadVariableOp�
1transformer_block/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:23
1transformer_block/sequential/dense/Tensordot/axes�
1transformer_block/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       23
1transformer_block/sequential/dense/Tensordot/free�
2transformer_block/sequential/dense/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/Shape�
:transformer_block/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/GatherV2/axis�
5transformer_block/sequential/dense/Tensordot/GatherV2GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/free:output:0Ctransformer_block/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/GatherV2�
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axis�
7transformer_block/sequential/dense/Tensordot/GatherV2_1GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Etransformer_block/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense/Tensordot/GatherV2_1�
2transformer_block/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 24
2transformer_block/sequential/dense/Tensordot/Const�
1transformer_block/sequential/dense/Tensordot/ProdProd>transformer_block/sequential/dense/Tensordot/GatherV2:output:0;transformer_block/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 23
1transformer_block/sequential/dense/Tensordot/Prod�
4transformer_block/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense/Tensordot/Const_1�
3transformer_block/sequential/dense/Tensordot/Prod_1Prod@transformer_block/sequential/dense/Tensordot/GatherV2_1:output:0=transformer_block/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense/Tensordot/Prod_1�
8transformer_block/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2:
8transformer_block/sequential/dense/Tensordot/concat/axis�
3transformer_block/sequential/dense/Tensordot/concatConcatV2:transformer_block/sequential/dense/Tensordot/free:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Atransformer_block/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:25
3transformer_block/sequential/dense/Tensordot/concat�
2transformer_block/sequential/dense/Tensordot/stackPack:transformer_block/sequential/dense/Tensordot/Prod:output:0<transformer_block/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/stack�
6transformer_block/sequential/dense/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0<transformer_block/sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@28
6transformer_block/sequential/dense/Tensordot/transpose�
4transformer_block/sequential/dense/Tensordot/ReshapeReshape:transformer_block/sequential/dense/Tensordot/transpose:y:0;transformer_block/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������26
4transformer_block/sequential/dense/Tensordot/Reshape�
3transformer_block/sequential/dense/Tensordot/MatMulMatMul=transformer_block/sequential/dense/Tensordot/Reshape:output:0Ctransformer_block/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������25
3transformer_block/sequential/dense/Tensordot/MatMul�
4transformer_block/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�26
4transformer_block/sequential/dense/Tensordot/Const_2�
:transformer_block/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/concat_1/axis�
5transformer_block/sequential/dense/Tensordot/concat_1ConcatV2>transformer_block/sequential/dense/Tensordot/GatherV2:output:0=transformer_block/sequential/dense/Tensordot/Const_2:output:0Ctransformer_block/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/concat_1�
,transformer_block/sequential/dense/TensordotReshape=transformer_block/sequential/dense/Tensordot/MatMul:product:0>transformer_block/sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2.
,transformer_block/sequential/dense/Tensordot�
9transformer_block/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpBtransformer_block_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp�
*transformer_block/sequential/dense/BiasAddBiasAdd5transformer_block/sequential/dense/Tensordot:output:0Atransformer_block/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2,
*transformer_block/sequential/dense/BiasAdd�
'transformer_block/sequential/dense/ReluRelu3transformer_block/sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2)
'transformer_block/sequential/dense/Relu�
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02?
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp�
3transformer_block/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:25
3transformer_block/sequential/dense_1/Tensordot/axes�
3transformer_block/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       25
3transformer_block/sequential/dense_1/Tensordot/free�
4transformer_block/sequential/dense_1/Tensordot/ShapeShape5transformer_block/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/Shape�
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axis�
7transformer_block/sequential/dense_1/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/free:output:0Etransformer_block/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/GatherV2�
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis�
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Gtransformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2;
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1�
4transformer_block/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense_1/Tensordot/Const�
3transformer_block/sequential/dense_1/Tensordot/ProdProd@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense_1/Tensordot/Prod�
6transformer_block/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 28
6transformer_block/sequential/dense_1/Tensordot/Const_1�
5transformer_block/sequential/dense_1/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_1/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 27
5transformer_block/sequential/dense_1/Tensordot/Prod_1�
:transformer_block/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense_1/Tensordot/concat/axis�
5transformer_block/sequential/dense_1/Tensordot/concatConcatV2<transformer_block/sequential/dense_1/Tensordot/free:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Ctransformer_block/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense_1/Tensordot/concat�
4transformer_block/sequential/dense_1/Tensordot/stackPack<transformer_block/sequential/dense_1/Tensordot/Prod:output:0>transformer_block/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/stack�
8transformer_block/sequential/dense_1/Tensordot/transpose	Transpose5transformer_block/sequential/dense/Relu:activations:0>transformer_block/sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2:
8transformer_block/sequential/dense_1/Tensordot/transpose�
6transformer_block/sequential/dense_1/Tensordot/ReshapeReshape<transformer_block/sequential/dense_1/Tensordot/transpose:y:0=transformer_block/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������28
6transformer_block/sequential/dense_1/Tensordot/Reshape�
5transformer_block/sequential/dense_1/Tensordot/MatMulMatMul?transformer_block/sequential/dense_1/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@27
5transformer_block/sequential/dense_1/Tensordot/MatMul�
6transformer_block/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@28
6transformer_block/sequential/dense_1/Tensordot/Const_2�
<transformer_block/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/concat_1/axis�
7transformer_block/sequential/dense_1/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_1/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/concat_1�
.transformer_block/sequential/dense_1/TensordotReshape?transformer_block/sequential/dense_1/Tensordot/MatMul:product:0@transformer_block/sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@20
.transformer_block/sequential/dense_1/Tensordot�
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp�
,transformer_block/sequential/dense_1/BiasAddBiasAdd7transformer_block/sequential/dense_1/Tensordot:output:0Ctransformer_block/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2.
,transformer_block/sequential/dense_1/BiasAdd�
$transformer_block/dropout_2/IdentityIdentity5transformer_block/sequential/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������@2&
$transformer_block/dropout_2/Identity�
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_2/Identity:output:0*
T0*,
_output_shapes
:����������@2
transformer_block/add_1�
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2H
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indices�
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(26
4transformer_block/layer_normalization_1/moments/mean�
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������2>
<transformer_block/layer_normalization_1/moments/StopGradient�
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2C
Atransformer_block/layer_normalization_1/moments/SquaredDifference�
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indices�
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2:
8transformer_block/layer_normalization_1/moments/variance�
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�529
7transformer_block/layer_normalization_1/batchnorm/add/y�
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������27
5transformer_block/layer_normalization_1/batchnorm/add�
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������29
7transformer_block/layer_normalization_1/batchnorm/Rsqrt�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization_1/batchnorm/mul�
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@29
7transformer_block/layer_normalization_1/batchnorm/mul_1�
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@29
7transformer_block/layer_normalization_1/batchnorm/mul_2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization_1/batchnorm/sub�
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@29
7transformer_block/layer_normalization_1/batchnorm/add_1�
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices�
global_average_pooling1d/MeanMean;transformer_block/layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@2
global_average_pooling1d/Meant
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis�
concatenate/concatConcatV2&global_average_pooling1d/Mean:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������H2
concatenate/concat�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:Hd*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulconcatenate/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2
dense_2/Relu�
dropout_3/IdentityIdentitydense_2/Relu:activations:0*
T0*'
_output_shapes
:���������d2
dropout_3/Identity�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMuldropout_3/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAdd�
IdentityIdentitydense_3/BiasAdd:output:0-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpK^transformer_block/multi_head_attention/attention_output/add/ReadVariableOpU^transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp>^transformer_block/multi_head_attention/key/add/ReadVariableOpH^transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/query/add/ReadVariableOpJ^transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/value/add/ReadVariableOpJ^transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:^transformer_block/sequential/dense/BiasAdd/ReadVariableOp<^transformer_block/sequential/dense/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_1/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp2�
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2~
=transformer_block/multi_head_attention/key/add/ReadVariableOp=transformer_block/multi_head_attention/key/add/ReadVariableOp2�
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2�
?transformer_block/multi_head_attention/query/add/ReadVariableOp?transformer_block/multi_head_attention/query/add/ReadVariableOp2�
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2�
?transformer_block/multi_head_attention/value/add/ReadVariableOp?transformer_block/multi_head_attention/value/add/ReadVariableOp2�
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2v
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp9transformer_block/sequential/dense/BiasAdd/ReadVariableOp2z
;transformer_block/sequential/dense/Tensordot/ReadVariableOp;transformer_block/sequential/dense/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:V R
,
_output_shapes
:����������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:)%
#
_output_shapes
:�@
�
�
&__inference_model_layer_call_fn_100569
inputs_0
inputs_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@ 

unknown_10:@@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:	@�

unknown_15:	�

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:Hd

unknown_21:d

unknown_22:d

unknown_23:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_996642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:)%
#
_output_shapes
:�@
�
�
*__inference_sequential_layer_call_fn_99256
dense_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_992452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:����������@
%
_user_specified_namedense_input
�
X
,__inference_concatenate_layer_call_fn_101624
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_996212
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@:���������:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
v
O__inference_position_embedding2_layer_call_and_return_conditional_losses_101255
x
unknown
identity�?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@2
Cast/xU
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast?
SqrtSqrtCast:y:0*
T0*
_output_shapes
: 2
SqrtU
mulMulxSqrt:y:0*
T0*,
_output_shapes
:����������@2
mul�
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_1/stackx
strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/0x
strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/2�
strided_slice_1/stack_1Pack"strided_slice_1/stack_1/0:output:0strided_slice:output:0"strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:2
strided_slice_1/stack_1�
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_1/stack_2�
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������@*

begin_mask*
end_mask2
strided_slice_1m
addAddV2mul:z:0strided_slice_1:output:0*
T0*,
_output_shapes
:����������@2
adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/dropout/Const�
dropout/dropout/MulMuladd:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2
dropout/dropout/Mule
dropout/dropout/ShapeShapeadd:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2
dropout/dropout/Mul_1r
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������@:�@:O K
,
_output_shapes
:����������@

_user_specified_namex:)%
#
_output_shapes
:�@
�
�
(__inference_dense_1_layer_call_fn_101886

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_992382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
M__inference_transformer_block_layer_call_and_return_conditional_losses_101456

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_query_add_readvariableop_resource:@T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:@@F
4multi_head_attention_key_add_readvariableop_resource:@V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_value_add_readvariableop_resource:@a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@O
Amulti_head_attention_attention_output_add_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@E
2sequential_dense_tensordot_readvariableop_resource:	@�?
0sequential_dense_biasadd_readvariableop_resource:	�G
4sequential_dense_1_tensordot_readvariableop_resource:	�@@
2sequential_dense_1_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/Tensordot/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�+sequential/dense_1/Tensordot/ReadVariableOp�
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsum�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/query/add/ReadVariableOp�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/query/add�
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2(
&multi_head_attention/key/einsum/Einsum�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02-
+multi_head_attention/key/add/ReadVariableOp�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/key/add�
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsum�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/value/add/ReadVariableOp�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention/Mul/y�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/Mul�
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/Einsum�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:�����������2&
$multi_head_attention/softmax/Softmax�
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:�����������2'
%multi_head_attention/dropout/Identity�
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������@*
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������@*
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsum�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2+
)multi_head_attention/attention_output/add�
dropout_1/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:����������@2
dropout_1/Identityo
addAddV2inputsdropout_1/Identity:output:0*
T0*,
_output_shapes
:����������@2
add�
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indices�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2"
 layer_normalization/moments/mean�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������2*
(layer_normalization/moments/StopGradient�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2/
-layer_normalization/moments/SquaredDifference�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2&
$layer_normalization/moments/variance�
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52%
#layer_normalization/batchnorm/add/y�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2#
!layer_normalization/batchnorm/add�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2%
#layer_normalization/batchnorm/Rsqrt�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOp�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/mul�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_1�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_2�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02.
,layer_normalization/batchnorm/ReadVariableOp�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/sub�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/add_1�
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02+
)sequential/dense/Tensordot/ReadVariableOp�
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes�
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free�
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape�
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axis�
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2�
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axis�
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1�
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/Const�
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod�
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1�
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1�
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis�
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concat�
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stack�
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@2&
$sequential/dense/Tensordot/transpose�
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"sequential/dense/Tensordot/Reshape�
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/dense/Tensordot/MatMul�
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2$
"sequential/dense/Tensordot/Const_2�
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis�
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1�
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Tensordot�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2
sequential/dense/BiasAdd�
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Relu�
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp�
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes�
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free�
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape�
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axis�
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2�
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axis�
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1�
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/Const�
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod�
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1�
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1�
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis�
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concat�
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stack�
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2(
&sequential/dense_1/Tensordot/transpose�
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2&
$sequential/dense_1/Tensordot/Reshape�
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#sequential/dense_1/Tensordot/MatMul�
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2&
$sequential/dense_1/Tensordot/Const_2�
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis�
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1�
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/Tensordot�
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp�
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/BiasAdd�
dropout_2/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������@2
dropout_2/Identity�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_2/Identity:output:0*
T0*,
_output_shapes
:����������@2
add_1�
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indices�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2$
"layer_normalization_1/moments/mean�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������2,
*layer_normalization_1/moments/StopGradient�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@21
/layer_normalization_1/moments/SquaredDifference�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2(
&layer_normalization_1/moments/variance�
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52'
%layer_normalization_1/batchnorm/add/y�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2%
#layer_normalization_1/batchnorm/add�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2'
%layer_normalization_1/batchnorm/Rsqrt�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOp�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/mul�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_1�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_2�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_1/batchnorm/ReadVariableOp�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/sub�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/add_1�
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
4__inference_batch_normalization_layer_call_fn_101080

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1000812
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�H
�
F__inference_sequential_layer_call_and_return_conditional_losses_101780

inputs:
'dense_tensordot_readvariableop_resource:	@�4
%dense_biasadd_readvariableop_resource:	�<
)dense_1_tensordot_readvariableop_resource:	�@5
'dense_1_biasadd_readvariableop_resource:@
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2
dense/BiasAddp

dense/ReluReludense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2

dense/Relu�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freez
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2
dense_1/BiasAdd�
IdentityIdentitydense_1/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_101666

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_99343
dense_input
dense_99332:	@�
dense_99334:	� 
dense_1_99337:	�@
dense_1_99339:@
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_99332dense_99334*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_992022
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_99337dense_1_99339*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_992382!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
,
_output_shapes
:����������@
%
_user_specified_namedense_input
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_99634

inputs0
matmul_readvariableop_resource:Hd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Hd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������d2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_100513
input_1
input_2
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@ 

unknown_10:@@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:	@�

unknown_15:	�

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:Hd

unknown_21:d

unknown_22:d

unknown_23:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_990022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������@
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:)%
#
_output_shapes
:�@
�
U
9__inference_global_average_pooling1d_layer_call_fn_101601

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_993672
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_99612

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������@:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
� 
�
@__inference_dense_layer_call_and_return_conditional_losses_99202

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������@2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
��
�8
"__inference__traced_restore_102401
file_prefix8
*assignvariableop_batch_normalization_gamma:@9
+assignvariableop_1_batch_normalization_beta:@@
2assignvariableop_2_batch_normalization_moving_mean:@D
6assignvariableop_3_batch_normalization_moving_variance:@3
!assignvariableop_4_dense_2_kernel:Hd-
assignvariableop_5_dense_2_bias:d3
!assignvariableop_6_dense_3_kernel:d-
assignvariableop_7_dense_3_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: ]
Gassignvariableop_13_transformer_block_multi_head_attention_query_kernel:@@W
Eassignvariableop_14_transformer_block_multi_head_attention_query_bias:@[
Eassignvariableop_15_transformer_block_multi_head_attention_key_kernel:@@U
Cassignvariableop_16_transformer_block_multi_head_attention_key_bias:@]
Gassignvariableop_17_transformer_block_multi_head_attention_value_kernel:@@W
Eassignvariableop_18_transformer_block_multi_head_attention_value_bias:@h
Rassignvariableop_19_transformer_block_multi_head_attention_attention_output_kernel:@@^
Passignvariableop_20_transformer_block_multi_head_attention_attention_output_bias:@3
 assignvariableop_21_dense_kernel:	@�-
assignvariableop_22_dense_bias:	�5
"assignvariableop_23_dense_1_kernel:	�@.
 assignvariableop_24_dense_1_bias:@M
?assignvariableop_25_transformer_block_layer_normalization_gamma:@L
>assignvariableop_26_transformer_block_layer_normalization_beta:@O
Aassignvariableop_27_transformer_block_layer_normalization_1_gamma:@N
@assignvariableop_28_transformer_block_layer_normalization_1_beta:@#
assignvariableop_29_total: #
assignvariableop_30_count: B
4assignvariableop_31_adam_batch_normalization_gamma_m:@A
3assignvariableop_32_adam_batch_normalization_beta_m:@;
)assignvariableop_33_adam_dense_2_kernel_m:Hd5
'assignvariableop_34_adam_dense_2_bias_m:d;
)assignvariableop_35_adam_dense_3_kernel_m:d5
'assignvariableop_36_adam_dense_3_bias_m:d
Nassignvariableop_37_adam_transformer_block_multi_head_attention_query_kernel_m:@@^
Lassignvariableop_38_adam_transformer_block_multi_head_attention_query_bias_m:@b
Lassignvariableop_39_adam_transformer_block_multi_head_attention_key_kernel_m:@@\
Jassignvariableop_40_adam_transformer_block_multi_head_attention_key_bias_m:@d
Nassignvariableop_41_adam_transformer_block_multi_head_attention_value_kernel_m:@@^
Lassignvariableop_42_adam_transformer_block_multi_head_attention_value_bias_m:@o
Yassignvariableop_43_adam_transformer_block_multi_head_attention_attention_output_kernel_m:@@e
Wassignvariableop_44_adam_transformer_block_multi_head_attention_attention_output_bias_m:@:
'assignvariableop_45_adam_dense_kernel_m:	@�4
%assignvariableop_46_adam_dense_bias_m:	�<
)assignvariableop_47_adam_dense_1_kernel_m:	�@5
'assignvariableop_48_adam_dense_1_bias_m:@T
Fassignvariableop_49_adam_transformer_block_layer_normalization_gamma_m:@S
Eassignvariableop_50_adam_transformer_block_layer_normalization_beta_m:@V
Hassignvariableop_51_adam_transformer_block_layer_normalization_1_gamma_m:@U
Gassignvariableop_52_adam_transformer_block_layer_normalization_1_beta_m:@B
4assignvariableop_53_adam_batch_normalization_gamma_v:@A
3assignvariableop_54_adam_batch_normalization_beta_v:@;
)assignvariableop_55_adam_dense_2_kernel_v:Hd5
'assignvariableop_56_adam_dense_2_bias_v:d;
)assignvariableop_57_adam_dense_3_kernel_v:d5
'assignvariableop_58_adam_dense_3_bias_v:d
Nassignvariableop_59_adam_transformer_block_multi_head_attention_query_kernel_v:@@^
Lassignvariableop_60_adam_transformer_block_multi_head_attention_query_bias_v:@b
Lassignvariableop_61_adam_transformer_block_multi_head_attention_key_kernel_v:@@\
Jassignvariableop_62_adam_transformer_block_multi_head_attention_key_bias_v:@d
Nassignvariableop_63_adam_transformer_block_multi_head_attention_value_kernel_v:@@^
Lassignvariableop_64_adam_transformer_block_multi_head_attention_value_bias_v:@o
Yassignvariableop_65_adam_transformer_block_multi_head_attention_attention_output_kernel_v:@@e
Wassignvariableop_66_adam_transformer_block_multi_head_attention_attention_output_bias_v:@:
'assignvariableop_67_adam_dense_kernel_v:	@�4
%assignvariableop_68_adam_dense_bias_v:	�<
)assignvariableop_69_adam_dense_1_kernel_v:	�@5
'assignvariableop_70_adam_dense_1_bias_v:@T
Fassignvariableop_71_adam_transformer_block_layer_normalization_gamma_v:@S
Eassignvariableop_72_adam_transformer_block_layer_normalization_beta_v:@V
Hassignvariableop_73_adam_transformer_block_layer_normalization_1_gamma_v:@U
Gassignvariableop_74_adam_transformer_block_layer_normalization_1_beta_v:@
identity_76��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_8�AssignVariableOp_9�%
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*�$
value�$B�$LB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*�
value�B�LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp*assignvariableop_batch_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_batch_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp2assignvariableop_2_batch_normalization_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp6assignvariableop_3_batch_normalization_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpGassignvariableop_13_transformer_block_multi_head_attention_query_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpEassignvariableop_14_transformer_block_multi_head_attention_query_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpEassignvariableop_15_transformer_block_multi_head_attention_key_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpCassignvariableop_16_transformer_block_multi_head_attention_key_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpGassignvariableop_17_transformer_block_multi_head_attention_value_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpEassignvariableop_18_transformer_block_multi_head_attention_value_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpRassignvariableop_19_transformer_block_multi_head_attention_attention_output_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpPassignvariableop_20_transformer_block_multi_head_attention_attention_output_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_dense_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp"assignvariableop_23_dense_1_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp assignvariableop_24_dense_1_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp?assignvariableop_25_transformer_block_layer_normalization_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp>assignvariableop_26_transformer_block_layer_normalization_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOpAassignvariableop_27_transformer_block_layer_normalization_1_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp@assignvariableop_28_transformer_block_layer_normalization_1_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_batch_normalization_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp3assignvariableop_32_adam_batch_normalization_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_2_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_2_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_3_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_3_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOpNassignvariableop_37_adam_transformer_block_multi_head_attention_query_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOpLassignvariableop_38_adam_transformer_block_multi_head_attention_query_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOpLassignvariableop_39_adam_transformer_block_multi_head_attention_key_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOpJassignvariableop_40_adam_transformer_block_multi_head_attention_key_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOpNassignvariableop_41_adam_transformer_block_multi_head_attention_value_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOpLassignvariableop_42_adam_transformer_block_multi_head_attention_value_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOpYassignvariableop_43_adam_transformer_block_multi_head_attention_attention_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOpWassignvariableop_44_adam_transformer_block_multi_head_attention_attention_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_dense_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_dense_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOpFassignvariableop_49_adam_transformer_block_layer_normalization_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOpEassignvariableop_50_adam_transformer_block_layer_normalization_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOpHassignvariableop_51_adam_transformer_block_layer_normalization_1_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOpGassignvariableop_52_adam_transformer_block_layer_normalization_1_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp4assignvariableop_53_adam_batch_normalization_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOp3assignvariableop_54_adam_batch_normalization_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55�
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_2_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56�
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_2_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_3_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58�
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_3_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59�
AssignVariableOp_59AssignVariableOpNassignvariableop_59_adam_transformer_block_multi_head_attention_query_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60�
AssignVariableOp_60AssignVariableOpLassignvariableop_60_adam_transformer_block_multi_head_attention_query_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61�
AssignVariableOp_61AssignVariableOpLassignvariableop_61_adam_transformer_block_multi_head_attention_key_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62�
AssignVariableOp_62AssignVariableOpJassignvariableop_62_adam_transformer_block_multi_head_attention_key_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63�
AssignVariableOp_63AssignVariableOpNassignvariableop_63_adam_transformer_block_multi_head_attention_value_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64�
AssignVariableOp_64AssignVariableOpLassignvariableop_64_adam_transformer_block_multi_head_attention_value_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65�
AssignVariableOp_65AssignVariableOpYassignvariableop_65_adam_transformer_block_multi_head_attention_attention_output_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66�
AssignVariableOp_66AssignVariableOpWassignvariableop_66_adam_transformer_block_multi_head_attention_attention_output_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67�
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_dense_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68�
AssignVariableOp_68AssignVariableOp%assignvariableop_68_adam_dense_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69�
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_1_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70�
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_1_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71�
AssignVariableOp_71AssignVariableOpFassignvariableop_71_adam_transformer_block_layer_normalization_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72�
AssignVariableOp_72AssignVariableOpEassignvariableop_72_adam_transformer_block_layer_normalization_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73�
AssignVariableOp_73AssignVariableOpHassignvariableop_73_adam_transformer_block_layer_normalization_1_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74�
AssignVariableOp_74AssignVariableOpGassignvariableop_74_adam_transformer_block_layer_normalization_1_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_749
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_75�
Identity_76IdentityIdentity_75:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_76"#
identity_76Identity_76:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99409

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_101651

inputs0
matmul_readvariableop_resource:Hd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Hd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������d2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������H
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_101618

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������@:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99026

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul�
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_100625
inputs_0
inputs_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@ 

unknown_10:@@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:	@�

unknown_15:	�

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:Hd

unknown_21:d

unknown_22:d

unknown_23:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1002142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:)%
#
_output_shapes
:�@
� 
�
C__inference_dense_1_layer_call_and_return_conditional_losses_101916

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:�����������2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_dense_2_layer_call_fn_101640

inputs
unknown:Hd
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_996342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������H: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������H
 
_user_specified_nameinputs
� 
�
B__inference_dense_1_layer_call_and_return_conditional_losses_99238

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:�����������2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_3_layer_call_fn_101661

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_997472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_101612

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
U
9__inference_global_average_pooling1d_layer_call_fn_101606

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_996122
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������@:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_99002
input_1
input_2I
;model_batch_normalization_batchnorm_readvariableop_resource:@M
?model_batch_normalization_batchnorm_mul_readvariableop_resource:@K
=model_batch_normalization_batchnorm_readvariableop_1_resource:@K
=model_batch_normalization_batchnorm_readvariableop_2_resource:@#
model_position_embedding2_98850n
Xmodel_transformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:@@`
Nmodel_transformer_block_multi_head_attention_query_add_readvariableop_resource:@l
Vmodel_transformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:@@^
Lmodel_transformer_block_multi_head_attention_key_add_readvariableop_resource:@n
Xmodel_transformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:@@`
Nmodel_transformer_block_multi_head_attention_value_add_readvariableop_resource:@y
cmodel_transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@g
Ymodel_transformer_block_multi_head_attention_attention_output_add_readvariableop_resource:@_
Qmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:@[
Mmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource:@]
Jmodel_transformer_block_sequential_dense_tensordot_readvariableop_resource:	@�W
Hmodel_transformer_block_sequential_dense_biasadd_readvariableop_resource:	�_
Lmodel_transformer_block_sequential_dense_1_tensordot_readvariableop_resource:	�@X
Jmodel_transformer_block_sequential_dense_1_biasadd_readvariableop_resource:@a
Smodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:@]
Omodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource:@>
,model_dense_2_matmul_readvariableop_resource:Hd;
-model_dense_2_biasadd_readvariableop_resource:d>
,model_dense_3_matmul_readvariableop_resource:d;
-model_dense_3_biasadd_readvariableop_resource:
identity��2model/batch_normalization/batchnorm/ReadVariableOp�4model/batch_normalization/batchnorm/ReadVariableOp_1�4model/batch_normalization/batchnorm/ReadVariableOp_2�6model/batch_normalization/batchnorm/mul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp�$model/dense_3/BiasAdd/ReadVariableOp�#model/dense_3/MatMul/ReadVariableOp�Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp�Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Pmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp�Zmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�Cmodel/transformer_block/multi_head_attention/key/add/ReadVariableOp�Mmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp�Emodel/transformer_block/multi_head_attention/query/add/ReadVariableOp�Omodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp�Emodel/transformer_block/multi_head_attention/value/add/ReadVariableOp�Omodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp�?model/transformer_block/sequential/dense/BiasAdd/ReadVariableOp�Amodel/transformer_block/sequential/dense/Tensordot/ReadVariableOp�Amodel/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp�Cmodel/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp�
2model/batch_normalization/batchnorm/ReadVariableOpReadVariableOp;model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype024
2model/batch_normalization/batchnorm/ReadVariableOp�
)model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2+
)model/batch_normalization/batchnorm/add/y�
'model/batch_normalization/batchnorm/addAddV2:model/batch_normalization/batchnorm/ReadVariableOp:value:02model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2)
'model/batch_normalization/batchnorm/add�
)model/batch_normalization/batchnorm/RsqrtRsqrt+model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:@2+
)model/batch_normalization/batchnorm/Rsqrt�
6model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype028
6model/batch_normalization/batchnorm/mul/ReadVariableOp�
'model/batch_normalization/batchnorm/mulMul-model/batch_normalization/batchnorm/Rsqrt:y:0>model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2)
'model/batch_normalization/batchnorm/mul�
)model/batch_normalization/batchnorm/mul_1Mulinput_1+model/batch_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2+
)model/batch_normalization/batchnorm/mul_1�
4model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_1�
)model/batch_normalization/batchnorm/mul_2Mul<model/batch_normalization/batchnorm/ReadVariableOp_1:value:0+model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:@2+
)model/batch_normalization/batchnorm/mul_2�
4model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_2�
'model/batch_normalization/batchnorm/subSub<model/batch_normalization/batchnorm/ReadVariableOp_2:value:0-model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2)
'model/batch_normalization/batchnorm/sub�
)model/batch_normalization/batchnorm/add_1AddV2-model/batch_normalization/batchnorm/mul_1:z:0+model/batch_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2+
)model/batch_normalization/batchnorm/add_1�
model/position_embedding2/ShapeShape-model/batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2!
model/position_embedding2/Shape�
-model/position_embedding2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2/
-model/position_embedding2/strided_slice/stack�
/model/position_embedding2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������21
/model/position_embedding2/strided_slice/stack_1�
/model/position_embedding2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/model/position_embedding2/strided_slice/stack_2�
'model/position_embedding2/strided_sliceStridedSlice(model/position_embedding2/Shape:output:06model/position_embedding2/strided_slice/stack:output:08model/position_embedding2/strided_slice/stack_1:output:08model/position_embedding2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'model/position_embedding2/strided_slice�
 model/position_embedding2/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@2"
 model/position_embedding2/Cast/x�
model/position_embedding2/CastCast)model/position_embedding2/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
model/position_embedding2/Cast�
model/position_embedding2/SqrtSqrt"model/position_embedding2/Cast:y:0*
T0*
_output_shapes
: 2 
model/position_embedding2/Sqrt�
model/position_embedding2/mulMul-model/batch_normalization/batchnorm/add_1:z:0"model/position_embedding2/Sqrt:y:0*
T0*,
_output_shapes
:����������@2
model/position_embedding2/mul�
/model/position_embedding2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/model/position_embedding2/strided_slice_1/stack�
3model/position_embedding2/strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 25
3model/position_embedding2/strided_slice_1/stack_1/0�
3model/position_embedding2/strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : 25
3model/position_embedding2/strided_slice_1/stack_1/2�
1model/position_embedding2/strided_slice_1/stack_1Pack<model/position_embedding2/strided_slice_1/stack_1/0:output:00model/position_embedding2/strided_slice:output:0<model/position_embedding2/strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:23
1model/position_embedding2/strided_slice_1/stack_1�
1model/position_embedding2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1model/position_embedding2/strided_slice_1/stack_2�
)model/position_embedding2/strided_slice_1StridedSlicemodel_position_embedding2_988508model/position_embedding2/strided_slice_1/stack:output:0:model/position_embedding2/strided_slice_1/stack_1:output:0:model/position_embedding2/strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������@*

begin_mask*
end_mask2+
)model/position_embedding2/strided_slice_1�
model/position_embedding2/addAddV2!model/position_embedding2/mul:z:02model/position_embedding2/strided_slice_1:output:0*
T0*,
_output_shapes
:����������@2
model/position_embedding2/add�
*model/position_embedding2/dropout/IdentityIdentity!model/position_embedding2/add:z:0*
T0*,
_output_shapes
:����������@2,
*model/position_embedding2/dropout/Identity�
Omodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02Q
Omodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp�
@model/transformer_block/multi_head_attention/query/einsum/EinsumEinsum3model/position_embedding2/dropout/Identity:output:0Wmodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2B
@model/transformer_block/multi_head_attention/query/einsum/Einsum�
Emodel/transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpNmodel_transformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02G
Emodel/transformer_block/multi_head_attention/query/add/ReadVariableOp�
6model/transformer_block/multi_head_attention/query/addAddV2Imodel/transformer_block/multi_head_attention/query/einsum/Einsum:output:0Mmodel/transformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@28
6model/transformer_block/multi_head_attention/query/add�
Mmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_transformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp�
>model/transformer_block/multi_head_attention/key/einsum/EinsumEinsum3model/position_embedding2/dropout/Identity:output:0Umodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2@
>model/transformer_block/multi_head_attention/key/einsum/Einsum�
Cmodel/transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpLmodel_transformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Cmodel/transformer_block/multi_head_attention/key/add/ReadVariableOp�
4model/transformer_block/multi_head_attention/key/addAddV2Gmodel/transformer_block/multi_head_attention/key/einsum/Einsum:output:0Kmodel/transformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@26
4model/transformer_block/multi_head_attention/key/add�
Omodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02Q
Omodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp�
@model/transformer_block/multi_head_attention/value/einsum/EinsumEinsum3model/position_embedding2/dropout/Identity:output:0Wmodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2B
@model/transformer_block/multi_head_attention/value/einsum/Einsum�
Emodel/transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpNmodel_transformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02G
Emodel/transformer_block/multi_head_attention/value/add/ReadVariableOp�
6model/transformer_block/multi_head_attention/value/addAddV2Imodel/transformer_block/multi_head_attention/value/einsum/Einsum:output:0Mmodel/transformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@28
6model/transformer_block/multi_head_attention/value/add�
2model/transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >24
2model/transformer_block/multi_head_attention/Mul/y�
0model/transformer_block/multi_head_attention/MulMul:model/transformer_block/multi_head_attention/query/add:z:0;model/transformer_block/multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������@22
0model/transformer_block/multi_head_attention/Mul�
:model/transformer_block/multi_head_attention/einsum/EinsumEinsum8model/transformer_block/multi_head_attention/key/add:z:04model/transformer_block/multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe2<
:model/transformer_block/multi_head_attention/einsum/Einsum�
<model/transformer_block/multi_head_attention/softmax/SoftmaxSoftmaxCmodel/transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:�����������2>
<model/transformer_block/multi_head_attention/softmax/Softmax�
=model/transformer_block/multi_head_attention/dropout/IdentityIdentityFmodel/transformer_block/multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:�����������2?
=model/transformer_block/multi_head_attention/dropout/Identity�
<model/transformer_block/multi_head_attention/einsum_1/EinsumEinsumFmodel/transformer_block/multi_head_attention/dropout/Identity:output:0:model/transformer_block/multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������@*
equationacbe,aecd->abcd2>
<model/transformer_block/multi_head_attention/einsum_1/Einsum�
Zmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpcmodel_transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02\
Zmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�
Kmodel/transformer_block/multi_head_attention/attention_output/einsum/EinsumEinsumEmodel/transformer_block/multi_head_attention/einsum_1/Einsum:output:0bmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������@*
equationabcd,cde->abe2M
Kmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum�
Pmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02R
Pmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp�
Amodel/transformer_block/multi_head_attention/attention_output/addAddV2Tmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Xmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2C
Amodel/transformer_block/multi_head_attention/attention_output/add�
*model/transformer_block/dropout_1/IdentityIdentityEmodel/transformer_block/multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:����������@2,
*model/transformer_block/dropout_1/Identity�
model/transformer_block/addAddV23model/position_embedding2/dropout/Identity:output:03model/transformer_block/dropout_1/Identity:output:0*
T0*,
_output_shapes
:����������@2
model/transformer_block/add�
Jmodel/transformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jmodel/transformer_block/layer_normalization/moments/mean/reduction_indices�
8model/transformer_block/layer_normalization/moments/meanMeanmodel/transformer_block/add:z:0Smodel/transformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2:
8model/transformer_block/layer_normalization/moments/mean�
@model/transformer_block/layer_normalization/moments/StopGradientStopGradientAmodel/transformer_block/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������2B
@model/transformer_block/layer_normalization/moments/StopGradient�
Emodel/transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencemodel/transformer_block/add:z:0Imodel/transformer_block/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2G
Emodel/transformer_block/layer_normalization/moments/SquaredDifference�
Nmodel/transformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Nmodel/transformer_block/layer_normalization/moments/variance/reduction_indices�
<model/transformer_block/layer_normalization/moments/varianceMeanImodel/transformer_block/layer_normalization/moments/SquaredDifference:z:0Wmodel/transformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2>
<model/transformer_block/layer_normalization/moments/variance�
;model/transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52=
;model/transformer_block/layer_normalization/batchnorm/add/y�
9model/transformer_block/layer_normalization/batchnorm/addAddV2Emodel/transformer_block/layer_normalization/moments/variance:output:0Dmodel/transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2;
9model/transformer_block/layer_normalization/batchnorm/add�
;model/transformer_block/layer_normalization/batchnorm/RsqrtRsqrt=model/transformer_block/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2=
;model/transformer_block/layer_normalization/batchnorm/Rsqrt�
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpQmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�
9model/transformer_block/layer_normalization/batchnorm/mulMul?model/transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Pmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2;
9model/transformer_block/layer_normalization/batchnorm/mul�
;model/transformer_block/layer_normalization/batchnorm/mul_1Mulmodel/transformer_block/add:z:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2=
;model/transformer_block/layer_normalization/batchnorm/mul_1�
;model/transformer_block/layer_normalization/batchnorm/mul_2MulAmodel/transformer_block/layer_normalization/moments/mean:output:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2=
;model/transformer_block/layer_normalization/batchnorm/mul_2�
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpMmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp�
9model/transformer_block/layer_normalization/batchnorm/subSubLmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp:value:0?model/transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2;
9model/transformer_block/layer_normalization/batchnorm/sub�
;model/transformer_block/layer_normalization/batchnorm/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/mul_1:z:0=model/transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2=
;model/transformer_block/layer_normalization/batchnorm/add_1�
Amodel/transformer_block/sequential/dense/Tensordot/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02C
Amodel/transformer_block/sequential/dense/Tensordot/ReadVariableOp�
7model/transformer_block/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7model/transformer_block/sequential/dense/Tensordot/axes�
7model/transformer_block/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7model/transformer_block/sequential/dense/Tensordot/free�
8model/transformer_block/sequential/dense/Tensordot/ShapeShape?model/transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8model/transformer_block/sequential/dense/Tensordot/Shape�
@model/transformer_block/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@model/transformer_block/sequential/dense/Tensordot/GatherV2/axis�
;model/transformer_block/sequential/dense/Tensordot/GatherV2GatherV2Amodel/transformer_block/sequential/dense/Tensordot/Shape:output:0@model/transformer_block/sequential/dense/Tensordot/free:output:0Imodel/transformer_block/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;model/transformer_block/sequential/dense/Tensordot/GatherV2�
Bmodel/transformer_block/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Bmodel/transformer_block/sequential/dense/Tensordot/GatherV2_1/axis�
=model/transformer_block/sequential/dense/Tensordot/GatherV2_1GatherV2Amodel/transformer_block/sequential/dense/Tensordot/Shape:output:0@model/transformer_block/sequential/dense/Tensordot/axes:output:0Kmodel/transformer_block/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=model/transformer_block/sequential/dense/Tensordot/GatherV2_1�
8model/transformer_block/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8model/transformer_block/sequential/dense/Tensordot/Const�
7model/transformer_block/sequential/dense/Tensordot/ProdProdDmodel/transformer_block/sequential/dense/Tensordot/GatherV2:output:0Amodel/transformer_block/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7model/transformer_block/sequential/dense/Tensordot/Prod�
:model/transformer_block/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:model/transformer_block/sequential/dense/Tensordot/Const_1�
9model/transformer_block/sequential/dense/Tensordot/Prod_1ProdFmodel/transformer_block/sequential/dense/Tensordot/GatherV2_1:output:0Cmodel/transformer_block/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9model/transformer_block/sequential/dense/Tensordot/Prod_1�
>model/transformer_block/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>model/transformer_block/sequential/dense/Tensordot/concat/axis�
9model/transformer_block/sequential/dense/Tensordot/concatConcatV2@model/transformer_block/sequential/dense/Tensordot/free:output:0@model/transformer_block/sequential/dense/Tensordot/axes:output:0Gmodel/transformer_block/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9model/transformer_block/sequential/dense/Tensordot/concat�
8model/transformer_block/sequential/dense/Tensordot/stackPack@model/transformer_block/sequential/dense/Tensordot/Prod:output:0Bmodel/transformer_block/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8model/transformer_block/sequential/dense/Tensordot/stack�
<model/transformer_block/sequential/dense/Tensordot/transpose	Transpose?model/transformer_block/layer_normalization/batchnorm/add_1:z:0Bmodel/transformer_block/sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@2>
<model/transformer_block/sequential/dense/Tensordot/transpose�
:model/transformer_block/sequential/dense/Tensordot/ReshapeReshape@model/transformer_block/sequential/dense/Tensordot/transpose:y:0Amodel/transformer_block/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2<
:model/transformer_block/sequential/dense/Tensordot/Reshape�
9model/transformer_block/sequential/dense/Tensordot/MatMulMatMulCmodel/transformer_block/sequential/dense/Tensordot/Reshape:output:0Imodel/transformer_block/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2;
9model/transformer_block/sequential/dense/Tensordot/MatMul�
:model/transformer_block/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2<
:model/transformer_block/sequential/dense/Tensordot/Const_2�
@model/transformer_block/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@model/transformer_block/sequential/dense/Tensordot/concat_1/axis�
;model/transformer_block/sequential/dense/Tensordot/concat_1ConcatV2Dmodel/transformer_block/sequential/dense/Tensordot/GatherV2:output:0Cmodel/transformer_block/sequential/dense/Tensordot/Const_2:output:0Imodel/transformer_block/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;model/transformer_block/sequential/dense/Tensordot/concat_1�
2model/transformer_block/sequential/dense/TensordotReshapeCmodel/transformer_block/sequential/dense/Tensordot/MatMul:product:0Dmodel/transformer_block/sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������24
2model/transformer_block/sequential/dense/Tensordot�
?model/transformer_block/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpHmodel_transformer_block_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02A
?model/transformer_block/sequential/dense/BiasAdd/ReadVariableOp�
0model/transformer_block/sequential/dense/BiasAddBiasAdd;model/transformer_block/sequential/dense/Tensordot:output:0Gmodel/transformer_block/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������22
0model/transformer_block/sequential/dense/BiasAdd�
-model/transformer_block/sequential/dense/ReluRelu9model/transformer_block/sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2/
-model/transformer_block/sequential/dense/Relu�
Cmodel/transformer_block/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02E
Cmodel/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp�
9model/transformer_block/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2;
9model/transformer_block/sequential/dense_1/Tensordot/axes�
9model/transformer_block/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model/transformer_block/sequential/dense_1/Tensordot/free�
:model/transformer_block/sequential/dense_1/Tensordot/ShapeShape;model/transformer_block/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2<
:model/transformer_block/sequential/dense_1/Tensordot/Shape�
Bmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Bmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2/axis�
=model/transformer_block/sequential/dense_1/Tensordot/GatherV2GatherV2Cmodel/transformer_block/sequential/dense_1/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_1/Tensordot/free:output:0Kmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=model/transformer_block/sequential/dense_1/Tensordot/GatherV2�
Dmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Dmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis�
?model/transformer_block/sequential/dense_1/Tensordot/GatherV2_1GatherV2Cmodel/transformer_block/sequential/dense_1/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_1/Tensordot/axes:output:0Mmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2A
?model/transformer_block/sequential/dense_1/Tensordot/GatherV2_1�
:model/transformer_block/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2<
:model/transformer_block/sequential/dense_1/Tensordot/Const�
9model/transformer_block/sequential/dense_1/Tensordot/ProdProdFmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0Cmodel/transformer_block/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2;
9model/transformer_block/sequential/dense_1/Tensordot/Prod�
<model/transformer_block/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<model/transformer_block/sequential/dense_1/Tensordot/Const_1�
;model/transformer_block/sequential/dense_1/Tensordot/Prod_1ProdHmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2_1:output:0Emodel/transformer_block/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2=
;model/transformer_block/sequential/dense_1/Tensordot/Prod_1�
@model/transformer_block/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@model/transformer_block/sequential/dense_1/Tensordot/concat/axis�
;model/transformer_block/sequential/dense_1/Tensordot/concatConcatV2Bmodel/transformer_block/sequential/dense_1/Tensordot/free:output:0Bmodel/transformer_block/sequential/dense_1/Tensordot/axes:output:0Imodel/transformer_block/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2=
;model/transformer_block/sequential/dense_1/Tensordot/concat�
:model/transformer_block/sequential/dense_1/Tensordot/stackPackBmodel/transformer_block/sequential/dense_1/Tensordot/Prod:output:0Dmodel/transformer_block/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2<
:model/transformer_block/sequential/dense_1/Tensordot/stack�
>model/transformer_block/sequential/dense_1/Tensordot/transpose	Transpose;model/transformer_block/sequential/dense/Relu:activations:0Dmodel/transformer_block/sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2@
>model/transformer_block/sequential/dense_1/Tensordot/transpose�
<model/transformer_block/sequential/dense_1/Tensordot/ReshapeReshapeBmodel/transformer_block/sequential/dense_1/Tensordot/transpose:y:0Cmodel/transformer_block/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2>
<model/transformer_block/sequential/dense_1/Tensordot/Reshape�
;model/transformer_block/sequential/dense_1/Tensordot/MatMulMatMulEmodel/transformer_block/sequential/dense_1/Tensordot/Reshape:output:0Kmodel/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2=
;model/transformer_block/sequential/dense_1/Tensordot/MatMul�
<model/transformer_block/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2>
<model/transformer_block/sequential/dense_1/Tensordot/Const_2�
Bmodel/transformer_block/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Bmodel/transformer_block/sequential/dense_1/Tensordot/concat_1/axis�
=model/transformer_block/sequential/dense_1/Tensordot/concat_1ConcatV2Fmodel/transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0Emodel/transformer_block/sequential/dense_1/Tensordot/Const_2:output:0Kmodel/transformer_block/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2?
=model/transformer_block/sequential/dense_1/Tensordot/concat_1�
4model/transformer_block/sequential/dense_1/TensordotReshapeEmodel/transformer_block/sequential/dense_1/Tensordot/MatMul:product:0Fmodel/transformer_block/sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@26
4model/transformer_block/sequential/dense_1/Tensordot�
Amodel/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02C
Amodel/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp�
2model/transformer_block/sequential/dense_1/BiasAddBiasAdd=model/transformer_block/sequential/dense_1/Tensordot:output:0Imodel/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@24
2model/transformer_block/sequential/dense_1/BiasAdd�
*model/transformer_block/dropout_2/IdentityIdentity;model/transformer_block/sequential/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������@2,
*model/transformer_block/dropout_2/Identity�
model/transformer_block/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/add_1:z:03model/transformer_block/dropout_2/Identity:output:0*
T0*,
_output_shapes
:����������@2
model/transformer_block/add_1�
Lmodel/transformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Lmodel/transformer_block/layer_normalization_1/moments/mean/reduction_indices�
:model/transformer_block/layer_normalization_1/moments/meanMean!model/transformer_block/add_1:z:0Umodel/transformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2<
:model/transformer_block/layer_normalization_1/moments/mean�
Bmodel/transformer_block/layer_normalization_1/moments/StopGradientStopGradientCmodel/transformer_block/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������2D
Bmodel/transformer_block/layer_normalization_1/moments/StopGradient�
Gmodel/transformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifference!model/transformer_block/add_1:z:0Kmodel/transformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2I
Gmodel/transformer_block/layer_normalization_1/moments/SquaredDifference�
Pmodel/transformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel/transformer_block/layer_normalization_1/moments/variance/reduction_indices�
>model/transformer_block/layer_normalization_1/moments/varianceMeanKmodel/transformer_block/layer_normalization_1/moments/SquaredDifference:z:0Ymodel/transformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2@
>model/transformer_block/layer_normalization_1/moments/variance�
=model/transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52?
=model/transformer_block/layer_normalization_1/batchnorm/add/y�
;model/transformer_block/layer_normalization_1/batchnorm/addAddV2Gmodel/transformer_block/layer_normalization_1/moments/variance:output:0Fmodel/transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2=
;model/transformer_block/layer_normalization_1/batchnorm/add�
=model/transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt?model/transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2?
=model/transformer_block/layer_normalization_1/batchnorm/Rsqrt�
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�
;model/transformer_block/layer_normalization_1/batchnorm/mulMulAmodel/transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Rmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2=
;model/transformer_block/layer_normalization_1/batchnorm/mul�
=model/transformer_block/layer_normalization_1/batchnorm/mul_1Mul!model/transformer_block/add_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2?
=model/transformer_block/layer_normalization_1/batchnorm/mul_1�
=model/transformer_block/layer_normalization_1/batchnorm/mul_2MulCmodel/transformer_block/layer_normalization_1/moments/mean:output:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2?
=model/transformer_block/layer_normalization_1/batchnorm/mul_2�
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpOmodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02H
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�
;model/transformer_block/layer_normalization_1/batchnorm/subSubNmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0Amodel/transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2=
;model/transformer_block/layer_normalization_1/batchnorm/sub�
=model/transformer_block/layer_normalization_1/batchnorm/add_1AddV2Amodel/transformer_block/layer_normalization_1/batchnorm/mul_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2?
=model/transformer_block/layer_normalization_1/batchnorm/add_1�
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :27
5model/global_average_pooling1d/Mean/reduction_indices�
#model/global_average_pooling1d/MeanMeanAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@2%
#model/global_average_pooling1d/Mean�
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axis�
model/concatenate/concatConcatV2,model/global_average_pooling1d/Mean:output:0input_2&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������H2
model/concatenate/concat�
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:Hd*
dtype02%
#model/dense_2/MatMul/ReadVariableOp�
model/dense_2/MatMulMatMul!model/concatenate/concat:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
model/dense_2/MatMul�
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
model/dense_2/BiasAdd�
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2
model/dense_2/Relu�
model/dropout_3/IdentityIdentity model/dense_2/Relu:activations:0*
T0*'
_output_shapes
:���������d2
model/dropout_3/Identity�
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02%
#model/dense_3/MatMul/ReadVariableOp�
model/dense_3/MatMulMatMul!model/dropout_3/Identity:output:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model/dense_3/MatMul�
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_3/BiasAdd/ReadVariableOp�
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model/dense_3/BiasAdd�
IdentityIdentitymodel/dense_3/BiasAdd:output:03^model/batch_normalization/batchnorm/ReadVariableOp5^model/batch_normalization/batchnorm/ReadVariableOp_15^model/batch_normalization/batchnorm/ReadVariableOp_27^model/batch_normalization/batchnorm/mul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOpE^model/transformer_block/layer_normalization/batchnorm/ReadVariableOpI^model/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpG^model/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpK^model/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpQ^model/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp[^model/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpD^model/transformer_block/multi_head_attention/key/add/ReadVariableOpN^model/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpF^model/transformer_block/multi_head_attention/query/add/ReadVariableOpP^model/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpF^model/transformer_block/multi_head_attention/value/add/ReadVariableOpP^model/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp@^model/transformer_block/sequential/dense/BiasAdd/ReadVariableOpB^model/transformer_block/sequential/dense/Tensordot/ReadVariableOpB^model/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpD^model/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 2h
2model/batch_normalization/batchnorm/ReadVariableOp2model/batch_normalization/batchnorm/ReadVariableOp2l
4model/batch_normalization/batchnorm/ReadVariableOp_14model/batch_normalization/batchnorm/ReadVariableOp_12l
4model/batch_normalization/batchnorm/ReadVariableOp_24model/batch_normalization/batchnorm/ReadVariableOp_22p
6model/batch_normalization/batchnorm/mul/ReadVariableOp6model/batch_normalization/batchnorm/mul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2�
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpDmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpHmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpFmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpJmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Pmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpPmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp2�
Zmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpZmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2�
Cmodel/transformer_block/multi_head_attention/key/add/ReadVariableOpCmodel/transformer_block/multi_head_attention/key/add/ReadVariableOp2�
Mmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpMmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2�
Emodel/transformer_block/multi_head_attention/query/add/ReadVariableOpEmodel/transformer_block/multi_head_attention/query/add/ReadVariableOp2�
Omodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpOmodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2�
Emodel/transformer_block/multi_head_attention/value/add/ReadVariableOpEmodel/transformer_block/multi_head_attention/value/add/ReadVariableOp2�
Omodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpOmodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2�
?model/transformer_block/sequential/dense/BiasAdd/ReadVariableOp?model/transformer_block/sequential/dense/BiasAdd/ReadVariableOp2�
Amodel/transformer_block/sequential/dense/Tensordot/ReadVariableOpAmodel/transformer_block/sequential/dense/Tensordot/ReadVariableOp2�
Amodel/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpAmodel/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp2�
Cmodel/transformer_block/sequential/dense_1/Tensordot/ReadVariableOpCmodel/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:U Q
,
_output_shapes
:����������@
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:)%
#
_output_shapes
:�@
�
�
%__inference_model_layer_call_fn_99717
input_1
input_2
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3
	unknown_4:@@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@ 

unknown_10:@@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:	@�

unknown_15:	�

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:Hd

unknown_21:d

unknown_22:d

unknown_23:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_996642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������@
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:)%
#
_output_shapes
:�@
�
�
4__inference_batch_normalization_layer_call_fn_101041

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_990262
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
��
�
L__inference_transformer_block_layer_call_and_return_conditional_losses_99573

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_query_add_readvariableop_resource:@T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:@@F
4multi_head_attention_key_add_readvariableop_resource:@V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_value_add_readvariableop_resource:@a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@O
Amulti_head_attention_attention_output_add_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@E
2sequential_dense_tensordot_readvariableop_resource:	@�?
0sequential_dense_biasadd_readvariableop_resource:	�G
4sequential_dense_1_tensordot_readvariableop_resource:	�@@
2sequential_dense_1_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/Tensordot/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�+sequential/dense_1/Tensordot/ReadVariableOp�
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsum�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/query/add/ReadVariableOp�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/query/add�
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2(
&multi_head_attention/key/einsum/Einsum�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02-
+multi_head_attention/key/add/ReadVariableOp�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/key/add�
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsum�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention/value/add/ReadVariableOp�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention/Mul/y�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������@2
multi_head_attention/Mul�
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/Einsum�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:�����������2&
$multi_head_attention/softmax/Softmax�
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:�����������2'
%multi_head_attention/dropout/Identity�
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������@*
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������@*
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsum�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2+
)multi_head_attention/attention_output/add�
dropout_1/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:����������@2
dropout_1/Identityo
addAddV2inputsdropout_1/Identity:output:0*
T0*,
_output_shapes
:����������@2
add�
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indices�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2"
 layer_normalization/moments/mean�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������2*
(layer_normalization/moments/StopGradient�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2/
-layer_normalization/moments/SquaredDifference�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2&
$layer_normalization/moments/variance�
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52%
#layer_normalization/batchnorm/add/y�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2#
!layer_normalization/batchnorm/add�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2%
#layer_normalization/batchnorm/Rsqrt�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOp�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/mul�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_1�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/mul_2�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02.
,layer_normalization/batchnorm/ReadVariableOp�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2#
!layer_normalization/batchnorm/sub�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization/batchnorm/add_1�
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02+
)sequential/dense/Tensordot/ReadVariableOp�
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes�
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free�
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape�
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axis�
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2�
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axis�
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1�
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/Const�
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod�
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1�
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1�
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis�
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concat�
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stack�
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@2&
$sequential/dense/Tensordot/transpose�
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"sequential/dense/Tensordot/Reshape�
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/dense/Tensordot/MatMul�
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2$
"sequential/dense/Tensordot/Const_2�
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis�
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1�
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Tensordot�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2
sequential/dense/BiasAdd�
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2
sequential/dense/Relu�
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp�
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes�
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free�
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape�
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axis�
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2�
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axis�
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1�
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/Const�
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod�
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1�
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1�
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis�
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concat�
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stack�
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2(
&sequential/dense_1/Tensordot/transpose�
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2&
$sequential/dense_1/Tensordot/Reshape�
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#sequential/dense_1/Tensordot/MatMul�
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2&
$sequential/dense_1/Tensordot/Const_2�
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis�
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1�
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/Tensordot�
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp�
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2
sequential/dense_1/BiasAdd�
dropout_2/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������@2
dropout_2/Identity�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_2/Identity:output:0*
T0*,
_output_shapes
:����������@2
add_1�
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indices�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2$
"layer_normalization_1/moments/mean�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������2,
*layer_normalization_1/moments/StopGradient�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@21
/layer_normalization_1/moments/SquaredDifference�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2(
&layer_normalization_1/moments/variance�
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�52'
%layer_normalization_1/batchnorm/add/y�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������2%
#layer_normalization_1/batchnorm/add�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������2'
%layer_normalization_1/batchnorm/Rsqrt�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOp�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/mul�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_1�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/mul_2�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_1/batchnorm/ReadVariableOp�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@2%
#layer_normalization_1/batchnorm/sub�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2'
%layer_normalization_1/batchnorm/add_1�
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�	
�
B__inference_dense_3_layer_call_and_return_conditional_losses_99657

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_101846

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_992022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
��
�
A__inference_model_layer_call_and_return_conditional_losses_101028
inputs_0
inputs_1I
;batch_normalization_assignmovingavg_readvariableop_resource:@K
=batch_normalization_assignmovingavg_1_readvariableop_resource:@G
9batch_normalization_batchnorm_mul_readvariableop_resource:@C
5batch_normalization_batchnorm_readvariableop_resource:@
position_embedding2_100849h
Rtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:@@Z
Htransformer_block_multi_head_attention_query_add_readvariableop_resource:@f
Ptransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:@@X
Ftransformer_block_multi_head_attention_key_add_readvariableop_resource:@h
Rtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:@@Z
Htransformer_block_multi_head_attention_value_add_readvariableop_resource:@s
]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@a
Stransformer_block_multi_head_attention_attention_output_add_readvariableop_resource:@Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:@U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:@W
Dtransformer_block_sequential_dense_tensordot_readvariableop_resource:	@�Q
Btransformer_block_sequential_dense_biasadd_readvariableop_resource:	�Y
Ftransformer_block_sequential_dense_1_tensordot_readvariableop_resource:	�@R
Dtransformer_block_sequential_dense_1_biasadd_readvariableop_resource:@[
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:@W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:Hd5
'dense_2_biasadd_readvariableop_resource:d8
&dense_3_matmul_readvariableop_resource:d5
'dense_3_biasadd_readvariableop_resource:
identity��#batch_normalization/AssignMovingAvg�2batch_normalization/AssignMovingAvg/ReadVariableOp�%batch_normalization/AssignMovingAvg_1�4batch_normalization/AssignMovingAvg_1/ReadVariableOp�,batch_normalization/batchnorm/ReadVariableOp�0batch_normalization/batchnorm/mul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�>transformer_block/layer_normalization/batchnorm/ReadVariableOp�Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp�Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�=transformer_block/multi_head_attention/key/add/ReadVariableOp�Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp�?transformer_block/multi_head_attention/query/add/ReadVariableOp�Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp�?transformer_block/multi_head_attention/value/add/ReadVariableOp�Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp�9transformer_block/sequential/dense/BiasAdd/ReadVariableOp�;transformer_block/sequential/dense/Tensordot/ReadVariableOp�;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp�
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       24
2batch_normalization/moments/mean/reduction_indices�
 batch_normalization/moments/meanMeaninputs_0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2"
 batch_normalization/moments/mean�
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*"
_output_shapes
:@2*
(batch_normalization/moments/StopGradient�
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceinputs_01batch_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2/
-batch_normalization/moments/SquaredDifference�
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization/moments/variance/reduction_indices�
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2&
$batch_normalization/moments/variance�
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze�
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1�
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2+
)batch_normalization/AssignMovingAvg/decay�
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp�
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes
:@2)
'batch_normalization/AssignMovingAvg/sub�
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2)
'batch_normalization/AssignMovingAvg/mul�
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg�
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2-
+batch_normalization/AssignMovingAvg_1/decay�
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOp�
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2+
)batch_normalization/AssignMovingAvg_1/sub�
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2+
)batch_normalization/AssignMovingAvg_1/mul�
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1�
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2%
#batch_normalization/batchnorm/add/y�
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2#
!batch_normalization/batchnorm/add�
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:@2%
#batch_normalization/batchnorm/Rsqrt�
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp�
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2#
!batch_normalization/batchnorm/mul�
#batch_normalization/batchnorm/mul_1Mulinputs_0%batch_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2%
#batch_normalization/batchnorm/mul_1�
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:@2%
#batch_normalization/batchnorm/mul_2�
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp�
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2#
!batch_normalization/batchnorm/sub�
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2%
#batch_normalization/batchnorm/add_1�
position_embedding2/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
position_embedding2/Shape�
'position_embedding2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2)
'position_embedding2/strided_slice/stack�
)position_embedding2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2+
)position_embedding2/strided_slice/stack_1�
)position_embedding2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)position_embedding2/strided_slice/stack_2�
!position_embedding2/strided_sliceStridedSlice"position_embedding2/Shape:output:00position_embedding2/strided_slice/stack:output:02position_embedding2/strided_slice/stack_1:output:02position_embedding2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!position_embedding2/strided_slicez
position_embedding2/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@2
position_embedding2/Cast/x�
position_embedding2/CastCast#position_embedding2/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
position_embedding2/Cast{
position_embedding2/SqrtSqrtposition_embedding2/Cast:y:0*
T0*
_output_shapes
: 2
position_embedding2/Sqrt�
position_embedding2/mulMul'batch_normalization/batchnorm/add_1:z:0position_embedding2/Sqrt:y:0*
T0*,
_output_shapes
:����������@2
position_embedding2/mul�
)position_embedding2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2+
)position_embedding2/strided_slice_1/stack�
-position_embedding2/strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 2/
-position_embedding2/strided_slice_1/stack_1/0�
-position_embedding2/strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : 2/
-position_embedding2/strided_slice_1/stack_1/2�
+position_embedding2/strided_slice_1/stack_1Pack6position_embedding2/strided_slice_1/stack_1/0:output:0*position_embedding2/strided_slice:output:06position_embedding2/strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:2-
+position_embedding2/strided_slice_1/stack_1�
+position_embedding2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2-
+position_embedding2/strided_slice_1/stack_2�
#position_embedding2/strided_slice_1StridedSliceposition_embedding2_1008492position_embedding2/strided_slice_1/stack:output:04position_embedding2/strided_slice_1/stack_1:output:04position_embedding2/strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������@*

begin_mask*
end_mask2%
#position_embedding2/strided_slice_1�
position_embedding2/addAddV2position_embedding2/mul:z:0,position_embedding2/strided_slice_1:output:0*
T0*,
_output_shapes
:����������@2
position_embedding2/add�
)position_embedding2/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2+
)position_embedding2/dropout/dropout/Const�
'position_embedding2/dropout/dropout/MulMulposition_embedding2/add:z:02position_embedding2/dropout/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2)
'position_embedding2/dropout/dropout/Mul�
)position_embedding2/dropout/dropout/ShapeShapeposition_embedding2/add:z:0*
T0*
_output_shapes
:2+
)position_embedding2/dropout/dropout/Shape�
@position_embedding2/dropout/dropout/random_uniform/RandomUniformRandomUniform2position_embedding2/dropout/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype02B
@position_embedding2/dropout/dropout/random_uniform/RandomUniform�
2position_embedding2/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=24
2position_embedding2/dropout/dropout/GreaterEqual/y�
0position_embedding2/dropout/dropout/GreaterEqualGreaterEqualIposition_embedding2/dropout/dropout/random_uniform/RandomUniform:output:0;position_embedding2/dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@22
0position_embedding2/dropout/dropout/GreaterEqual�
(position_embedding2/dropout/dropout/CastCast4position_embedding2/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2*
(position_embedding2/dropout/dropout/Cast�
)position_embedding2/dropout/dropout/Mul_1Mul+position_embedding2/dropout/dropout/Mul:z:0,position_embedding2/dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2+
)position_embedding2/dropout/dropout/Mul_1�
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02K
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp�
:transformer_block/multi_head_attention/query/einsum/EinsumEinsum-position_embedding2/dropout/dropout/Mul_1:z:0Qtransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2<
:transformer_block/multi_head_attention/query/einsum/Einsum�
?transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02A
?transformer_block/multi_head_attention/query/add/ReadVariableOp�
0transformer_block/multi_head_attention/query/addAddV2Ctransformer_block/multi_head_attention/query/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@22
0transformer_block/multi_head_attention/query/add�
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02I
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp�
8transformer_block/multi_head_attention/key/einsum/EinsumEinsum-position_embedding2/dropout/dropout/Mul_1:z:0Otransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2:
8transformer_block/multi_head_attention/key/einsum/Einsum�
=transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02?
=transformer_block/multi_head_attention/key/add/ReadVariableOp�
.transformer_block/multi_head_attention/key/addAddV2Atransformer_block/multi_head_attention/key/einsum/Einsum:output:0Etransformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@20
.transformer_block/multi_head_attention/key/add�
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02K
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp�
:transformer_block/multi_head_attention/value/einsum/EinsumEinsum-position_embedding2/dropout/dropout/Mul_1:z:0Qtransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������@*
equationabc,cde->abde2<
:transformer_block/multi_head_attention/value/einsum/Einsum�
?transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02A
?transformer_block/multi_head_attention/value/add/ReadVariableOp�
0transformer_block/multi_head_attention/value/addAddV2Ctransformer_block/multi_head_attention/value/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@22
0transformer_block/multi_head_attention/value/add�
,transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2.
,transformer_block/multi_head_attention/Mul/y�
*transformer_block/multi_head_attention/MulMul4transformer_block/multi_head_attention/query/add:z:05transformer_block/multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������@2,
*transformer_block/multi_head_attention/Mul�
4transformer_block/multi_head_attention/einsum/EinsumEinsum2transformer_block/multi_head_attention/key/add:z:0.transformer_block/multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe26
4transformer_block/multi_head_attention/einsum/Einsum�
6transformer_block/multi_head_attention/softmax/SoftmaxSoftmax=transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:�����������28
6transformer_block/multi_head_attention/softmax/Softmax�
6transformer_block/multi_head_attention/einsum_1/EinsumEinsum@transformer_block/multi_head_attention/softmax/Softmax:softmax:04transformer_block/multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������@*
equationacbe,aecd->abcd28
6transformer_block/multi_head_attention/einsum_1/Einsum�
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02V
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumEinsum?transformer_block/multi_head_attention/einsum_1/Einsum:output:0\transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������@*
equationabcd,cde->abe2G
Etransformer_block/multi_head_attention/attention_output/einsum/Einsum�
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp�
;transformer_block/multi_head_attention/attention_output/addAddV2Ntransformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Rtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2=
;transformer_block/multi_head_attention/attention_output/add�
)transformer_block/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2+
)transformer_block/dropout_1/dropout/Const�
'transformer_block/dropout_1/dropout/MulMul?transformer_block/multi_head_attention/attention_output/add:z:02transformer_block/dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2)
'transformer_block/dropout_1/dropout/Mul�
)transformer_block/dropout_1/dropout/ShapeShape?transformer_block/multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:2+
)transformer_block/dropout_1/dropout/Shape�
@transformer_block/dropout_1/dropout/random_uniform/RandomUniformRandomUniform2transformer_block/dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype02B
@transformer_block/dropout_1/dropout/random_uniform/RandomUniform�
2transformer_block/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=24
2transformer_block/dropout_1/dropout/GreaterEqual/y�
0transformer_block/dropout_1/dropout/GreaterEqualGreaterEqualItransformer_block/dropout_1/dropout/random_uniform/RandomUniform:output:0;transformer_block/dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@22
0transformer_block/dropout_1/dropout/GreaterEqual�
(transformer_block/dropout_1/dropout/CastCast4transformer_block/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2*
(transformer_block/dropout_1/dropout/Cast�
)transformer_block/dropout_1/dropout/Mul_1Mul+transformer_block/dropout_1/dropout/Mul:z:0,transformer_block/dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2+
)transformer_block/dropout_1/dropout/Mul_1�
transformer_block/addAddV2-position_embedding2/dropout/dropout/Mul_1:z:0-transformer_block/dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2
transformer_block/add�
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2F
Dtransformer_block/layer_normalization/moments/mean/reduction_indices�
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(24
2transformer_block/layer_normalization/moments/mean�
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������2<
:transformer_block/layer_normalization/moments/StopGradient�
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2A
?transformer_block/layer_normalization/moments/SquaredDifference�
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block/layer_normalization/moments/variance/reduction_indices�
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(28
6transformer_block/layer_normalization/moments/variance�
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�527
5transformer_block/layer_normalization/batchnorm/add/y�
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������25
3transformer_block/layer_normalization/batchnorm/add�
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������27
5transformer_block/layer_normalization/batchnorm/Rsqrt�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@25
3transformer_block/layer_normalization/batchnorm/mul�
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization/batchnorm/mul_1�
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization/batchnorm/mul_2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02@
>transformer_block/layer_normalization/batchnorm/ReadVariableOp�
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@25
3transformer_block/layer_normalization/batchnorm/sub�
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization/batchnorm/add_1�
;transformer_block/sequential/dense/Tensordot/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02=
;transformer_block/sequential/dense/Tensordot/ReadVariableOp�
1transformer_block/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:23
1transformer_block/sequential/dense/Tensordot/axes�
1transformer_block/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       23
1transformer_block/sequential/dense/Tensordot/free�
2transformer_block/sequential/dense/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/Shape�
:transformer_block/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/GatherV2/axis�
5transformer_block/sequential/dense/Tensordot/GatherV2GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/free:output:0Ctransformer_block/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/GatherV2�
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axis�
7transformer_block/sequential/dense/Tensordot/GatherV2_1GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Etransformer_block/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense/Tensordot/GatherV2_1�
2transformer_block/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 24
2transformer_block/sequential/dense/Tensordot/Const�
1transformer_block/sequential/dense/Tensordot/ProdProd>transformer_block/sequential/dense/Tensordot/GatherV2:output:0;transformer_block/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 23
1transformer_block/sequential/dense/Tensordot/Prod�
4transformer_block/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense/Tensordot/Const_1�
3transformer_block/sequential/dense/Tensordot/Prod_1Prod@transformer_block/sequential/dense/Tensordot/GatherV2_1:output:0=transformer_block/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense/Tensordot/Prod_1�
8transformer_block/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2:
8transformer_block/sequential/dense/Tensordot/concat/axis�
3transformer_block/sequential/dense/Tensordot/concatConcatV2:transformer_block/sequential/dense/Tensordot/free:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Atransformer_block/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:25
3transformer_block/sequential/dense/Tensordot/concat�
2transformer_block/sequential/dense/Tensordot/stackPack:transformer_block/sequential/dense/Tensordot/Prod:output:0<transformer_block/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/stack�
6transformer_block/sequential/dense/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0<transformer_block/sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@28
6transformer_block/sequential/dense/Tensordot/transpose�
4transformer_block/sequential/dense/Tensordot/ReshapeReshape:transformer_block/sequential/dense/Tensordot/transpose:y:0;transformer_block/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������26
4transformer_block/sequential/dense/Tensordot/Reshape�
3transformer_block/sequential/dense/Tensordot/MatMulMatMul=transformer_block/sequential/dense/Tensordot/Reshape:output:0Ctransformer_block/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������25
3transformer_block/sequential/dense/Tensordot/MatMul�
4transformer_block/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�26
4transformer_block/sequential/dense/Tensordot/Const_2�
:transformer_block/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/concat_1/axis�
5transformer_block/sequential/dense/Tensordot/concat_1ConcatV2>transformer_block/sequential/dense/Tensordot/GatherV2:output:0=transformer_block/sequential/dense/Tensordot/Const_2:output:0Ctransformer_block/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/concat_1�
,transformer_block/sequential/dense/TensordotReshape=transformer_block/sequential/dense/Tensordot/MatMul:product:0>transformer_block/sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2.
,transformer_block/sequential/dense/Tensordot�
9transformer_block/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpBtransformer_block_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp�
*transformer_block/sequential/dense/BiasAddBiasAdd5transformer_block/sequential/dense/Tensordot:output:0Atransformer_block/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2,
*transformer_block/sequential/dense/BiasAdd�
'transformer_block/sequential/dense/ReluRelu3transformer_block/sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2)
'transformer_block/sequential/dense/Relu�
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02?
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp�
3transformer_block/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:25
3transformer_block/sequential/dense_1/Tensordot/axes�
3transformer_block/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       25
3transformer_block/sequential/dense_1/Tensordot/free�
4transformer_block/sequential/dense_1/Tensordot/ShapeShape5transformer_block/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/Shape�
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axis�
7transformer_block/sequential/dense_1/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/free:output:0Etransformer_block/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/GatherV2�
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis�
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Gtransformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2;
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1�
4transformer_block/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense_1/Tensordot/Const�
3transformer_block/sequential/dense_1/Tensordot/ProdProd@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense_1/Tensordot/Prod�
6transformer_block/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 28
6transformer_block/sequential/dense_1/Tensordot/Const_1�
5transformer_block/sequential/dense_1/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_1/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 27
5transformer_block/sequential/dense_1/Tensordot/Prod_1�
:transformer_block/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense_1/Tensordot/concat/axis�
5transformer_block/sequential/dense_1/Tensordot/concatConcatV2<transformer_block/sequential/dense_1/Tensordot/free:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Ctransformer_block/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense_1/Tensordot/concat�
4transformer_block/sequential/dense_1/Tensordot/stackPack<transformer_block/sequential/dense_1/Tensordot/Prod:output:0>transformer_block/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/stack�
8transformer_block/sequential/dense_1/Tensordot/transpose	Transpose5transformer_block/sequential/dense/Relu:activations:0>transformer_block/sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2:
8transformer_block/sequential/dense_1/Tensordot/transpose�
6transformer_block/sequential/dense_1/Tensordot/ReshapeReshape<transformer_block/sequential/dense_1/Tensordot/transpose:y:0=transformer_block/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������28
6transformer_block/sequential/dense_1/Tensordot/Reshape�
5transformer_block/sequential/dense_1/Tensordot/MatMulMatMul?transformer_block/sequential/dense_1/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@27
5transformer_block/sequential/dense_1/Tensordot/MatMul�
6transformer_block/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@28
6transformer_block/sequential/dense_1/Tensordot/Const_2�
<transformer_block/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/concat_1/axis�
7transformer_block/sequential/dense_1/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_1/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/concat_1�
.transformer_block/sequential/dense_1/TensordotReshape?transformer_block/sequential/dense_1/Tensordot/MatMul:product:0@transformer_block/sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@20
.transformer_block/sequential/dense_1/Tensordot�
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp�
,transformer_block/sequential/dense_1/BiasAddBiasAdd7transformer_block/sequential/dense_1/Tensordot:output:0Ctransformer_block/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2.
,transformer_block/sequential/dense_1/BiasAdd�
)transformer_block/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2+
)transformer_block/dropout_2/dropout/Const�
'transformer_block/dropout_2/dropout/MulMul5transformer_block/sequential/dense_1/BiasAdd:output:02transformer_block/dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:����������@2)
'transformer_block/dropout_2/dropout/Mul�
)transformer_block/dropout_2/dropout/ShapeShape5transformer_block/sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2+
)transformer_block/dropout_2/dropout/Shape�
@transformer_block/dropout_2/dropout/random_uniform/RandomUniformRandomUniform2transformer_block/dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:����������@*
dtype02B
@transformer_block/dropout_2/dropout/random_uniform/RandomUniform�
2transformer_block/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=24
2transformer_block/dropout_2/dropout/GreaterEqual/y�
0transformer_block/dropout_2/dropout/GreaterEqualGreaterEqualItransformer_block/dropout_2/dropout/random_uniform/RandomUniform:output:0;transformer_block/dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������@22
0transformer_block/dropout_2/dropout/GreaterEqual�
(transformer_block/dropout_2/dropout/CastCast4transformer_block/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������@2*
(transformer_block/dropout_2/dropout/Cast�
)transformer_block/dropout_2/dropout/Mul_1Mul+transformer_block/dropout_2/dropout/Mul:z:0,transformer_block/dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:����������@2+
)transformer_block/dropout_2/dropout/Mul_1�
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_2/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������@2
transformer_block/add_1�
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2H
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indices�
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(26
4transformer_block/layer_normalization_1/moments/mean�
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������2>
<transformer_block/layer_normalization_1/moments/StopGradient�
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2C
Atransformer_block/layer_normalization_1/moments/SquaredDifference�
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indices�
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(2:
8transformer_block/layer_normalization_1/moments/variance�
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�529
7transformer_block/layer_normalization_1/batchnorm/add/y�
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������27
5transformer_block/layer_normalization_1/batchnorm/add�
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������29
7transformer_block/layer_normalization_1/batchnorm/Rsqrt�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization_1/batchnorm/mul�
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@29
7transformer_block/layer_normalization_1/batchnorm/mul_1�
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������@29
7transformer_block/layer_normalization_1/batchnorm/mul_2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������@27
5transformer_block/layer_normalization_1/batchnorm/sub�
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@29
7transformer_block/layer_normalization_1/batchnorm/add_1�
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices�
global_average_pooling1d/MeanMean;transformer_block/layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@2
global_average_pooling1d/Meant
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis�
concatenate/concatConcatV2&global_average_pooling1d/Mean:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������H2
concatenate/concat�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:Hd*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulconcatenate/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2
dense_2/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_3/dropout/Const�
dropout_3/dropout/MulMuldense_2/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:���������d2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape�
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:���������d*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform�
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_3/dropout/GreaterEqual/y�
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������d2 
dropout_3/dropout/GreaterEqual�
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������d2
dropout_3/dropout/Cast�
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:���������d2
dropout_3/dropout/Mul_1�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAdd�
IdentityIdentitydense_3/BiasAdd:output:0$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpK^transformer_block/multi_head_attention/attention_output/add/ReadVariableOpU^transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp>^transformer_block/multi_head_attention/key/add/ReadVariableOpH^transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/query/add/ReadVariableOpJ^transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/value/add/ReadVariableOpJ^transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:^transformer_block/sequential/dense/BiasAdd/ReadVariableOp<^transformer_block/sequential/dense/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_1/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp2�
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2~
=transformer_block/multi_head_attention/key/add/ReadVariableOp=transformer_block/multi_head_attention/key/add/ReadVariableOp2�
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2�
?transformer_block/multi_head_attention/query/add/ReadVariableOp?transformer_block/multi_head_attention/query/add/ReadVariableOp2�
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2�
?transformer_block/multi_head_attention/value/add/ReadVariableOp?transformer_block/multi_head_attention/value/add/ReadVariableOp2�
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2v
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp9transformer_block/sequential/dense/BiasAdd/ReadVariableOp2z
;transformer_block/sequential/dense/Tensordot/ReadVariableOp;transformer_block/sequential/dense/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:V R
,
_output_shapes
:����������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:)%
#
_output_shapes
:�@
�
u
4__inference_position_embedding2_layer_call_fn_101202
x
unknown
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_position_embedding2_layer_call_and_return_conditional_losses_1000272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������@:�@22
StatefulPartitionedCallStatefulPartitionedCall:O K
,
_output_shapes
:����������@

_user_specified_namex:)%
#
_output_shapes
:�@
�0
�	
@__inference_model_layer_call_and_return_conditional_losses_99664

inputs
inputs_1'
batch_normalization_99410:@'
batch_normalization_99412:@'
batch_normalization_99414:@'
batch_normalization_99416:@
position_embedding2_99443-
transformer_block_99574:@@)
transformer_block_99576:@-
transformer_block_99578:@@)
transformer_block_99580:@-
transformer_block_99582:@@)
transformer_block_99584:@-
transformer_block_99586:@@%
transformer_block_99588:@%
transformer_block_99590:@%
transformer_block_99592:@*
transformer_block_99594:	@�&
transformer_block_99596:	�*
transformer_block_99598:	�@%
transformer_block_99600:@%
transformer_block_99602:@%
transformer_block_99604:@
dense_2_99635:Hd
dense_2_99637:d
dense_3_99658:d
dense_3_99660:
identity��+batch_normalization/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_99410batch_normalization_99412batch_normalization_99414batch_normalization_99416*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_994092-
+batch_normalization/StatefulPartitionedCall�
#position_embedding2/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0position_embedding2_99443*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_position_embedding2_layer_call_and_return_conditional_losses_994422%
#position_embedding2/PartitionedCall�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall,position_embedding2/PartitionedCall:output:0transformer_block_99574transformer_block_99576transformer_block_99578transformer_block_99580transformer_block_99582transformer_block_99584transformer_block_99586transformer_block_99588transformer_block_99590transformer_block_99592transformer_block_99594transformer_block_99596transformer_block_99598transformer_block_99600transformer_block_99602transformer_block_99604*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_995732+
)transformer_block/StatefulPartitionedCall�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_996122*
(global_average_pooling1d/PartitionedCall�
concatenate/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_996212
concatenate/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_99635dense_2_99637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_996342!
dense_2/StatefulPartitionedCall�
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_996452
dropout_3/PartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_99658dense_3_99660*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_996572!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*}
_input_shapesl
j:����������@:���������: : : : :�@: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:)%
#
_output_shapes
:�@
�*
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_100081

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������@2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_99367

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
2__inference_transformer_block_layer_call_fn_101329

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_999522
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
(__inference_dense_3_layer_call_fn_101687

inputs
unknown:d
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_996572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
s
O__inference_position_embedding2_layer_call_and_return_conditional_losses_101225
x
unknown
identity?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@2
Cast/xU
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast?
SqrtSqrtCast:y:0*
T0*
_output_shapes
: 2
SqrtU
mulMulxSqrt:y:0*
T0*,
_output_shapes
:����������@2
mul�
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_1/stackx
strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/0x
strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack_1/2�
strided_slice_1/stack_1Pack"strided_slice_1/stack_1/0:output:0strided_slice:output:0"strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:2
strided_slice_1/stack_1�
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_1/stack_2�
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������@*

begin_mask*
end_mask2
strided_slice_1m
addAddV2mul:z:0strided_slice_1:output:0*
T0*,
_output_shapes
:����������@2
addp
dropout/IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������@2
dropout/Identityr
IdentityIdentitydropout/Identity:output:0*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������@:�@:O K
,
_output_shapes
:����������@

_user_specified_namex:)%
#
_output_shapes
:�@
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_99245

inputs
dense_99203:	@�
dense_99205:	� 
dense_1_99239:	�@
dense_1_99241:@
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_99203dense_99205*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_992022
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_99239dense_1_99241*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_992382!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_99357
dense_input
dense_99346:	@�
dense_99348:	� 
dense_1_99351:	�@
dense_1_99353:@
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_99346dense_99348*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_992022
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_99351dense_1_99353*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_992382!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
,
_output_shapes
:����������@
%
_user_specified_namedense_input
�
�
+__inference_sequential_layer_call_fn_101723

inputs
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_993052
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs
�H
�
F__inference_sequential_layer_call_and_return_conditional_losses_101837

inputs:
'dense_tensordot_readvariableop_resource:	@�4
%dense_biasadd_readvariableop_resource:	�<
)dense_1_tensordot_readvariableop_resource:	�@5
'dense_1_biasadd_readvariableop_resource:@
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������@2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������2
dense/BiasAddp

dense/ReluReludense/BiasAdd:output:0*
T0*-
_output_shapes
:�����������2

dense/Relu�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freez
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:�����������2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������@2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@2
dense_1/BiasAdd�
IdentityIdentitydense_1/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
@
input_15
serving_default_input_1:0����������@
;
input_20
serving_default_input_2:0���������;
dense_30
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�(
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"�$
_tf_keras_network�${"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 210, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "PositionEmbedding2", "config": {"layer was saved without config": true}, "name": "position_embedding2", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]]}, {"class_name": "TransformerBlock", "config": {"layer was saved without config": true}, "name": "transformer_block", "inbound_nodes": [[["position_embedding2", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling1d", "inbound_nodes": [[["transformer_block", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["global_average_pooling1d", 0, 0, {}], ["input_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dropout_3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "shared_object_id": 16, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 210, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 8]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 210, 64]}, {"class_name": "TensorShape", "items": [null, 8]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 210, 64]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 8]}, "float32", "input_2"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0005000000237487257, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 210, 64]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 210, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
�

axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�{"name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 1}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 2}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 4}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 64}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}
�
dropout
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "position_embedding2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "PositionEmbedding2", "config": {"layer was saved without config": true}}
�
att
 ffn
!
layernorm1
"
layernorm2
#dropout1
$dropout2
%	variables
&trainable_variables
'regularization_losses
(	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "transformer_block", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TransformerBlock", "config": {"layer was saved without config": true}}
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "global_average_pooling1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["transformer_block", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["global_average_pooling1d", 0, 0, {}], ["input_2", 0, 0, {}]]], "shared_object_id": 8, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 64]}, {"class_name": "TensorShape", "items": [null, 8]}]}
�	

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 72}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 72]}}
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 12}
�	

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
�
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratem�m�1m�2m�;m�<m�Fm�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�Qm�Rm�Sm�Tm�Um�v�v�1v�2v�;v�<v�Fv�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�Qv�Rv�Sv�Tv�Uv�"
	optimizer
�
0
1
2
3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
120
221
;22
<23"
trackable_list_wrapper
�
0
1
F2
G3
H4
I5
J6
K7
L8
M9
N10
O11
P12
Q13
R14
S15
T16
U17
118
219
;20
<21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables
Wmetrics
Xlayer_metrics
	variables

Ylayers
Zlayer_regularization_losses
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
':%@2batch_normalization/gamma
&:$@2batch_normalization/beta
/:-@ (2batch_normalization/moving_mean
3:1@ (2#batch_normalization/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
[non_trainable_variables
\metrics
]layer_metrics
	variables

^layers
_layer_regularization_losses
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "shared_object_id": 23}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables
emetrics
flayer_metrics
	variables

glayers
hlayer_regularization_losses
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

i_query_dense
j
_key_dense
k_value_dense
l_softmax
m_dropout_layer
n_output_dense
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "multi_head_attention", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MultiHeadAttention", "config": {"name": "multi_head_attention", "trainable": true, "dtype": "float32", "num_heads": 4, "key_dim": 64, "value_dim": 64, "dropout": 0.0, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "query_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}, "key_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}, "value_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}, "shared_object_id": 26}
�
slayer_with_weights-0
slayer-0
tlayer_with_weights-1
tlayer-1
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 210, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 210, 64]}, "float32", "dense_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 210, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}, "shared_object_id": 27}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}]}}}
�
yaxis
	Rgamma
Sbeta
z	variables
{trainable_variables
|regularization_losses
}	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "layer_normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LayerNormalization", "config": {"name": "layer_normalization", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 37}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 38, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}
�
~axis
	Tgamma
Ubeta
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "layer_normalization_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 40}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 41, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "shared_object_id": 42}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "shared_object_id": 43}
�
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15"
trackable_list_wrapper
�
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
%	variables
�layers
 �layer_regularization_losses
&trainable_variables
'regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
)	variables
�layers
 �layer_regularization_losses
*trainable_variables
+regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
-	variables
�layers
 �layer_regularization_losses
.trainable_variables
/regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :Hd2dense_2/kernel
:d2dense_2/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
3	variables
�layers
 �layer_regularization_losses
4trainable_variables
5regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
7	variables
�layers
 �layer_regularization_losses
8trainable_variables
9regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :d2dense_3/kernel
:2dense_3/bias
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
=	variables
�layers
 �layer_regularization_losses
>trainable_variables
?regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
I:G@@23transformer_block/multi_head_attention/query/kernel
C:A@21transformer_block/multi_head_attention/query/bias
G:E@@21transformer_block/multi_head_attention/key/kernel
A:?@2/transformer_block/multi_head_attention/key/bias
I:G@@23transformer_block/multi_head_attention/value/kernel
C:A@21transformer_block/multi_head_attention/value/bias
T:R@@2>transformer_block/multi_head_attention/attention_output/kernel
J:H@2<transformer_block/multi_head_attention/attention_output/bias
:	@�2dense/kernel
:�2
dense/bias
!:	�@2dense_1/kernel
:@2dense_1/bias
9:7@2+transformer_block/layer_normalization/gamma
8:6@2*transformer_block/layer_normalization/beta
;:9@2-transformer_block/layer_normalization_1/gamma
::8@2,transformer_block/layer_normalization_1/beta
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
�
�non_trainable_variables
�metrics
�layer_metrics
`	variables
�layers
 �layer_regularization_losses
atrainable_variables
bregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�partial_output_shape
�full_output_shape

Fkernel
Gbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "EinsumDense", "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 4, 64], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 44, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}
�
�partial_output_shape
�full_output_shape

Hkernel
Ibias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "EinsumDense", "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 4, 64], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 45, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}
�
�partial_output_shape
�full_output_shape

Jkernel
Kbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "EinsumDense", "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 4, 64], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 46, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [3]}}, "shared_object_id": 47}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.0, "noise_shape": null, "seed": null}, "shared_object_id": 48}
�
�partial_output_shape
�full_output_shape

Lkernel
Mbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "EinsumDense", "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 64], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 49, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 4, 64]}}
X
F0
G1
H2
I3
J4
K5
L6
M7"
trackable_list_wrapper
X
F0
G1
H2
I3
J4
K5
L6
M7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
o	variables
�layers
 �layer_regularization_losses
ptrainable_variables
qregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

Nkernel
Obias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 384, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 64]}}
�

Pkernel
Qbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 384}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 210, 384]}}
<
N0
O1
P2
Q3"
trackable_list_wrapper
<
N0
O1
P2
Q3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
u	variables
�layers
 �layer_regularization_losses
vtrainable_variables
wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
z	variables
�layers
 �layer_regularization_losses
{trainable_variables
|regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
0
 1
!2
"3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 51}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
i0
j1
k2
l3
m4
n5"
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�metrics
�layer_metrics
�	variables
�layers
 �layer_regularization_losses
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
,:*@2 Adam/batch_normalization/gamma/m
+:)@2Adam/batch_normalization/beta/m
%:#Hd2Adam/dense_2/kernel/m
:d2Adam/dense_2/bias/m
%:#d2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
N:L@@2:Adam/transformer_block/multi_head_attention/query/kernel/m
H:F@28Adam/transformer_block/multi_head_attention/query/bias/m
L:J@@28Adam/transformer_block/multi_head_attention/key/kernel/m
F:D@26Adam/transformer_block/multi_head_attention/key/bias/m
N:L@@2:Adam/transformer_block/multi_head_attention/value/kernel/m
H:F@28Adam/transformer_block/multi_head_attention/value/bias/m
Y:W@@2EAdam/transformer_block/multi_head_attention/attention_output/kernel/m
O:M@2CAdam/transformer_block/multi_head_attention/attention_output/bias/m
$:"	@�2Adam/dense/kernel/m
:�2Adam/dense/bias/m
&:$	�@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
>:<@22Adam/transformer_block/layer_normalization/gamma/m
=:;@21Adam/transformer_block/layer_normalization/beta/m
@:>@24Adam/transformer_block/layer_normalization_1/gamma/m
?:=@23Adam/transformer_block/layer_normalization_1/beta/m
,:*@2 Adam/batch_normalization/gamma/v
+:)@2Adam/batch_normalization/beta/v
%:#Hd2Adam/dense_2/kernel/v
:d2Adam/dense_2/bias/v
%:#d2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
N:L@@2:Adam/transformer_block/multi_head_attention/query/kernel/v
H:F@28Adam/transformer_block/multi_head_attention/query/bias/v
L:J@@28Adam/transformer_block/multi_head_attention/key/kernel/v
F:D@26Adam/transformer_block/multi_head_attention/key/bias/v
N:L@@2:Adam/transformer_block/multi_head_attention/value/kernel/v
H:F@28Adam/transformer_block/multi_head_attention/value/bias/v
Y:W@@2EAdam/transformer_block/multi_head_attention/attention_output/kernel/v
O:M@2CAdam/transformer_block/multi_head_attention/attention_output/bias/v
$:"	@�2Adam/dense/kernel/v
:�2Adam/dense/bias/v
&:$	�@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
>:<@22Adam/transformer_block/layer_normalization/gamma/v
=:;@21Adam/transformer_block/layer_normalization/beta/v
@:>@24Adam/transformer_block/layer_normalization_1/gamma/v
?:=@23Adam/transformer_block/layer_normalization_1/beta/v
�2�
%__inference_model_layer_call_fn_99717
&__inference_model_layer_call_fn_100569
&__inference_model_layer_call_fn_100625
&__inference_model_layer_call_fn_100323�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_model_layer_call_and_return_conditional_losses_100806
A__inference_model_layer_call_and_return_conditional_losses_101028
A__inference_model_layer_call_and_return_conditional_losses_100386
A__inference_model_layer_call_and_return_conditional_losses_100449�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
 __inference__wrapped_model_99002�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *S�P
N�K
&�#
input_1����������@
!�
input_2���������
�2�
4__inference_batch_normalization_layer_call_fn_101041
4__inference_batch_normalization_layer_call_fn_101054
4__inference_batch_normalization_layer_call_fn_101067
4__inference_batch_normalization_layer_call_fn_101080�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101100
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101134
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101154
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101188�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
4__inference_position_embedding2_layer_call_fn_101195
4__inference_position_embedding2_layer_call_fn_101202�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
O__inference_position_embedding2_layer_call_and_return_conditional_losses_101225
O__inference_position_embedding2_layer_call_and_return_conditional_losses_101255�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
2__inference_transformer_block_layer_call_fn_101292
2__inference_transformer_block_layer_call_fn_101329�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
M__inference_transformer_block_layer_call_and_return_conditional_losses_101456
M__inference_transformer_block_layer_call_and_return_conditional_losses_101596�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
9__inference_global_average_pooling1d_layer_call_fn_101601
9__inference_global_average_pooling1d_layer_call_fn_101606�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_101612
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_101618�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_concatenate_layer_call_fn_101624�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_concatenate_layer_call_and_return_conditional_losses_101631�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_2_layer_call_fn_101640�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_2_layer_call_and_return_conditional_losses_101651�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dropout_3_layer_call_fn_101656
*__inference_dropout_3_layer_call_fn_101661�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_3_layer_call_and_return_conditional_losses_101666
E__inference_dropout_3_layer_call_and_return_conditional_losses_101678�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_dense_3_layer_call_fn_101687�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_3_layer_call_and_return_conditional_losses_101697�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_100513input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_sequential_layer_call_fn_99256
+__inference_sequential_layer_call_fn_101710
+__inference_sequential_layer_call_fn_101723
*__inference_sequential_layer_call_fn_99329�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_sequential_layer_call_and_return_conditional_losses_101780
F__inference_sequential_layer_call_and_return_conditional_losses_101837
E__inference_sequential_layer_call_and_return_conditional_losses_99343
E__inference_sequential_layer_call_and_return_conditional_losses_99357�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_layer_call_fn_101846�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_layer_call_and_return_conditional_losses_101877�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_1_layer_call_fn_101886�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_1_layer_call_and_return_conditional_losses_101916�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
	J
Const�
 __inference__wrapped_model_99002��FGHIJKLMRSNOPQTU12;<]�Z
S�P
N�K
&�#
input_1����������@
!�
input_2���������
� "1�.
,
dense_3!�
dense_3����������
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101100|@�=
6�3
-�*
inputs������������������@
p 
� "2�/
(�%
0������������������@
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101134|@�=
6�3
-�*
inputs������������������@
p
� "2�/
(�%
0������������������@
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101154l8�5
.�+
%�"
inputs����������@
p 
� "*�'
 �
0����������@
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101188l8�5
.�+
%�"
inputs����������@
p
� "*�'
 �
0����������@
� �
4__inference_batch_normalization_layer_call_fn_101041o@�=
6�3
-�*
inputs������������������@
p 
� "%�"������������������@�
4__inference_batch_normalization_layer_call_fn_101054o@�=
6�3
-�*
inputs������������������@
p
� "%�"������������������@�
4__inference_batch_normalization_layer_call_fn_101067_8�5
.�+
%�"
inputs����������@
p 
� "�����������@�
4__inference_batch_normalization_layer_call_fn_101080_8�5
.�+
%�"
inputs����������@
p
� "�����������@�
G__inference_concatenate_layer_call_and_return_conditional_losses_101631�Z�W
P�M
K�H
"�
inputs/0���������@
"�
inputs/1���������
� "%�"
�
0���������H
� �
,__inference_concatenate_layer_call_fn_101624vZ�W
P�M
K�H
"�
inputs/0���������@
"�
inputs/1���������
� "����������H�
C__inference_dense_1_layer_call_and_return_conditional_losses_101916gPQ5�2
+�(
&�#
inputs�����������
� "*�'
 �
0����������@
� �
(__inference_dense_1_layer_call_fn_101886ZPQ5�2
+�(
&�#
inputs�����������
� "�����������@�
C__inference_dense_2_layer_call_and_return_conditional_losses_101651\12/�,
%�"
 �
inputs���������H
� "%�"
�
0���������d
� {
(__inference_dense_2_layer_call_fn_101640O12/�,
%�"
 �
inputs���������H
� "����������d�
C__inference_dense_3_layer_call_and_return_conditional_losses_101697\;</�,
%�"
 �
inputs���������d
� "%�"
�
0���������
� {
(__inference_dense_3_layer_call_fn_101687O;</�,
%�"
 �
inputs���������d
� "�����������
A__inference_dense_layer_call_and_return_conditional_losses_101877gNO4�1
*�'
%�"
inputs����������@
� "+�(
!�
0�����������
� �
&__inference_dense_layer_call_fn_101846ZNO4�1
*�'
%�"
inputs����������@
� "�������������
E__inference_dropout_3_layer_call_and_return_conditional_losses_101666\3�0
)�&
 �
inputs���������d
p 
� "%�"
�
0���������d
� �
E__inference_dropout_3_layer_call_and_return_conditional_losses_101678\3�0
)�&
 �
inputs���������d
p
� "%�"
�
0���������d
� }
*__inference_dropout_3_layer_call_fn_101656O3�0
)�&
 �
inputs���������d
p 
� "����������d}
*__inference_dropout_3_layer_call_fn_101661O3�0
)�&
 �
inputs���������d
p
� "����������d�
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_101612{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_101618a8�5
.�+
%�"
inputs����������@

 
� "%�"
�
0���������@
� �
9__inference_global_average_pooling1d_layer_call_fn_101601nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
9__inference_global_average_pooling1d_layer_call_fn_101606T8�5
.�+
%�"
inputs����������@

 
� "����������@�
A__inference_model_layer_call_and_return_conditional_losses_100386��FGHIJKLMRSNOPQTU12;<e�b
[�X
N�K
&�#
input_1����������@
!�
input_2���������
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_100449��FGHIJKLMRSNOPQTU12;<e�b
[�X
N�K
&�#
input_1����������@
!�
input_2���������
p

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_100806��FGHIJKLMRSNOPQTU12;<g�d
]�Z
P�M
'�$
inputs/0����������@
"�
inputs/1���������
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_101028��FGHIJKLMRSNOPQTU12;<g�d
]�Z
P�M
'�$
inputs/0����������@
"�
inputs/1���������
p

 
� "%�"
�
0���������
� �
&__inference_model_layer_call_fn_100323��FGHIJKLMRSNOPQTU12;<e�b
[�X
N�K
&�#
input_1����������@
!�
input_2���������
p

 
� "�����������
&__inference_model_layer_call_fn_100569��FGHIJKLMRSNOPQTU12;<g�d
]�Z
P�M
'�$
inputs/0����������@
"�
inputs/1���������
p 

 
� "�����������
&__inference_model_layer_call_fn_100625��FGHIJKLMRSNOPQTU12;<g�d
]�Z
P�M
'�$
inputs/0����������@
"�
inputs/1���������
p

 
� "�����������
%__inference_model_layer_call_fn_99717��FGHIJKLMRSNOPQTU12;<e�b
[�X
N�K
&�#
input_1����������@
!�
input_2���������
p 

 
� "�����������
O__inference_position_embedding2_layer_call_and_return_conditional_losses_101225e�3�0
)�&
 �
x����������@
p 
� "*�'
 �
0����������@
� �
O__inference_position_embedding2_layer_call_and_return_conditional_losses_101255e�3�0
)�&
 �
x����������@
p
� "*�'
 �
0����������@
� �
4__inference_position_embedding2_layer_call_fn_101195X�3�0
)�&
 �
x����������@
p 
� "�����������@�
4__inference_position_embedding2_layer_call_fn_101202X�3�0
)�&
 �
x����������@
p
� "�����������@�
F__inference_sequential_layer_call_and_return_conditional_losses_101780pNOPQ<�9
2�/
%�"
inputs����������@
p 

 
� "*�'
 �
0����������@
� �
F__inference_sequential_layer_call_and_return_conditional_losses_101837pNOPQ<�9
2�/
%�"
inputs����������@
p

 
� "*�'
 �
0����������@
� �
E__inference_sequential_layer_call_and_return_conditional_losses_99343uNOPQA�>
7�4
*�'
dense_input����������@
p 

 
� "*�'
 �
0����������@
� �
E__inference_sequential_layer_call_and_return_conditional_losses_99357uNOPQA�>
7�4
*�'
dense_input����������@
p

 
� "*�'
 �
0����������@
� �
+__inference_sequential_layer_call_fn_101710cNOPQ<�9
2�/
%�"
inputs����������@
p 

 
� "�����������@�
+__inference_sequential_layer_call_fn_101723cNOPQ<�9
2�/
%�"
inputs����������@
p

 
� "�����������@�
*__inference_sequential_layer_call_fn_99256hNOPQA�>
7�4
*�'
dense_input����������@
p 

 
� "�����������@�
*__inference_sequential_layer_call_fn_99329hNOPQA�>
7�4
*�'
dense_input����������@
p

 
� "�����������@�
$__inference_signature_wrapper_100513��FGHIJKLMRSNOPQTU12;<n�k
� 
d�a
1
input_1&�#
input_1����������@
,
input_2!�
input_2���������"1�.
,
dense_3!�
dense_3����������
M__inference_transformer_block_layer_call_and_return_conditional_losses_101456xFGHIJKLMRSNOPQTU8�5
.�+
%�"
inputs����������@
p 
� "*�'
 �
0����������@
� �
M__inference_transformer_block_layer_call_and_return_conditional_losses_101596xFGHIJKLMRSNOPQTU8�5
.�+
%�"
inputs����������@
p
� "*�'
 �
0����������@
� �
2__inference_transformer_block_layer_call_fn_101292kFGHIJKLMRSNOPQTU8�5
.�+
%�"
inputs����������@
p 
� "�����������@�
2__inference_transformer_block_layer_call_fn_101329kFGHIJKLMRSNOPQTU8�5
.�+
%�"
inputs����������@
p
� "�����������@