ќ0
П!!
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
М
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
­
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

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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
list(type)(0
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
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
О
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
executor_typestring 
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
і
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8я)
~
conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv1d_2/kernel
w
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*"
_output_shapes
:  *
dtype0
r
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_2/bias
k
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes
: *
dtype0
~
conv1d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	  * 
shared_nameconv1d_3/kernel
w
#conv1d_3/kernel/Read/ReadVariableOpReadVariableOpconv1d_3/kernel*"
_output_shapes
:	  *
dtype0
r
conv1d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_3/bias
k
!conv1d_3/bias/Read/ReadVariableOpReadVariableOpconv1d_3/bias*
_output_shapes
: *
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
: *
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
: *
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0
Ђ
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
: *
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
: *
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
: *
dtype0
Ђ
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
: *
dtype0
{
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
@* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	
@*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:@*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:@@*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:@*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:@*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
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
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
Ц
5token_and_position_embedding_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75token_and_position_embedding_1/embedding_2/embeddings
П
Itoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_2/embeddings*
_output_shapes

: *
dtype0
Ч
5token_and_position_embedding_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	R *F
shared_name75token_and_position_embedding_1/embedding_3/embeddings
Р
Itoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_3/embeddings*
_output_shapes
:	R *
dtype0
Ю
7transformer_block_3/multi_head_attention_3/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_3/multi_head_attention_3/query/kernel
Ч
Ktransformer_block_3/multi_head_attention_3/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_3/multi_head_attention_3/query/kernel*"
_output_shapes
:  *
dtype0
Ц
5transformer_block_3/multi_head_attention_3/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_3/multi_head_attention_3/query/bias
П
Itransformer_block_3/multi_head_attention_3/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_3/multi_head_attention_3/query/bias*
_output_shapes

: *
dtype0
Ъ
5transformer_block_3/multi_head_attention_3/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *F
shared_name75transformer_block_3/multi_head_attention_3/key/kernel
У
Itransformer_block_3/multi_head_attention_3/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_3/multi_head_attention_3/key/kernel*"
_output_shapes
:  *
dtype0
Т
3transformer_block_3/multi_head_attention_3/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *D
shared_name53transformer_block_3/multi_head_attention_3/key/bias
Л
Gtransformer_block_3/multi_head_attention_3/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_3/multi_head_attention_3/key/bias*
_output_shapes

: *
dtype0
Ю
7transformer_block_3/multi_head_attention_3/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_3/multi_head_attention_3/value/kernel
Ч
Ktransformer_block_3/multi_head_attention_3/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_3/multi_head_attention_3/value/kernel*"
_output_shapes
:  *
dtype0
Ц
5transformer_block_3/multi_head_attention_3/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_3/multi_head_attention_3/value/bias
П
Itransformer_block_3/multi_head_attention_3/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_3/multi_head_attention_3/value/bias*
_output_shapes

: *
dtype0
ф
Btransformer_block_3/multi_head_attention_3/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *S
shared_nameDBtransformer_block_3/multi_head_attention_3/attention_output/kernel
н
Vtransformer_block_3/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_3/multi_head_attention_3/attention_output/kernel*"
_output_shapes
:  *
dtype0
и
@transformer_block_3/multi_head_attention_3/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *Q
shared_nameB@transformer_block_3/multi_head_attention_3/attention_output/bias
б
Ttransformer_block_3/multi_head_attention_3/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_3/multi_head_attention_3/attention_output/bias*
_output_shapes
: *
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

: @*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:@*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:@ *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
: *
dtype0
Ж
/transformer_block_3/layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_3/layer_normalization_6/gamma
Џ
Ctransformer_block_3/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_3/layer_normalization_6/gamma*
_output_shapes
: *
dtype0
Д
.transformer_block_3/layer_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_3/layer_normalization_6/beta
­
Btransformer_block_3/layer_normalization_6/beta/Read/ReadVariableOpReadVariableOp.transformer_block_3/layer_normalization_6/beta*
_output_shapes
: *
dtype0
Ж
/transformer_block_3/layer_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_3/layer_normalization_7/gamma
Џ
Ctransformer_block_3/layer_normalization_7/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_3/layer_normalization_7/gamma*
_output_shapes
: *
dtype0
Д
.transformer_block_3/layer_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_3/layer_normalization_7/beta
­
Btransformer_block_3/layer_normalization_7/beta/Read/ReadVariableOpReadVariableOp.transformer_block_3/layer_normalization_7/beta*
_output_shapes
: *
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

SGD/conv1d_2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *-
shared_nameSGD/conv1d_2/kernel/momentum

0SGD/conv1d_2/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d_2/kernel/momentum*"
_output_shapes
:  *
dtype0

SGD/conv1d_2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameSGD/conv1d_2/bias/momentum

.SGD/conv1d_2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d_2/bias/momentum*
_output_shapes
: *
dtype0

SGD/conv1d_3/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	  *-
shared_nameSGD/conv1d_3/kernel/momentum

0SGD/conv1d_3/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d_3/kernel/momentum*"
_output_shapes
:	  *
dtype0

SGD/conv1d_3/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameSGD/conv1d_3/bias/momentum

.SGD/conv1d_3/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d_3/bias/momentum*
_output_shapes
: *
dtype0
Ј
(SGD/batch_normalization_2/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(SGD/batch_normalization_2/gamma/momentum
Ё
<SGD/batch_normalization_2/gamma/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_2/gamma/momentum*
_output_shapes
: *
dtype0
І
'SGD/batch_normalization_2/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'SGD/batch_normalization_2/beta/momentum

;SGD/batch_normalization_2/beta/momentum/Read/ReadVariableOpReadVariableOp'SGD/batch_normalization_2/beta/momentum*
_output_shapes
: *
dtype0
Ј
(SGD/batch_normalization_3/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(SGD/batch_normalization_3/gamma/momentum
Ё
<SGD/batch_normalization_3/gamma/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_3/gamma/momentum*
_output_shapes
: *
dtype0
І
'SGD/batch_normalization_3/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'SGD/batch_normalization_3/beta/momentum

;SGD/batch_normalization_3/beta/momentum/Read/ReadVariableOpReadVariableOp'SGD/batch_normalization_3/beta/momentum*
_output_shapes
: *
dtype0

SGD/dense_11/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
@*-
shared_nameSGD/dense_11/kernel/momentum

0SGD/dense_11/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_11/kernel/momentum*
_output_shapes
:	
@*
dtype0

SGD/dense_11/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameSGD/dense_11/bias/momentum

.SGD/dense_11/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_11/bias/momentum*
_output_shapes
:@*
dtype0

SGD/dense_12/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*-
shared_nameSGD/dense_12/kernel/momentum

0SGD/dense_12/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_12/kernel/momentum*
_output_shapes

:@@*
dtype0

SGD/dense_12/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameSGD/dense_12/bias/momentum

.SGD/dense_12/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_12/bias/momentum*
_output_shapes
:@*
dtype0

SGD/dense_13/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*-
shared_nameSGD/dense_13/kernel/momentum

0SGD/dense_13/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_13/kernel/momentum*
_output_shapes

:@*
dtype0

SGD/dense_13/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/dense_13/bias/momentum

.SGD/dense_13/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_13/bias/momentum*
_output_shapes
:*
dtype0
р
BSGD/token_and_position_embedding_1/embedding_2/embeddings/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *S
shared_nameDBSGD/token_and_position_embedding_1/embedding_2/embeddings/momentum
й
VSGD/token_and_position_embedding_1/embedding_2/embeddings/momentum/Read/ReadVariableOpReadVariableOpBSGD/token_and_position_embedding_1/embedding_2/embeddings/momentum*
_output_shapes

: *
dtype0
с
BSGD/token_and_position_embedding_1/embedding_3/embeddings/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	R *S
shared_nameDBSGD/token_and_position_embedding_1/embedding_3/embeddings/momentum
к
VSGD/token_and_position_embedding_1/embedding_3/embeddings/momentum/Read/ReadVariableOpReadVariableOpBSGD/token_and_position_embedding_1/embedding_3/embeddings/momentum*
_output_shapes
:	R *
dtype0
ш
DSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *U
shared_nameFDSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentum
с
XSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentum/Read/ReadVariableOpReadVariableOpDSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentum*"
_output_shapes
:  *
dtype0
р
BSGD/transformer_block_3/multi_head_attention_3/query/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *S
shared_nameDBSGD/transformer_block_3/multi_head_attention_3/query/bias/momentum
й
VSGD/transformer_block_3/multi_head_attention_3/query/bias/momentum/Read/ReadVariableOpReadVariableOpBSGD/transformer_block_3/multi_head_attention_3/query/bias/momentum*
_output_shapes

: *
dtype0
ф
BSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *S
shared_nameDBSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentum
н
VSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentum/Read/ReadVariableOpReadVariableOpBSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentum*"
_output_shapes
:  *
dtype0
м
@SGD/transformer_block_3/multi_head_attention_3/key/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *Q
shared_nameB@SGD/transformer_block_3/multi_head_attention_3/key/bias/momentum
е
TSGD/transformer_block_3/multi_head_attention_3/key/bias/momentum/Read/ReadVariableOpReadVariableOp@SGD/transformer_block_3/multi_head_attention_3/key/bias/momentum*
_output_shapes

: *
dtype0
ш
DSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *U
shared_nameFDSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentum
с
XSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentum/Read/ReadVariableOpReadVariableOpDSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentum*"
_output_shapes
:  *
dtype0
р
BSGD/transformer_block_3/multi_head_attention_3/value/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *S
shared_nameDBSGD/transformer_block_3/multi_head_attention_3/value/bias/momentum
й
VSGD/transformer_block_3/multi_head_attention_3/value/bias/momentum/Read/ReadVariableOpReadVariableOpBSGD/transformer_block_3/multi_head_attention_3/value/bias/momentum*
_output_shapes

: *
dtype0
ў
OSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *`
shared_nameQOSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentum
ї
cSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentum/Read/ReadVariableOpReadVariableOpOSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentum*"
_output_shapes
:  *
dtype0
ђ
MSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *^
shared_nameOMSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentum
ы
aSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentum/Read/ReadVariableOpReadVariableOpMSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentum*
_output_shapes
: *
dtype0

SGD/dense_9/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*,
shared_nameSGD/dense_9/kernel/momentum

/SGD/dense_9/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_9/kernel/momentum*
_output_shapes

: @*
dtype0

SGD/dense_9/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameSGD/dense_9/bias/momentum

-SGD/dense_9/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_9/bias/momentum*
_output_shapes
:@*
dtype0

SGD/dense_10/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *-
shared_nameSGD/dense_10/kernel/momentum

0SGD/dense_10/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_10/kernel/momentum*
_output_shapes

:@ *
dtype0

SGD/dense_10/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameSGD/dense_10/bias/momentum

.SGD/dense_10/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_10/bias/momentum*
_output_shapes
: *
dtype0
а
<SGD/transformer_block_3/layer_normalization_6/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *M
shared_name><SGD/transformer_block_3/layer_normalization_6/gamma/momentum
Щ
PSGD/transformer_block_3/layer_normalization_6/gamma/momentum/Read/ReadVariableOpReadVariableOp<SGD/transformer_block_3/layer_normalization_6/gamma/momentum*
_output_shapes
: *
dtype0
Ю
;SGD/transformer_block_3/layer_normalization_6/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *L
shared_name=;SGD/transformer_block_3/layer_normalization_6/beta/momentum
Ч
OSGD/transformer_block_3/layer_normalization_6/beta/momentum/Read/ReadVariableOpReadVariableOp;SGD/transformer_block_3/layer_normalization_6/beta/momentum*
_output_shapes
: *
dtype0
а
<SGD/transformer_block_3/layer_normalization_7/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *M
shared_name><SGD/transformer_block_3/layer_normalization_7/gamma/momentum
Щ
PSGD/transformer_block_3/layer_normalization_7/gamma/momentum/Read/ReadVariableOpReadVariableOp<SGD/transformer_block_3/layer_normalization_7/gamma/momentum*
_output_shapes
: *
dtype0
Ю
;SGD/transformer_block_3/layer_normalization_7/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *L
shared_name=;SGD/transformer_block_3/layer_normalization_7/beta/momentum
Ч
OSGD/transformer_block_3/layer_normalization_7/beta/momentum/Read/ReadVariableOpReadVariableOp;SGD/transformer_block_3/layer_normalization_7/beta/momentum*
_output_shapes
: *
dtype0

NoOpNoOp
ЧГ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Г
valueіВBђВ BъВ
щ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer_with_weights-8
layer-19
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
n
	token_emb
pos_emb
regularization_losses
	variables
trainable_variables
 	keras_api
h

!kernel
"bias
#regularization_losses
$	variables
%trainable_variables
&	keras_api
R
'regularization_losses
(	variables
)trainable_variables
*	keras_api
h

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
R
1regularization_losses
2	variables
3trainable_variables
4	keras_api
R
5regularization_losses
6	variables
7trainable_variables
8	keras_api

9axis
	:gamma
;beta
<moving_mean
=moving_variance
>regularization_losses
?	variables
@trainable_variables
A	keras_api

Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
R
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
 
Oatt
Pffn
Q
layernorm1
R
layernorm2
Sdropout1
Tdropout2
Uregularization_losses
V	variables
Wtrainable_variables
X	keras_api
R
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
 
 
R
]regularization_losses
^	variables
_trainable_variables
`	keras_api
h

akernel
bbias
cregularization_losses
d	variables
etrainable_variables
f	keras_api
R
gregularization_losses
h	variables
itrainable_variables
j	keras_api
h

kkernel
lbias
mregularization_losses
n	variables
otrainable_variables
p	keras_api
R
qregularization_losses
r	variables
strainable_variables
t	keras_api
h

ukernel
vbias
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
ч
	{decay
|learning_rate
}momentum
~iter!momentum"momentum+momentum,momentum:momentum;momentumCmomentumDmomentumamomentumbmomentumkmomentumlmomentumumomentumvmomentummomentum momentumЁmomentumЂmomentumЃmomentumЄmomentumЅmomentumІmomentumЇmomentumЈmomentumЉmomentumЊmomentumЋmomentumЌmomentum­momentumЎmomentumЏmomentumАmomentumБ
 
Ї
0
1
!2
"3
+4
,5
:6
;7
<8
=9
C10
D11
E12
F13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
a30
b31
k32
l33
u34
v35

0
1
!2
"3
+4
,5
:6
;7
C8
D9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
a26
b27
k28
l29
u30
v31
В
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
metrics
layer_metrics
 
f

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
g

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
 

0
1

0
1
В
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
 layers
trainable_variables
Ёmetrics
Ђlayer_metrics
[Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
В
Ѓnon_trainable_variables
#regularization_losses
$	variables
 Єlayer_regularization_losses
Ѕlayers
%trainable_variables
Іmetrics
Їlayer_metrics
 
 
 
В
Јnon_trainable_variables
'regularization_losses
(	variables
 Љlayer_regularization_losses
Њlayers
)trainable_variables
Ћmetrics
Ќlayer_metrics
[Y
VARIABLE_VALUEconv1d_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
В
­non_trainable_variables
-regularization_losses
.	variables
 Ўlayer_regularization_losses
Џlayers
/trainable_variables
Аmetrics
Бlayer_metrics
 
 
 
В
Вnon_trainable_variables
1regularization_losses
2	variables
 Гlayer_regularization_losses
Дlayers
3trainable_variables
Еmetrics
Жlayer_metrics
 
 
 
В
Зnon_trainable_variables
5regularization_losses
6	variables
 Иlayer_regularization_losses
Йlayers
7trainable_variables
Кmetrics
Лlayer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1
<2
=3

:0
;1
В
Мnon_trainable_variables
>regularization_losses
?	variables
 Нlayer_regularization_losses
Оlayers
@trainable_variables
Пmetrics
Рlayer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1
E2
F3

C0
D1
В
Сnon_trainable_variables
Gregularization_losses
H	variables
 Тlayer_regularization_losses
Уlayers
Itrainable_variables
Фmetrics
Хlayer_metrics
 
 
 
В
Цnon_trainable_variables
Kregularization_losses
L	variables
 Чlayer_regularization_losses
Шlayers
Mtrainable_variables
Щmetrics
Ъlayer_metrics
Х
Ы_query_dense
Ь
_key_dense
Э_value_dense
Ю_softmax
Я_dropout_layer
а_output_dense
бregularization_losses
в	variables
гtrainable_variables
д	keras_api
Ј
еlayer_with_weights-0
еlayer-0
жlayer_with_weights-1
жlayer-1
зregularization_losses
и	variables
йtrainable_variables
к	keras_api
x
	лaxis

gamma
	beta
мregularization_losses
н	variables
оtrainable_variables
п	keras_api
x
	рaxis

gamma
	beta
сregularization_losses
т	variables
уtrainable_variables
ф	keras_api
V
хregularization_losses
ц	variables
чtrainable_variables
ш	keras_api
V
щregularization_losses
ъ	variables
ыtrainable_variables
ь	keras_api
 

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
В
эnon_trainable_variables
Uregularization_losses
V	variables
 юlayer_regularization_losses
яlayers
Wtrainable_variables
№metrics
ёlayer_metrics
 
 
 
В
ђnon_trainable_variables
Yregularization_losses
Z	variables
 ѓlayer_regularization_losses
єlayers
[trainable_variables
ѕmetrics
іlayer_metrics
 
 
 
В
їnon_trainable_variables
]regularization_losses
^	variables
 јlayer_regularization_losses
љlayers
_trainable_variables
њmetrics
ћlayer_metrics
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

a0
b1

a0
b1
В
ќnon_trainable_variables
cregularization_losses
d	variables
 §layer_regularization_losses
ўlayers
etrainable_variables
џmetrics
layer_metrics
 
 
 
В
non_trainable_variables
gregularization_losses
h	variables
 layer_regularization_losses
layers
itrainable_variables
metrics
layer_metrics
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

k0
l1

k0
l1
В
non_trainable_variables
mregularization_losses
n	variables
 layer_regularization_losses
layers
otrainable_variables
metrics
layer_metrics
 
 
 
В
non_trainable_variables
qregularization_losses
r	variables
 layer_regularization_losses
layers
strainable_variables
metrics
layer_metrics
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

u0
v1

u0
v1
В
non_trainable_variables
wregularization_losses
x	variables
 layer_regularization_losses
layers
ytrainable_variables
metrics
layer_metrics
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer_block_3/multi_head_attention_3/query/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5transformer_block_3/multi_head_attention_3/query/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5transformer_block_3/multi_head_attention_3/key/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3transformer_block_3/multi_head_attention_3/key/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer_block_3/multi_head_attention_3/value/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5transformer_block_3/multi_head_attention_3/value/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEBtransformer_block_3/multi_head_attention_3/attention_output/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE@transformer_block_3/multi_head_attention_3/attention_output/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_9/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_9/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_10/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_10/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_3/layer_normalization_6/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_3/layer_normalization_6/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_3/layer_normalization_7/gamma'variables/28/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_3/layer_normalization_7/beta'variables/29/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
E2
F3
 

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
10
11
12
13
14
15
16
17
18
19

0
 
 

0

0
Е
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
metrics
layer_metrics
 

0

0
Е
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
metrics
layer_metrics
 
 

0
1
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

<0
=1
 
 
 
 

E0
F1
 
 
 
 
 
 
 
 
 
Ё
 partial_output_shape
Ёfull_output_shape
kernel
	bias
Ђregularization_losses
Ѓ	variables
Єtrainable_variables
Ѕ	keras_api
Ё
Іpartial_output_shape
Їfull_output_shape
kernel
	bias
Јregularization_losses
Љ	variables
Њtrainable_variables
Ћ	keras_api
Ё
Ќpartial_output_shape
­full_output_shape
kernel
	bias
Ўregularization_losses
Џ	variables
Аtrainable_variables
Б	keras_api
V
Вregularization_losses
Г	variables
Дtrainable_variables
Е	keras_api
V
Жregularization_losses
З	variables
Иtrainable_variables
Й	keras_api
Ё
Кpartial_output_shape
Лfull_output_shape
kernel
	bias
Мregularization_losses
Н	variables
Оtrainable_variables
П	keras_api
 
@
0
1
2
3
4
5
6
7
@
0
1
2
3
4
5
6
7
Е
Рnon_trainable_variables
бregularization_losses
в	variables
 Сlayer_regularization_losses
Тlayers
гtrainable_variables
Уmetrics
Фlayer_metrics
n
kernel
	bias
Хregularization_losses
Ц	variables
Чtrainable_variables
Ш	keras_api
n
kernel
	bias
Щregularization_losses
Ъ	variables
Ыtrainable_variables
Ь	keras_api
 
 
0
1
2
3
 
0
1
2
3
Е
Эnon_trainable_variables
зregularization_losses
и	variables
 Юlayer_regularization_losses
Яlayers
йtrainable_variables
аmetrics
бlayer_metrics
 
 

0
1

0
1
Е
вnon_trainable_variables
мregularization_losses
н	variables
 гlayer_regularization_losses
дlayers
оtrainable_variables
еmetrics
жlayer_metrics
 
 

0
1

0
1
Е
зnon_trainable_variables
сregularization_losses
т	variables
 иlayer_regularization_losses
йlayers
уtrainable_variables
кmetrics
лlayer_metrics
 
 
 
Е
мnon_trainable_variables
хregularization_losses
ц	variables
 нlayer_regularization_losses
оlayers
чtrainable_variables
пmetrics
рlayer_metrics
 
 
 
Е
сnon_trainable_variables
щregularization_losses
ъ	variables
 тlayer_regularization_losses
уlayers
ыtrainable_variables
фmetrics
хlayer_metrics
 
 
*
O0
P1
Q2
R3
S4
T5
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
8

цtotal

чcount
ш	variables
щ	keras_api
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

0
1

0
1
Е
ъnon_trainable_variables
Ђregularization_losses
Ѓ	variables
 ыlayer_regularization_losses
ьlayers
Єtrainable_variables
эmetrics
юlayer_metrics
 
 
 

0
1

0
1
Е
яnon_trainable_variables
Јregularization_losses
Љ	variables
 №layer_regularization_losses
ёlayers
Њtrainable_variables
ђmetrics
ѓlayer_metrics
 
 
 

0
1

0
1
Е
єnon_trainable_variables
Ўregularization_losses
Џ	variables
 ѕlayer_regularization_losses
іlayers
Аtrainable_variables
їmetrics
јlayer_metrics
 
 
 
Е
љnon_trainable_variables
Вregularization_losses
Г	variables
 њlayer_regularization_losses
ћlayers
Дtrainable_variables
ќmetrics
§layer_metrics
 
 
 
Е
ўnon_trainable_variables
Жregularization_losses
З	variables
 џlayer_regularization_losses
layers
Иtrainable_variables
metrics
layer_metrics
 
 
 

0
1

0
1
Е
non_trainable_variables
Мregularization_losses
Н	variables
 layer_regularization_losses
layers
Оtrainable_variables
metrics
layer_metrics
 
 
0
Ы0
Ь1
Э2
Ю3
Я4
а5
 
 
 

0
1

0
1
Е
non_trainable_variables
Хregularization_losses
Ц	variables
 layer_regularization_losses
layers
Чtrainable_variables
metrics
layer_metrics
 

0
1

0
1
Е
non_trainable_variables
Щregularization_losses
Ъ	variables
 layer_regularization_losses
layers
Ыtrainable_variables
metrics
layer_metrics
 
 

е0
ж1
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ц0
ч1

ш	variables
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

VARIABLE_VALUESGD/conv1d_2/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/conv1d_2/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/conv1d_3/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/conv1d_3/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(SGD/batch_normalization_2/gamma/momentumXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE'SGD/batch_normalization_2/beta/momentumWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(SGD/batch_normalization_3/gamma/momentumXlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE'SGD/batch_normalization_3/beta/momentumWlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/dense_11/kernel/momentumYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/dense_11/bias/momentumWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/dense_12/kernel/momentumYlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/dense_12/bias/momentumWlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/dense_13/kernel/momentumYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/dense_13/bias/momentumWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Ђ
VARIABLE_VALUEBSGD/token_and_position_embedding_1/embedding_2/embeddings/momentumIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Ђ
VARIABLE_VALUEBSGD/token_and_position_embedding_1/embedding_3/embeddings/momentumIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЅЂ
VARIABLE_VALUEDSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentumJvariables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Ѓ 
VARIABLE_VALUEBSGD/transformer_block_3/multi_head_attention_3/query/bias/momentumJvariables/15/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Ѓ 
VARIABLE_VALUEBSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentumJvariables/16/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Ё
VARIABLE_VALUE@SGD/transformer_block_3/multi_head_attention_3/key/bias/momentumJvariables/17/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЅЂ
VARIABLE_VALUEDSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentumJvariables/18/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Ѓ 
VARIABLE_VALUEBSGD/transformer_block_3/multi_head_attention_3/value/bias/momentumJvariables/19/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
А­
VARIABLE_VALUEOSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentumJvariables/20/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЎЋ
VARIABLE_VALUEMSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentumJvariables/21/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUESGD/dense_9/kernel/momentumJvariables/22/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUESGD/dense_9/bias/momentumJvariables/23/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUESGD/dense_10/kernel/momentumJvariables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUESGD/dense_10/bias/momentumJvariables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE<SGD/transformer_block_3/layer_normalization_6/gamma/momentumJvariables/26/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE;SGD/transformer_block_3/layer_normalization_6/beta/momentumJvariables/27/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE<SGD/transformer_block_3/layer_normalization_7/gamma/momentumJvariables/28/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE;SGD/transformer_block_3/layer_normalization_7/beta/momentumJvariables/29/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_4Placeholder*(
_output_shapes
:џџџџџџџџџR*
dtype0*
shape:џџџџџџџџџR
z
serving_default_input_5Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
|
serving_default_input_6Placeholder*(
_output_shapes
:џџџџџџџџџЕ*
dtype0*
shape:џџџџџџџџџЕ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4serving_default_input_5serving_default_input_65token_and_position_embedding_1/embedding_3/embeddings5token_and_position_embedding_1/embedding_2/embeddingsconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/bias%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/beta%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/beta7transformer_block_3/multi_head_attention_3/query/kernel5transformer_block_3/multi_head_attention_3/query/bias5transformer_block_3/multi_head_attention_3/key/kernel3transformer_block_3/multi_head_attention_3/key/bias7transformer_block_3/multi_head_attention_3/value/kernel5transformer_block_3/multi_head_attention_3/value/biasBtransformer_block_3/multi_head_attention_3/attention_output/kernel@transformer_block_3/multi_head_attention_3/attention_output/bias/transformer_block_3/layer_normalization_6/gamma.transformer_block_3/layer_normalization_6/betadense_9/kerneldense_9/biasdense_10/kerneldense_10/bias/transformer_block_3/layer_normalization_7/gamma.transformer_block_3/layer_normalization_7/betadense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*F
_read_only_resource_inputs(
&$	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_19202
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
П$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOp#conv1d_3/kernel/Read/ReadVariableOp!conv1d_3/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpKtransformer_block_3/multi_head_attention_3/query/kernel/Read/ReadVariableOpItransformer_block_3/multi_head_attention_3/query/bias/Read/ReadVariableOpItransformer_block_3/multi_head_attention_3/key/kernel/Read/ReadVariableOpGtransformer_block_3/multi_head_attention_3/key/bias/Read/ReadVariableOpKtransformer_block_3/multi_head_attention_3/value/kernel/Read/ReadVariableOpItransformer_block_3/multi_head_attention_3/value/bias/Read/ReadVariableOpVtransformer_block_3/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpTtransformer_block_3/multi_head_attention_3/attention_output/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOpCtransformer_block_3/layer_normalization_6/gamma/Read/ReadVariableOpBtransformer_block_3/layer_normalization_6/beta/Read/ReadVariableOpCtransformer_block_3/layer_normalization_7/gamma/Read/ReadVariableOpBtransformer_block_3/layer_normalization_7/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0SGD/conv1d_2/kernel/momentum/Read/ReadVariableOp.SGD/conv1d_2/bias/momentum/Read/ReadVariableOp0SGD/conv1d_3/kernel/momentum/Read/ReadVariableOp.SGD/conv1d_3/bias/momentum/Read/ReadVariableOp<SGD/batch_normalization_2/gamma/momentum/Read/ReadVariableOp;SGD/batch_normalization_2/beta/momentum/Read/ReadVariableOp<SGD/batch_normalization_3/gamma/momentum/Read/ReadVariableOp;SGD/batch_normalization_3/beta/momentum/Read/ReadVariableOp0SGD/dense_11/kernel/momentum/Read/ReadVariableOp.SGD/dense_11/bias/momentum/Read/ReadVariableOp0SGD/dense_12/kernel/momentum/Read/ReadVariableOp.SGD/dense_12/bias/momentum/Read/ReadVariableOp0SGD/dense_13/kernel/momentum/Read/ReadVariableOp.SGD/dense_13/bias/momentum/Read/ReadVariableOpVSGD/token_and_position_embedding_1/embedding_2/embeddings/momentum/Read/ReadVariableOpVSGD/token_and_position_embedding_1/embedding_3/embeddings/momentum/Read/ReadVariableOpXSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentum/Read/ReadVariableOpVSGD/transformer_block_3/multi_head_attention_3/query/bias/momentum/Read/ReadVariableOpVSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentum/Read/ReadVariableOpTSGD/transformer_block_3/multi_head_attention_3/key/bias/momentum/Read/ReadVariableOpXSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentum/Read/ReadVariableOpVSGD/transformer_block_3/multi_head_attention_3/value/bias/momentum/Read/ReadVariableOpcSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentum/Read/ReadVariableOpaSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentum/Read/ReadVariableOp/SGD/dense_9/kernel/momentum/Read/ReadVariableOp-SGD/dense_9/bias/momentum/Read/ReadVariableOp0SGD/dense_10/kernel/momentum/Read/ReadVariableOp.SGD/dense_10/bias/momentum/Read/ReadVariableOpPSGD/transformer_block_3/layer_normalization_6/gamma/momentum/Read/ReadVariableOpOSGD/transformer_block_3/layer_normalization_6/beta/momentum/Read/ReadVariableOpPSGD/transformer_block_3/layer_normalization_7/gamma/momentum/Read/ReadVariableOpOSGD/transformer_block_3/layer_normalization_7/beta/momentum/Read/ReadVariableOpConst*W
TinP
N2L	*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_21292
ђ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancedense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdecaylearning_ratemomentumSGD/iter5token_and_position_embedding_1/embedding_2/embeddings5token_and_position_embedding_1/embedding_3/embeddings7transformer_block_3/multi_head_attention_3/query/kernel5transformer_block_3/multi_head_attention_3/query/bias5transformer_block_3/multi_head_attention_3/key/kernel3transformer_block_3/multi_head_attention_3/key/bias7transformer_block_3/multi_head_attention_3/value/kernel5transformer_block_3/multi_head_attention_3/value/biasBtransformer_block_3/multi_head_attention_3/attention_output/kernel@transformer_block_3/multi_head_attention_3/attention_output/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/bias/transformer_block_3/layer_normalization_6/gamma.transformer_block_3/layer_normalization_6/beta/transformer_block_3/layer_normalization_7/gamma.transformer_block_3/layer_normalization_7/betatotalcountSGD/conv1d_2/kernel/momentumSGD/conv1d_2/bias/momentumSGD/conv1d_3/kernel/momentumSGD/conv1d_3/bias/momentum(SGD/batch_normalization_2/gamma/momentum'SGD/batch_normalization_2/beta/momentum(SGD/batch_normalization_3/gamma/momentum'SGD/batch_normalization_3/beta/momentumSGD/dense_11/kernel/momentumSGD/dense_11/bias/momentumSGD/dense_12/kernel/momentumSGD/dense_12/bias/momentumSGD/dense_13/kernel/momentumSGD/dense_13/bias/momentumBSGD/token_and_position_embedding_1/embedding_2/embeddings/momentumBSGD/token_and_position_embedding_1/embedding_3/embeddings/momentumDSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentumBSGD/transformer_block_3/multi_head_attention_3/query/bias/momentumBSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentum@SGD/transformer_block_3/multi_head_attention_3/key/bias/momentumDSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentumBSGD/transformer_block_3/multi_head_attention_3/value/bias/momentumOSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentumMSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentumSGD/dense_9/kernel/momentumSGD/dense_9/bias/momentumSGD/dense_10/kernel/momentumSGD/dense_10/bias/momentum<SGD/transformer_block_3/layer_normalization_6/gamma/momentum;SGD/transformer_block_3/layer_normalization_6/beta/momentum<SGD/transformer_block_3/layer_normalization_7/gamma/momentum;SGD/transformer_block_3/layer_normalization_7/beta/momentum*V
TinO
M2K*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_21524В&
ы

Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_19939
x&
"embedding_3_embedding_lookup_19926&
"embedding_2_embedding_lookup_19932
identityЂembedding_2/embedding_lookupЂembedding_3/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
range­
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_19926range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/19926*'
_output_shapes
:џџџџџџџџџ *
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/19926*'
_output_shapes
:џџџџџџџџџ 2'
%embedding_3/embedding_lookup/IdentityР
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2)
'embedding_3/embedding_lookup/Identity_1q
embedding_2/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:џџџџџџџџџR2
embedding_2/CastИ
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_19932embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/19932*,
_output_shapes
:џџџџџџџџџR *
dtype02
embedding_2/embedding_lookup
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/19932*,
_output_shapes
:џџџџџџџџџR 2'
%embedding_2/embedding_lookup/IdentityХ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2)
'embedding_2/embedding_lookup/Identity_1Ў
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
add
IdentityIdentityadd:z:0^embedding_2/embedding_lookup^embedding_3/embedding_lookup*
T0*,
_output_shapes
:џџџџџџџџџR 2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџR::2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:K G
(
_output_shapes
:џџџџџџџџџR

_user_specified_namex
­0
Х
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18043

inputs
assignmovingavg_18018
assignmovingavg_1_18024)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientЈ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/18018*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_18018*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/18018*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/18018*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_18018AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/18018*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/18024*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_18024*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/18024*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/18024*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_18024AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/18024*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1З
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Ш
Ј
5__inference_batch_normalization_2_layer_call_fn_20162

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_179722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ё
}
(__inference_conv1d_3_layer_call_fn_19998

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_178992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџо 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџо ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџо 
 
_user_specified_nameinputs
Т

H__inference_concatenate_1_layer_call_and_return_conditional_losses_20706
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџр:џџџџџџџџџ:џџџџџџџџџЕ:R N
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:џџџџџџџџџЕ
"
_user_specified_name
inputs/2

d
E__inference_dropout_11_layer_call_and_return_conditional_losses_20792

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


>__inference_token_and_position_embedding_1_layer_call_fn_19948
x
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_178342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџR 2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџR::22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:џџџџџџџџџR

_user_specified_namex
	
м
C__inference_dense_13_layer_call_and_return_conditional_losses_20817

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Њ 
ё(
__inference__traced_save_21292
file_prefix.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop.
*savev2_conv1d_3_kernel_read_readvariableop,
(savev2_conv1d_3_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	T
Psavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopV
Rsavev2_transformer_block_3_multi_head_attention_3_query_kernel_read_readvariableopT
Psavev2_transformer_block_3_multi_head_attention_3_query_bias_read_readvariableopT
Psavev2_transformer_block_3_multi_head_attention_3_key_kernel_read_readvariableopR
Nsavev2_transformer_block_3_multi_head_attention_3_key_bias_read_readvariableopV
Rsavev2_transformer_block_3_multi_head_attention_3_value_kernel_read_readvariableopT
Psavev2_transformer_block_3_multi_head_attention_3_value_bias_read_readvariableopa
]savev2_transformer_block_3_multi_head_attention_3_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_3_multi_head_attention_3_attention_output_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableopN
Jsavev2_transformer_block_3_layer_normalization_6_gamma_read_readvariableopM
Isavev2_transformer_block_3_layer_normalization_6_beta_read_readvariableopN
Jsavev2_transformer_block_3_layer_normalization_7_gamma_read_readvariableopM
Isavev2_transformer_block_3_layer_normalization_7_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_sgd_conv1d_2_kernel_momentum_read_readvariableop9
5savev2_sgd_conv1d_2_bias_momentum_read_readvariableop;
7savev2_sgd_conv1d_3_kernel_momentum_read_readvariableop9
5savev2_sgd_conv1d_3_bias_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_2_gamma_momentum_read_readvariableopF
Bsavev2_sgd_batch_normalization_2_beta_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_3_gamma_momentum_read_readvariableopF
Bsavev2_sgd_batch_normalization_3_beta_momentum_read_readvariableop;
7savev2_sgd_dense_11_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_11_bias_momentum_read_readvariableop;
7savev2_sgd_dense_12_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_12_bias_momentum_read_readvariableop;
7savev2_sgd_dense_13_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_13_bias_momentum_read_readvariableopa
]savev2_sgd_token_and_position_embedding_1_embedding_2_embeddings_momentum_read_readvariableopa
]savev2_sgd_token_and_position_embedding_1_embedding_3_embeddings_momentum_read_readvariableopc
_savev2_sgd_transformer_block_3_multi_head_attention_3_query_kernel_momentum_read_readvariableopa
]savev2_sgd_transformer_block_3_multi_head_attention_3_query_bias_momentum_read_readvariableopa
]savev2_sgd_transformer_block_3_multi_head_attention_3_key_kernel_momentum_read_readvariableop_
[savev2_sgd_transformer_block_3_multi_head_attention_3_key_bias_momentum_read_readvariableopc
_savev2_sgd_transformer_block_3_multi_head_attention_3_value_kernel_momentum_read_readvariableopa
]savev2_sgd_transformer_block_3_multi_head_attention_3_value_bias_momentum_read_readvariableopn
jsavev2_sgd_transformer_block_3_multi_head_attention_3_attention_output_kernel_momentum_read_readvariableopl
hsavev2_sgd_transformer_block_3_multi_head_attention_3_attention_output_bias_momentum_read_readvariableop:
6savev2_sgd_dense_9_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_9_bias_momentum_read_readvariableop;
7savev2_sgd_dense_10_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_10_bias_momentum_read_readvariableop[
Wsavev2_sgd_transformer_block_3_layer_normalization_6_gamma_momentum_read_readvariableopZ
Vsavev2_sgd_transformer_block_3_layer_normalization_6_beta_momentum_read_readvariableop[
Wsavev2_sgd_transformer_block_3_layer_normalization_7_gamma_momentum_read_readvariableopZ
Vsavev2_sgd_transformer_block_3_layer_normalization_7_beta_momentum_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameу%
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*ѕ$
valueы$Bш$KB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/15/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/16/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/17/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/18/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/19/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/20/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/21/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/22/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/23/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/26/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/27/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/28/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/29/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЁ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ћ
valueЁBKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesт'
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop*savev2_conv1d_3_kernel_read_readvariableop(savev2_conv1d_3_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopRsavev2_transformer_block_3_multi_head_attention_3_query_kernel_read_readvariableopPsavev2_transformer_block_3_multi_head_attention_3_query_bias_read_readvariableopPsavev2_transformer_block_3_multi_head_attention_3_key_kernel_read_readvariableopNsavev2_transformer_block_3_multi_head_attention_3_key_bias_read_readvariableopRsavev2_transformer_block_3_multi_head_attention_3_value_kernel_read_readvariableopPsavev2_transformer_block_3_multi_head_attention_3_value_bias_read_readvariableop]savev2_transformer_block_3_multi_head_attention_3_attention_output_kernel_read_readvariableop[savev2_transformer_block_3_multi_head_attention_3_attention_output_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableopJsavev2_transformer_block_3_layer_normalization_6_gamma_read_readvariableopIsavev2_transformer_block_3_layer_normalization_6_beta_read_readvariableopJsavev2_transformer_block_3_layer_normalization_7_gamma_read_readvariableopIsavev2_transformer_block_3_layer_normalization_7_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_sgd_conv1d_2_kernel_momentum_read_readvariableop5savev2_sgd_conv1d_2_bias_momentum_read_readvariableop7savev2_sgd_conv1d_3_kernel_momentum_read_readvariableop5savev2_sgd_conv1d_3_bias_momentum_read_readvariableopCsavev2_sgd_batch_normalization_2_gamma_momentum_read_readvariableopBsavev2_sgd_batch_normalization_2_beta_momentum_read_readvariableopCsavev2_sgd_batch_normalization_3_gamma_momentum_read_readvariableopBsavev2_sgd_batch_normalization_3_beta_momentum_read_readvariableop7savev2_sgd_dense_11_kernel_momentum_read_readvariableop5savev2_sgd_dense_11_bias_momentum_read_readvariableop7savev2_sgd_dense_12_kernel_momentum_read_readvariableop5savev2_sgd_dense_12_bias_momentum_read_readvariableop7savev2_sgd_dense_13_kernel_momentum_read_readvariableop5savev2_sgd_dense_13_bias_momentum_read_readvariableop]savev2_sgd_token_and_position_embedding_1_embedding_2_embeddings_momentum_read_readvariableop]savev2_sgd_token_and_position_embedding_1_embedding_3_embeddings_momentum_read_readvariableop_savev2_sgd_transformer_block_3_multi_head_attention_3_query_kernel_momentum_read_readvariableop]savev2_sgd_transformer_block_3_multi_head_attention_3_query_bias_momentum_read_readvariableop]savev2_sgd_transformer_block_3_multi_head_attention_3_key_kernel_momentum_read_readvariableop[savev2_sgd_transformer_block_3_multi_head_attention_3_key_bias_momentum_read_readvariableop_savev2_sgd_transformer_block_3_multi_head_attention_3_value_kernel_momentum_read_readvariableop]savev2_sgd_transformer_block_3_multi_head_attention_3_value_bias_momentum_read_readvariableopjsavev2_sgd_transformer_block_3_multi_head_attention_3_attention_output_kernel_momentum_read_readvariableophsavev2_sgd_transformer_block_3_multi_head_attention_3_attention_output_bias_momentum_read_readvariableop6savev2_sgd_dense_9_kernel_momentum_read_readvariableop4savev2_sgd_dense_9_bias_momentum_read_readvariableop7savev2_sgd_dense_10_kernel_momentum_read_readvariableop5savev2_sgd_dense_10_bias_momentum_read_readvariableopWsavev2_sgd_transformer_block_3_layer_normalization_6_gamma_momentum_read_readvariableopVsavev2_sgd_transformer_block_3_layer_normalization_6_beta_momentum_read_readvariableopWsavev2_sgd_transformer_block_3_layer_normalization_7_gamma_momentum_read_readvariableopVsavev2_sgd_transformer_block_3_layer_normalization_7_beta_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Y
dtypesO
M2K	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*ё
_input_shapesп
м: :  : :	  : : : : : : : : : :	
@:@:@@:@:@:: : : : : :	R :  : :  : :  : :  : : @:@:@ : : : : : : : :  : :	  : : : : : :	
@:@:@@:@:@:: :	R :  : :  : :  : :  : : @:@:@ : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:  : 

_output_shapes
: :($
"
_output_shapes
:	  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	
@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :%!

_output_shapes
:	R :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :  

_output_shapes
: :$! 

_output_shapes

: @: "

_output_shapes
:@:$# 

_output_shapes

:@ : $

_output_shapes
: : %

_output_shapes
: : &

_output_shapes
: : '

_output_shapes
: : (

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :(+$
"
_output_shapes
:  : ,

_output_shapes
: :(-$
"
_output_shapes
:	  : .

_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: : 2

_output_shapes
: :%3!

_output_shapes
:	
@: 4

_output_shapes
:@:$5 

_output_shapes

:@@: 6

_output_shapes
:@:$7 

_output_shapes

:@: 8

_output_shapes
::$9 

_output_shapes

: :%:!

_output_shapes
:	R :(;$
"
_output_shapes
:  :$< 

_output_shapes

: :(=$
"
_output_shapes
:  :$> 

_output_shapes

: :(?$
"
_output_shapes
:  :$@ 

_output_shapes

: :(A$
"
_output_shapes
:  : B

_output_shapes
: :$C 

_output_shapes

: @: D

_output_shapes
:@:$E 

_output_shapes

:@ : F

_output_shapes
: : G

_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: :K

_output_shapes
: 

і
C__inference_conv1d_2_layer_call_and_return_conditional_losses_19964

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2
conv1d/ExpandDimsИ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЗ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/ExpandDims_1З
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџR *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџR *
squeeze_dims

§џџџџџџџџ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџR 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
ReluЉ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџR 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџR ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџR 
 
_user_specified_nameinputs


P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17626

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1ш
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ф0
Х
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17593

inputs
assignmovingavg_17568
assignmovingavg_1_17574)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientБ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/17568*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_17568*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/17568*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/17568*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_17568AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/17568*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/17574*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_17574*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/17574*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/17574*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_17574AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/17574*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1Р
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
і
j
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_17351

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

ExpandDimsМ
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
Ќ*
paddingVALID*
strides	
Ќ2	
AvgPool
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ж
j
@__inference_add_1_layer_call_and_return_conditional_losses_18105

inputs
inputs_1
identity[
addAddV2inputsinputs_1*
T0*+
_output_shapes
:џџџџџџџџџ# 2
add_
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:џџџџџџџџџ# :џџџџџџџџџ# :S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs:SO
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ф0
Х
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20034

inputs
assignmovingavg_20009
assignmovingavg_1_20015)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientБ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20009*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_20009*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20009*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20009*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_20009AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20009*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20015*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_20015*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20015*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20015*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_20015AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20015*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1Р
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
э	
м
C__inference_dense_12_layer_call_and_return_conditional_losses_18598

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

ц(
 __inference__wrapped_model_17312
input_4
input_5
input_6M
Imodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_17081M
Imodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_17087@
<model_1_conv1d_2_conv1d_expanddims_1_readvariableop_resource4
0model_1_conv1d_2_biasadd_readvariableop_resource@
<model_1_conv1d_3_conv1d_expanddims_1_readvariableop_resource4
0model_1_conv1d_3_biasadd_readvariableop_resourceC
?model_1_batch_normalization_2_batchnorm_readvariableop_resourceG
Cmodel_1_batch_normalization_2_batchnorm_mul_readvariableop_resourceE
Amodel_1_batch_normalization_2_batchnorm_readvariableop_1_resourceE
Amodel_1_batch_normalization_2_batchnorm_readvariableop_2_resourceC
?model_1_batch_normalization_3_batchnorm_readvariableop_resourceG
Cmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_resourceE
Amodel_1_batch_normalization_3_batchnorm_readvariableop_1_resourceE
Amodel_1_batch_normalization_3_batchnorm_readvariableop_2_resourceb
^model_1_transformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resourceX
Tmodel_1_transformer_block_3_multi_head_attention_3_query_add_readvariableop_resource`
\model_1_transformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resourceV
Rmodel_1_transformer_block_3_multi_head_attention_3_key_add_readvariableop_resourceb
^model_1_transformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resourceX
Tmodel_1_transformer_block_3_multi_head_attention_3_value_add_readvariableop_resourcem
imodel_1_transformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resourcec
_model_1_transformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource[
Wmodel_1_transformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resourceW
Smodel_1_transformer_block_3_layer_normalization_6_batchnorm_readvariableop_resourceV
Rmodel_1_transformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resourceT
Pmodel_1_transformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resourceW
Smodel_1_transformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resourceU
Qmodel_1_transformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource[
Wmodel_1_transformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resourceW
Smodel_1_transformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource3
/model_1_dense_11_matmul_readvariableop_resource4
0model_1_dense_11_biasadd_readvariableop_resource3
/model_1_dense_12_matmul_readvariableop_resource4
0model_1_dense_12_biasadd_readvariableop_resource3
/model_1_dense_13_matmul_readvariableop_resource4
0model_1_dense_13_biasadd_readvariableop_resource
identityЂ6model_1/batch_normalization_2/batchnorm/ReadVariableOpЂ8model_1/batch_normalization_2/batchnorm/ReadVariableOp_1Ђ8model_1/batch_normalization_2/batchnorm/ReadVariableOp_2Ђ:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOpЂ6model_1/batch_normalization_3/batchnorm/ReadVariableOpЂ8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1Ђ8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2Ђ:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOpЂ'model_1/conv1d_2/BiasAdd/ReadVariableOpЂ3model_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOpЂ'model_1/conv1d_3/BiasAdd/ReadVariableOpЂ3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpЂ'model_1/dense_11/BiasAdd/ReadVariableOpЂ&model_1/dense_11/MatMul/ReadVariableOpЂ'model_1/dense_12/BiasAdd/ReadVariableOpЂ&model_1/dense_12/MatMul/ReadVariableOpЂ'model_1/dense_13/BiasAdd/ReadVariableOpЂ&model_1/dense_13/MatMul/ReadVariableOpЂCmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupЂCmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupЂJmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpЂNmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpЂJmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpЂNmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpЂVmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpЂ`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЂImodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpЂSmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЂKmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpЂUmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpЂKmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpЂUmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpЂHmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpЂJmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpЂGmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpЂImodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp
,model_1/token_and_position_embedding_1/ShapeShapeinput_4*
T0*
_output_shapes
:2.
,model_1/token_and_position_embedding_1/ShapeЫ
:model_1/token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2<
:model_1/token_and_position_embedding_1/strided_slice/stackЦ
<model_1/token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<model_1/token_and_position_embedding_1/strided_slice/stack_1Ц
<model_1/token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_1/token_and_position_embedding_1/strided_slice/stack_2Ь
4model_1/token_and_position_embedding_1/strided_sliceStridedSlice5model_1/token_and_position_embedding_1/Shape:output:0Cmodel_1/token_and_position_embedding_1/strided_slice/stack:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_1:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4model_1/token_and_position_embedding_1/strided_sliceЊ
2model_1/token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_1/token_and_position_embedding_1/range/startЊ
2model_1/token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2model_1/token_and_position_embedding_1/range/deltaУ
,model_1/token_and_position_embedding_1/rangeRange;model_1/token_and_position_embedding_1/range/start:output:0=model_1/token_and_position_embedding_1/strided_slice:output:0;model_1/token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2.
,model_1/token_and_position_embedding_1/range№
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherImodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_170815model_1/token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*\
_classR
PNloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/17081*'
_output_shapes
:џџџџџџџџџ *
dtype02E
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupД
Lmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*\
_classR
PNloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/17081*'
_output_shapes
:џџџџџџџџџ 2N
Lmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/IdentityЕ
Nmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2P
Nmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1Х
7model_1/token_and_position_embedding_1/embedding_2/CastCastinput_4*

DstT0*

SrcT0*(
_output_shapes
:џџџџџџџџџR29
7model_1/token_and_position_embedding_1/embedding_2/Castћ
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherImodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_17087;model_1/token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*\
_classR
PNloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/17087*,
_output_shapes
:џџџџџџџџџR *
dtype02E
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupЙ
Lmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*\
_classR
PNloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/17087*,
_output_shapes
:џџџџџџџџџR 2N
Lmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/IdentityК
Nmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2P
Nmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1Ъ
*model_1/token_and_position_embedding_1/addAddV2Wmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Wmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2,
*model_1/token_and_position_embedding_1/add
&model_1/conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2(
&model_1/conv1d_2/conv1d/ExpandDims/dimђ
"model_1/conv1d_2/conv1d/ExpandDims
ExpandDims.model_1/token_and_position_embedding_1/add:z:0/model_1/conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2$
"model_1/conv1d_2/conv1d/ExpandDimsы
3model_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype025
3model_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp
(model_1/conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/conv1d_2/conv1d/ExpandDims_1/dimћ
$model_1/conv1d_2/conv1d/ExpandDims_1
ExpandDims;model_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2&
$model_1/conv1d_2/conv1d/ExpandDims_1ћ
model_1/conv1d_2/conv1dConv2D+model_1/conv1d_2/conv1d/ExpandDims:output:0-model_1/conv1d_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџR *
paddingSAME*
strides
2
model_1/conv1d_2/conv1dЦ
model_1/conv1d_2/conv1d/SqueezeSqueeze model_1/conv1d_2/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџR *
squeeze_dims

§џџџџџџџџ2!
model_1/conv1d_2/conv1d/SqueezeП
'model_1/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'model_1/conv1d_2/BiasAdd/ReadVariableOpб
model_1/conv1d_2/BiasAddBiasAdd(model_1/conv1d_2/conv1d/Squeeze:output:0/model_1/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
model_1/conv1d_2/BiasAdd
model_1/conv1d_2/ReluRelu!model_1/conv1d_2/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
model_1/conv1d_2/Relu
*model_1/average_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_1/average_pooling1d_3/ExpandDims/dimѓ
&model_1/average_pooling1d_3/ExpandDims
ExpandDims#model_1/conv1d_2/Relu:activations:03model_1/average_pooling1d_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2(
&model_1/average_pooling1d_3/ExpandDims§
#model_1/average_pooling1d_3/AvgPoolAvgPool/model_1/average_pooling1d_3/ExpandDims:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
ksize
*
paddingVALID*
strides
2%
#model_1/average_pooling1d_3/AvgPoolб
#model_1/average_pooling1d_3/SqueezeSqueeze,model_1/average_pooling1d_3/AvgPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims
2%
#model_1/average_pooling1d_3/Squeeze
&model_1/conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2(
&model_1/conv1d_3/conv1d/ExpandDims/dim№
"model_1/conv1d_3/conv1d/ExpandDims
ExpandDims,model_1/average_pooling1d_3/Squeeze:output:0/model_1/conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2$
"model_1/conv1d_3/conv1d/ExpandDimsы
3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype025
3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp
(model_1/conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/conv1d_3/conv1d/ExpandDims_1/dimћ
$model_1/conv1d_3/conv1d/ExpandDims_1
ExpandDims;model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2&
$model_1/conv1d_3/conv1d/ExpandDims_1ћ
model_1/conv1d_3/conv1dConv2D+model_1/conv1d_3/conv1d/ExpandDims:output:0-model_1/conv1d_3/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
paddingSAME*
strides
2
model_1/conv1d_3/conv1dЦ
model_1/conv1d_3/conv1d/SqueezeSqueeze model_1/conv1d_3/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims

§џџџџџџџџ2!
model_1/conv1d_3/conv1d/SqueezeП
'model_1/conv1d_3/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv1d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'model_1/conv1d_3/BiasAdd/ReadVariableOpб
model_1/conv1d_3/BiasAddBiasAdd(model_1/conv1d_3/conv1d/Squeeze:output:0/model_1/conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
model_1/conv1d_3/BiasAdd
model_1/conv1d_3/ReluRelu!model_1/conv1d_3/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
model_1/conv1d_3/Relu
*model_1/average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_1/average_pooling1d_5/ExpandDims/dimў
&model_1/average_pooling1d_5/ExpandDims
ExpandDims.model_1/token_and_position_embedding_1/add:z:03model_1/average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2(
&model_1/average_pooling1d_5/ExpandDimsў
#model_1/average_pooling1d_5/AvgPoolAvgPool/model_1/average_pooling1d_5/ExpandDims:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# *
ksize	
Ќ*
paddingVALID*
strides	
Ќ2%
#model_1/average_pooling1d_5/AvgPoolа
#model_1/average_pooling1d_5/SqueezeSqueeze,model_1/average_pooling1d_5/AvgPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
squeeze_dims
2%
#model_1/average_pooling1d_5/Squeeze
*model_1/average_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_1/average_pooling1d_4/ExpandDims/dimѓ
&model_1/average_pooling1d_4/ExpandDims
ExpandDims#model_1/conv1d_3/Relu:activations:03model_1/average_pooling1d_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2(
&model_1/average_pooling1d_4/ExpandDimsќ
#model_1/average_pooling1d_4/AvgPoolAvgPool/model_1/average_pooling1d_4/ExpandDims:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# *
ksize

*
paddingVALID*
strides

2%
#model_1/average_pooling1d_4/AvgPoolа
#model_1/average_pooling1d_4/SqueezeSqueeze,model_1/average_pooling1d_4/AvgPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
squeeze_dims
2%
#model_1/average_pooling1d_4/Squeezeь
6model_1/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype028
6model_1/batch_normalization_2/batchnorm/ReadVariableOpЃ
-model_1/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2/
-model_1/batch_normalization_2/batchnorm/add/y
+model_1/batch_normalization_2/batchnorm/addAddV2>model_1/batch_normalization_2/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2-
+model_1/batch_normalization_2/batchnorm/addН
-model_1/batch_normalization_2/batchnorm/RsqrtRsqrt/model_1/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
: 2/
-model_1/batch_normalization_2/batchnorm/Rsqrtј
:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02<
:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp§
+model_1/batch_normalization_2/batchnorm/mulMul1model_1/batch_normalization_2/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2-
+model_1/batch_normalization_2/batchnorm/mulњ
-model_1/batch_normalization_2/batchnorm/mul_1Mul,model_1/average_pooling1d_4/Squeeze:output:0/model_1/batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2/
-model_1/batch_normalization_2/batchnorm/mul_1ђ
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_1§
-model_1/batch_normalization_2/batchnorm/mul_2Mul@model_1/batch_normalization_2/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
: 2/
-model_1/batch_normalization_2/batchnorm/mul_2ђ
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02:
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_2ћ
+model_1/batch_normalization_2/batchnorm/subSub@model_1/batch_normalization_2/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2-
+model_1/batch_normalization_2/batchnorm/sub
-model_1/batch_normalization_2/batchnorm/add_1AddV21model_1/batch_normalization_2/batchnorm/mul_1:z:0/model_1/batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2/
-model_1/batch_normalization_2/batchnorm/add_1ь
6model_1/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype028
6model_1/batch_normalization_3/batchnorm/ReadVariableOpЃ
-model_1/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2/
-model_1/batch_normalization_3/batchnorm/add/y
+model_1/batch_normalization_3/batchnorm/addAddV2>model_1/batch_normalization_3/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2-
+model_1/batch_normalization_3/batchnorm/addН
-model_1/batch_normalization_3/batchnorm/RsqrtRsqrt/model_1/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
: 2/
-model_1/batch_normalization_3/batchnorm/Rsqrtј
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02<
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp§
+model_1/batch_normalization_3/batchnorm/mulMul1model_1/batch_normalization_3/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2-
+model_1/batch_normalization_3/batchnorm/mulњ
-model_1/batch_normalization_3/batchnorm/mul_1Mul,model_1/average_pooling1d_5/Squeeze:output:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2/
-model_1/batch_normalization_3/batchnorm/mul_1ђ
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1§
-model_1/batch_normalization_3/batchnorm/mul_2Mul@model_1/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
: 2/
-model_1/batch_normalization_3/batchnorm/mul_2ђ
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02:
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2ћ
+model_1/batch_normalization_3/batchnorm/subSub@model_1/batch_normalization_3/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2-
+model_1/batch_normalization_3/batchnorm/sub
-model_1/batch_normalization_3/batchnorm/add_1AddV21model_1/batch_normalization_3/batchnorm/mul_1:z:0/model_1/batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2/
-model_1/batch_normalization_3/batchnorm/add_1Ы
model_1/add_1/addAddV21model_1/batch_normalization_2/batchnorm/add_1:z:01model_1/batch_normalization_3/batchnorm/add_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
model_1/add_1/addб
Umodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOp^model_1_transformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02W
Umodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp№
Fmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/EinsumEinsummodel_1/add_1/add:z:0]model_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2H
Fmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/EinsumЏ
Kmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpTmodel_1_transformer_block_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

: *
dtype02M
Kmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpх
<model_1/transformer_block_3/multi_head_attention_3/query/addAddV2Omodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum:output:0Smodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2>
<model_1/transformer_block_3/multi_head_attention_3/query/addЫ
Smodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp\model_1_transformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02U
Smodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpъ
Dmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/EinsumEinsummodel_1/add_1/add:z:0[model_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2F
Dmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/EinsumЉ
Imodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpRmodel_1_transformer_block_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

: *
dtype02K
Imodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpн
:model_1/transformer_block_3/multi_head_attention_3/key/addAddV2Mmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum:output:0Qmodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2<
:model_1/transformer_block_3/multi_head_attention_3/key/addб
Umodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOp^model_1_transformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02W
Umodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp№
Fmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/EinsumEinsummodel_1/add_1/add:z:0]model_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2H
Fmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/EinsumЏ
Kmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpTmodel_1_transformer_block_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

: *
dtype02M
Kmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpх
<model_1/transformer_block_3/multi_head_attention_3/value/addAddV2Omodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum:output:0Smodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2>
<model_1/transformer_block_3/multi_head_attention_3/value/addЙ
8model_1/transformer_block_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2:
8model_1/transformer_block_3/multi_head_attention_3/Mul/yЖ
6model_1/transformer_block_3/multi_head_attention_3/MulMul@model_1/transformer_block_3/multi_head_attention_3/query/add:z:0Amodel_1/transformer_block_3/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# 28
6model_1/transformer_block_3/multi_head_attention_3/Mulь
@model_1/transformer_block_3/multi_head_attention_3/einsum/EinsumEinsum>model_1/transformer_block_3/multi_head_attention_3/key/add:z:0:model_1/transformer_block_3/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
equationaecd,abcd->acbe2B
@model_1/transformer_block_3/multi_head_attention_3/einsum/Einsum
Bmodel_1/transformer_block_3/multi_head_attention_3/softmax/SoftmaxSoftmaxImodel_1/transformer_block_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2D
Bmodel_1/transformer_block_3/multi_head_attention_3/softmax/Softmax
Cmodel_1/transformer_block_3/multi_head_attention_3/dropout/IdentityIdentityLmodel_1/transformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ##2E
Cmodel_1/transformer_block_3/multi_head_attention_3/dropout/Identity
Bmodel_1/transformer_block_3/multi_head_attention_3/einsum_1/EinsumEinsumLmodel_1/transformer_block_3/multi_head_attention_3/dropout/Identity:output:0@model_1/transformer_block_3/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationacbe,aecd->abcd2D
Bmodel_1/transformer_block_3/multi_head_attention_3/einsum_1/Einsumђ
`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpimodel_1_transformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02b
`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpУ
Qmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumKmodel_1/transformer_block_3/multi_head_attention_3/einsum_1/Einsum:output:0hmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ# *
equationabcd,cde->abe2S
Qmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumЬ
Vmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOp_model_1_transformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02X
Vmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp
Gmodel_1/transformer_block_3/multi_head_attention_3/attention_output/addAddV2Zmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0^model_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2I
Gmodel_1/transformer_block_3/multi_head_attention_3/attention_output/addя
.model_1/transformer_block_3/dropout_8/IdentityIdentityKmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 20
.model_1/transformer_block_3/dropout_8/Identityб
model_1/transformer_block_3/addAddV2model_1/add_1/add:z:07model_1/transformer_block_3/dropout_8/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2!
model_1/transformer_block_3/addю
Pmodel_1/transformer_block_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_1/transformer_block_3/layer_normalization_6/moments/mean/reduction_indicesЯ
>model_1/transformer_block_3/layer_normalization_6/moments/meanMean#model_1/transformer_block_3/add:z:0Ymodel_1/transformer_block_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2@
>model_1/transformer_block_3/layer_normalization_6/moments/mean
Fmodel_1/transformer_block_3/layer_normalization_6/moments/StopGradientStopGradientGmodel_1/transformer_block_3/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2H
Fmodel_1/transformer_block_3/layer_normalization_6/moments/StopGradientл
Kmodel_1/transformer_block_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifference#model_1/transformer_block_3/add:z:0Omodel_1/transformer_block_3/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2M
Kmodel_1/transformer_block_3/layer_normalization_6/moments/SquaredDifferenceі
Tmodel_1/transformer_block_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_1/transformer_block_3/layer_normalization_6/moments/variance/reduction_indices
Bmodel_1/transformer_block_3/layer_normalization_6/moments/varianceMeanOmodel_1/transformer_block_3/layer_normalization_6/moments/SquaredDifference:z:0]model_1/transformer_block_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2D
Bmodel_1/transformer_block_3/layer_normalization_6/moments/varianceЫ
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add/yк
?model_1/transformer_block_3/layer_normalization_6/batchnorm/addAddV2Kmodel_1/transformer_block_3/layer_normalization_6/moments/variance:output:0Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2A
?model_1/transformer_block_3/layer_normalization_6/batchnorm/add
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/RsqrtRsqrtCmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/RsqrtД
Nmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_1_transformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02P
Nmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpо
?model_1/transformer_block_3/layer_normalization_6/batchnorm/mulMulEmodel_1/transformer_block_3/layer_normalization_6/batchnorm/Rsqrt:y:0Vmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2A
?model_1/transformer_block_3/layer_normalization_6/batchnorm/mul­
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_1Mul#model_1/transformer_block_3/add:z:0Cmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_1б
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_2MulGmodel_1/transformer_block_3/layer_normalization_6/moments/mean:output:0Cmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_2Ј
Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpSmodel_1_transformer_block_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02L
Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpк
?model_1/transformer_block_3/layer_normalization_6/batchnorm/subSubRmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0Emodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2A
?model_1/transformer_block_3/layer_normalization_6/batchnorm/subб
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1AddV2Emodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_1:z:0Cmodel_1/transformer_block_3/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1Љ
Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpRmodel_1_transformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02K
Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpЬ
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/axesг
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/freeљ
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ShapeShapeEmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2B
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/Shapeж
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisЦ
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2GatherV2Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Qmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2к
Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisЬ
Emodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Smodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2G
Emodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1Ю
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ConstФ
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ProdProdLmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2A
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prodв
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Ь
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1ProdNmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Kmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2C
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1в
Fmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisЅ
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concatConcatV2Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Omodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concatа
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/stackPackHmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod:output:0Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2B
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/stackт
Dmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/transpose	TransposeEmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2F
Dmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/transposeу
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeReshapeHmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/transpose:y:0Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2D
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Reshapeт
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/MatMulMatMulKmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Reshape:output:0Qmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2C
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/MatMulв
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2D
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_2ж
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisВ
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1ConcatV2Lmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Kmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_2:output:0Qmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1д
:model_1/transformer_block_3/sequential_3/dense_9/TensordotReshapeKmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/MatMul:product:0Lmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2<
:model_1/transformer_block_3/sequential_3/dense_9/Tensordot
Gmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpPmodel_1_transformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02I
Gmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpЫ
8model_1/transformer_block_3/sequential_3/dense_9/BiasAddBiasAddCmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot:output:0Omodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2:
8model_1/transformer_block_3/sequential_3/dense_9/BiasAddя
5model_1/transformer_block_3/sequential_3/dense_9/ReluReluAmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@27
5model_1/transformer_block_3/sequential_3/dense_9/ReluЌ
Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpSmodel_1_transformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02L
Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpЮ
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2B
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/axesе
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/freeљ
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ShapeShapeCmodel_1/transformer_block_3/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2C
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Shapeи
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisЫ
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2GatherV2Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Rmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2F
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2м
Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisб
Fmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Tmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2H
Fmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1а
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2C
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ConstШ
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/ProdProdMmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2B
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prodд
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_1а
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1ProdOmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Lmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2D
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1д
Gmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisЊ
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concatConcatV2Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Pmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2D
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concatд
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/stackPackImodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod:output:0Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2C
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/stackу
Emodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/transpose	TransposeCmodel_1/transformer_block_3/sequential_3/dense_9/Relu:activations:0Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2G
Emodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/transposeч
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeReshapeImodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/transpose:y:0Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2E
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Reshapeц
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/MatMulMatMulLmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Reshape:output:0Rmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2D
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/MatMulд
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_2и
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisЗ
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1ConcatV2Mmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Lmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_2:output:0Rmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2F
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1и
;model_1/transformer_block_3/sequential_3/dense_10/TensordotReshapeLmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/MatMul:product:0Mmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2=
;model_1/transformer_block_3/sequential_3/dense_10/TensordotЂ
Hmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpQmodel_1_transformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02J
Hmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpЯ
9model_1/transformer_block_3/sequential_3/dense_10/BiasAddBiasAddDmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot:output:0Pmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9model_1/transformer_block_3/sequential_3/dense_10/BiasAddц
.model_1/transformer_block_3/dropout_9/IdentityIdentityBmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 20
.model_1/transformer_block_3/dropout_9/Identity
!model_1/transformer_block_3/add_1AddV2Emodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1:z:07model_1/transformer_block_3/dropout_9/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2#
!model_1/transformer_block_3/add_1ю
Pmodel_1/transformer_block_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_1/transformer_block_3/layer_normalization_7/moments/mean/reduction_indicesб
>model_1/transformer_block_3/layer_normalization_7/moments/meanMean%model_1/transformer_block_3/add_1:z:0Ymodel_1/transformer_block_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2@
>model_1/transformer_block_3/layer_normalization_7/moments/mean
Fmodel_1/transformer_block_3/layer_normalization_7/moments/StopGradientStopGradientGmodel_1/transformer_block_3/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2H
Fmodel_1/transformer_block_3/layer_normalization_7/moments/StopGradientн
Kmodel_1/transformer_block_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifference%model_1/transformer_block_3/add_1:z:0Omodel_1/transformer_block_3/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2M
Kmodel_1/transformer_block_3/layer_normalization_7/moments/SquaredDifferenceі
Tmodel_1/transformer_block_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_1/transformer_block_3/layer_normalization_7/moments/variance/reduction_indices
Bmodel_1/transformer_block_3/layer_normalization_7/moments/varianceMeanOmodel_1/transformer_block_3/layer_normalization_7/moments/SquaredDifference:z:0]model_1/transformer_block_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2D
Bmodel_1/transformer_block_3/layer_normalization_7/moments/varianceЫ
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add/yк
?model_1/transformer_block_3/layer_normalization_7/batchnorm/addAddV2Kmodel_1/transformer_block_3/layer_normalization_7/moments/variance:output:0Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2A
?model_1/transformer_block_3/layer_normalization_7/batchnorm/add
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/RsqrtRsqrtCmodel_1/transformer_block_3/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/RsqrtД
Nmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_1_transformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02P
Nmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpо
?model_1/transformer_block_3/layer_normalization_7/batchnorm/mulMulEmodel_1/transformer_block_3/layer_normalization_7/batchnorm/Rsqrt:y:0Vmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2A
?model_1/transformer_block_3/layer_normalization_7/batchnorm/mulЏ
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_1Mul%model_1/transformer_block_3/add_1:z:0Cmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_1б
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_2MulGmodel_1/transformer_block_3/layer_normalization_7/moments/mean:output:0Cmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_2Ј
Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpSmodel_1_transformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02L
Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpк
?model_1/transformer_block_3/layer_normalization_7/batchnorm/subSubRmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0Emodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2A
?model_1/transformer_block_3/layer_normalization_7/batchnorm/subб
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add_1AddV2Emodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_1:z:0Cmodel_1/transformer_block_3/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add_1
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ`  2
model_1/flatten_1/Constн
model_1/flatten_1/ReshapeReshapeEmodel_1/transformer_block_3/layer_normalization_7/batchnorm/add_1:z:0 model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2
model_1/flatten_1/Reshape
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_1/concatenate_1/concat/axisц
model_1/concatenate_1/concatConcatV2"model_1/flatten_1/Reshape:output:0input_5input_6*model_1/concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
2
model_1/concatenate_1/concatС
&model_1/dense_11/MatMul/ReadVariableOpReadVariableOp/model_1_dense_11_matmul_readvariableop_resource*
_output_shapes
:	
@*
dtype02(
&model_1/dense_11/MatMul/ReadVariableOpХ
model_1/dense_11/MatMulMatMul%model_1/concatenate_1/concat:output:0.model_1/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dense_11/MatMulП
'model_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/dense_11/BiasAdd/ReadVariableOpХ
model_1/dense_11/BiasAddBiasAdd!model_1/dense_11/MatMul:product:0/model_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dense_11/BiasAdd
model_1/dense_11/ReluRelu!model_1/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dense_11/Relu
model_1/dropout_10/IdentityIdentity#model_1/dense_11/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dropout_10/IdentityР
&model_1/dense_12/MatMul/ReadVariableOpReadVariableOp/model_1_dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&model_1/dense_12/MatMul/ReadVariableOpФ
model_1/dense_12/MatMulMatMul$model_1/dropout_10/Identity:output:0.model_1/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dense_12/MatMulП
'model_1/dense_12/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/dense_12/BiasAdd/ReadVariableOpХ
model_1/dense_12/BiasAddBiasAdd!model_1/dense_12/MatMul:product:0/model_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dense_12/BiasAdd
model_1/dense_12/ReluRelu!model_1/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dense_12/Relu
model_1/dropout_11/IdentityIdentity#model_1/dense_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_1/dropout_11/IdentityР
&model_1/dense_13/MatMul/ReadVariableOpReadVariableOp/model_1_dense_13_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02(
&model_1/dense_13/MatMul/ReadVariableOpФ
model_1/dense_13/MatMulMatMul$model_1/dropout_11/Identity:output:0.model_1/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_1/dense_13/MatMulП
'model_1/dense_13/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/dense_13/BiasAdd/ReadVariableOpХ
model_1/dense_13/BiasAddBiasAdd!model_1/dense_13/MatMul:product:0/model_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model_1/dense_13/BiasAddІ
IdentityIdentity!model_1/dense_13/BiasAdd:output:07^model_1/batch_normalization_2/batchnorm/ReadVariableOp9^model_1/batch_normalization_2/batchnorm/ReadVariableOp_19^model_1/batch_normalization_2/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_3/batchnorm/ReadVariableOp9^model_1/batch_normalization_3/batchnorm/ReadVariableOp_19^model_1/batch_normalization_3/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp(^model_1/conv1d_2/BiasAdd/ReadVariableOp4^model_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp(^model_1/conv1d_3/BiasAdd/ReadVariableOp4^model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp(^model_1/dense_11/BiasAdd/ReadVariableOp'^model_1/dense_11/MatMul/ReadVariableOp(^model_1/dense_12/BiasAdd/ReadVariableOp'^model_1/dense_12/MatMul/ReadVariableOp(^model_1/dense_13/BiasAdd/ReadVariableOp'^model_1/dense_13/MatMul/ReadVariableOpD^model_1/token_and_position_embedding_1/embedding_2/embedding_lookupD^model_1/token_and_position_embedding_1/embedding_3/embedding_lookupK^model_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpO^model_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpK^model_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpO^model_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpW^model_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpa^model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpJ^model_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpT^model_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpL^model_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpV^model_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpL^model_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpV^model_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpI^model_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpK^model_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpH^model_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpJ^model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::2p
6model_1/batch_normalization_2/batchnorm/ReadVariableOp6model_1/batch_normalization_2/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_18model_1/batch_normalization_2/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_28model_1/batch_normalization_2/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_3/batchnorm/ReadVariableOp6model_1/batch_normalization_3/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_18model_1/batch_normalization_3/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_28model_1/batch_normalization_3/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp2R
'model_1/conv1d_2/BiasAdd/ReadVariableOp'model_1/conv1d_2/BiasAdd/ReadVariableOp2j
3model_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp3model_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2R
'model_1/conv1d_3/BiasAdd/ReadVariableOp'model_1/conv1d_3/BiasAdd/ReadVariableOp2j
3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2R
'model_1/dense_11/BiasAdd/ReadVariableOp'model_1/dense_11/BiasAdd/ReadVariableOp2P
&model_1/dense_11/MatMul/ReadVariableOp&model_1/dense_11/MatMul/ReadVariableOp2R
'model_1/dense_12/BiasAdd/ReadVariableOp'model_1/dense_12/BiasAdd/ReadVariableOp2P
&model_1/dense_12/MatMul/ReadVariableOp&model_1/dense_12/MatMul/ReadVariableOp2R
'model_1/dense_13/BiasAdd/ReadVariableOp'model_1/dense_13/BiasAdd/ReadVariableOp2P
&model_1/dense_13/MatMul/ReadVariableOp&model_1/dense_13/MatMul/ReadVariableOp2
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup2
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup2
Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpJmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp2 
Nmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpNmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2
Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpJmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp2 
Nmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpNmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2А
Vmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpVmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp2Ф
`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
Imodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpImodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOp2Њ
Smodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpSmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Kmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpKmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOp2Ў
Umodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpUmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Kmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpKmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOp2Ў
Umodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpUmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
Hmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpHmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp2
Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpJmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp2
Gmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpGmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp2
Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpImodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:Q M
(
_output_shapes
:џџџџџџџџџR
!
_user_specified_name	input_4:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_5:QM
(
_output_shapes
:џџџџџџџџџЕ
!
_user_specified_name	input_6
а
Ў
'__inference_model_1_layer_call_fn_19115
input_4
input_5
input_6
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinput_4input_5input_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*F
_read_only_resource_inputs(
&$	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_190402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџR
!
_user_specified_name	input_4:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_5:QM
(
_output_shapes
:џџџџџџџџџЕ
!
_user_specified_name	input_6
­0
Х
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20116

inputs
assignmovingavg_20091
assignmovingavg_1_20097)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientЈ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20091*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_20091*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20091*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20091*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_20091AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20091*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20097*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_20097*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20097*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20097*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_20097AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20097*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1З
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ч

P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20136

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1п
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Ш
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_18574

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
АI
Њ
G__inference_sequential_3_layer_call_and_return_conditional_losses_20940

inputs-
)dense_9_tensordot_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource.
*dense_10_tensordot_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource
identityЂdense_10/BiasAdd/ReadVariableOpЂ!dense_10/Tensordot/ReadVariableOpЂdense_9/BiasAdd/ReadVariableOpЂ dense_9/Tensordot/ReadVariableOpЎ
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02"
 dense_9/Tensordot/ReadVariableOpz
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_9/Tensordot/axes
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_9/Tensordot/freeh
dense_9/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_9/Tensordot/Shape
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/GatherV2/axisљ
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_9/Tensordot/GatherV2_1/axisџ
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2_1|
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const 
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_1Ј
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod_1
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_9/Tensordot/concat/axisи
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concatЌ
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/stackЈ
dense_9/Tensordot/transpose	Transposeinputs!dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dense_9/Tensordot/transposeП
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense_9/Tensordot/ReshapeО
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_9/Tensordot/MatMul
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_9/Tensordot/Const_2
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/concat_1/axisх
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat_1А
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_9/TensordotЄ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_9/BiasAdd/ReadVariableOpЇ
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_9/BiasAddt
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_9/ReluБ
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_10/Tensordot/ReadVariableOp|
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_10/Tensordot/axes
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_10/Tensordot/free~
dense_10/Tensordot/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:2
dense_10/Tensordot/Shape
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/GatherV2/axisў
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_10/Tensordot/GatherV2_1/axis
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2_1~
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/ConstЄ
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prod
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Const_1Ќ
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prod_1
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_10/Tensordot/concat/axisн
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concatА
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/stackП
dense_10/Tensordot/transpose	Transposedense_9/Relu:activations:0"dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_10/Tensordot/transposeУ
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense_10/Tensordot/ReshapeТ
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_10/Tensordot/MatMul
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Const_2
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/concat_1/axisъ
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concat_1Д
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dense_10/TensordotЇ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_10/BiasAdd/ReadVariableOpЋ
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dense_10/BiasAddћ
IdentityIdentitydense_10/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Ш
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_18631

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
\
а
B__inference_model_1_layer_call_and_return_conditional_losses_18671
input_4
input_5
input_6(
$token_and_position_embedding_1_17845(
$token_and_position_embedding_1_17847
conv1d_2_17877
conv1d_2_17879
conv1d_3_17910
conv1d_3_17912
batch_normalization_2_17999
batch_normalization_2_18001
batch_normalization_2_18003
batch_normalization_2_18005
batch_normalization_3_18090
batch_normalization_3_18092
batch_normalization_3_18094
batch_normalization_3_18096
transformer_block_3_18465
transformer_block_3_18467
transformer_block_3_18469
transformer_block_3_18471
transformer_block_3_18473
transformer_block_3_18475
transformer_block_3_18477
transformer_block_3_18479
transformer_block_3_18481
transformer_block_3_18483
transformer_block_3_18485
transformer_block_3_18487
transformer_block_3_18489
transformer_block_3_18491
transformer_block_3_18493
transformer_block_3_18495
dense_11_18552
dense_11_18554
dense_12_18609
dense_12_18611
dense_13_18665
dense_13_18667
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂ conv1d_2/StatefulPartitionedCallЂ conv1d_3/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ"dropout_10/StatefulPartitionedCallЂ"dropout_11/StatefulPartitionedCallЂ6token_and_position_embedding_1/StatefulPartitionedCallЂ+transformer_block_3/StatefulPartitionedCall
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_4$token_and_position_embedding_1_17845$token_and_position_embedding_1_17847*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_1783428
6token_and_position_embedding_1/StatefulPartitionedCallв
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0conv1d_2_17877conv1d_2_17879*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_178662"
 conv1d_2/StatefulPartitionedCall
#average_pooling1d_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_173212%
#average_pooling1d_3/PartitionedCallП
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_3/PartitionedCall:output:0conv1d_3_17910conv1d_3_17912*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_178992"
 conv1d_3/StatefulPartitionedCallД
#average_pooling1d_5/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_173512%
#average_pooling1d_5/PartitionedCall
#average_pooling1d_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_173362%
#average_pooling1d_4/PartitionedCallЛ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_4/PartitionedCall:output:0batch_normalization_2_17999batch_normalization_2_18001batch_normalization_2_18003batch_normalization_2_18005*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_179522/
-batch_normalization_2/StatefulPartitionedCallЛ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0batch_normalization_3_18090batch_normalization_3_18092batch_normalization_3_18094batch_normalization_3_18096*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_180432/
-batch_normalization_3/StatefulPartitionedCallК
add_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:06batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_181052
add_1/PartitionedCall§
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0transformer_block_3_18465transformer_block_3_18467transformer_block_3_18469transformer_block_3_18471transformer_block_3_18473transformer_block_3_18475transformer_block_3_18477transformer_block_3_18479transformer_block_3_18481transformer_block_3_18483transformer_block_3_18485transformer_block_3_18487transformer_block_3_18489transformer_block_3_18491transformer_block_3_18493transformer_block_3_18495*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_182622-
+transformer_block_3/StatefulPartitionedCall
flatten_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_185042
flatten_1/PartitionedCall
concatenate_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0input_5input_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_185202
concatenate_1/PartitionedCallД
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_18552dense_11_18554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_185412"
 dense_11/StatefulPartitionedCall
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_185692$
"dropout_10/StatefulPartitionedCallЙ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_12_18609dense_12_18611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_185982"
 dense_12/StatefulPartitionedCallМ
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_186262$
"dropout_11/StatefulPartitionedCallЙ
 dense_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_13_18665dense_13_18667*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_186542"
 dense_13/StatefulPartitionedCallН
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџR
!
_user_specified_name	input_4:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_5:QM
(
_output_shapes
:џџџџџџџџџЕ
!
_user_specified_name	input_6
н
}
(__inference_dense_13_layer_call_fn_20826

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_186542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
	
м
C__inference_dense_13_layer_call_and_return_conditional_losses_18654

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ющ
&
B__inference_model_1_layer_call_and_return_conditional_losses_19513
inputs_0
inputs_1
inputs_2E
Atoken_and_position_embedding_1_embedding_3_embedding_lookup_19215E
Atoken_and_position_embedding_1_embedding_2_embedding_lookup_192218
4conv1d_2_conv1d_expanddims_1_readvariableop_resource,
(conv1d_2_biasadd_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource/
+batch_normalization_2_assignmovingavg_192711
-batch_normalization_2_assignmovingavg_1_19277?
;batch_normalization_2_batchnorm_mul_readvariableop_resource;
7batch_normalization_2_batchnorm_readvariableop_resource/
+batch_normalization_3_assignmovingavg_193031
-batch_normalization_3_assignmovingavg_1_19309?
;batch_normalization_3_batchnorm_mul_readvariableop_resource;
7batch_normalization_3_batchnorm_readvariableop_resourceZ
Vtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_query_add_readvariableop_resourceX
Ttransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resourceZ
Vtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_value_add_readvariableop_resourcee
atransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resourceS
Otransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resourceN
Jtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resourceL
Htransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resourceO
Ktransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resourceM
Itransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resourceS
Otransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identityЂ9batch_normalization_2/AssignMovingAvg/AssignSubVariableOpЂ4batch_normalization_2/AssignMovingAvg/ReadVariableOpЂ;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOpЂ6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpЂ.batch_normalization_2/batchnorm/ReadVariableOpЂ2batch_normalization_2/batchnorm/mul/ReadVariableOpЂ9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpЂ4batch_normalization_3/AssignMovingAvg/ReadVariableOpЂ;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpЂ6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpЂ.batch_normalization_3/batchnorm/ReadVariableOpЂ2batch_normalization_3/batchnorm/mul/ReadVariableOpЂconv1d_2/BiasAdd/ReadVariableOpЂ+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpЂconv1d_3/BiasAdd/ReadVariableOpЂ+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpЂdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpЂdense_12/BiasAdd/ReadVariableOpЂdense_12/MatMul/ReadVariableOpЂdense_13/BiasAdd/ReadVariableOpЂdense_13/MatMul/ReadVariableOpЂ;token_and_position_embedding_1/embedding_2/embedding_lookupЂ;token_and_position_embedding_1/embedding_3/embedding_lookupЂBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpЂFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpЂBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpЂFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpЂNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpЂXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЂAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpЂKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЂCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpЂMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpЂCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpЂMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpЂ@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpЂBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpЂ?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpЂAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp
$token_and_position_embedding_1/ShapeShapeinputs_0*
T0*
_output_shapes
:2&
$token_and_position_embedding_1/ShapeЛ
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ24
2token_and_position_embedding_1/strided_slice/stackЖ
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_1/strided_slice/stack_1Ж
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_1/strided_slice/stack_2
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_1/strided_slice
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_1/range/start
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_1/range/delta
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2&
$token_and_position_embedding_1/rangeШ
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_3_embedding_lookup_19215-token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/19215*'
_output_shapes
:џџџџџџџџџ *
dtype02=
;token_and_position_embedding_1/embedding_3/embedding_lookup
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/19215*'
_output_shapes
:џџџџџџџџџ 2F
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2H
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1Ж
/token_and_position_embedding_1/embedding_2/CastCastinputs_0*

DstT0*

SrcT0*(
_output_shapes
:џџџџџџџџџR21
/token_and_position_embedding_1/embedding_2/Castг
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_2_embedding_lookup_192213token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/19221*,
_output_shapes
:џџџџџџџџџR *
dtype02=
;token_and_position_embedding_1/embedding_2/embedding_lookup
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/19221*,
_output_shapes
:џџџџџџџџџR 2F
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityЂ
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2H
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1Њ
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2$
"token_and_position_embedding_1/add
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2 
conv1d_2/conv1d/ExpandDims/dimв
conv1d_2/conv1d/ExpandDims
ExpandDims&token_and_position_embedding_1/add:z:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2
conv1d_2/conv1d/ExpandDimsг
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dimл
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d_2/conv1d/ExpandDims_1л
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџR *
paddingSAME*
strides
2
conv1d_2/conv1dЎ
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџR *
squeeze_dims

§џџџџџџџџ2
conv1d_2/conv1d/SqueezeЇ
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOpБ
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
conv1d_2/BiasAddx
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
conv1d_2/Relu
"average_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_3/ExpandDims/dimг
average_pooling1d_3/ExpandDims
ExpandDimsconv1d_2/Relu:activations:0+average_pooling1d_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2 
average_pooling1d_3/ExpandDimsх
average_pooling1d_3/AvgPoolAvgPool'average_pooling1d_3/ExpandDims:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
ksize
*
paddingVALID*
strides
2
average_pooling1d_3/AvgPoolЙ
average_pooling1d_3/SqueezeSqueeze$average_pooling1d_3/AvgPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims
2
average_pooling1d_3/Squeeze
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2 
conv1d_3/conv1d/ExpandDims/dimа
conv1d_3/conv1d/ExpandDims
ExpandDims$average_pooling1d_3/Squeeze:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2
conv1d_3/conv1d/ExpandDimsг
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dimл
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d_3/conv1d/ExpandDims_1л
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
paddingSAME*
strides
2
conv1d_3/conv1dЎ
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims

§џџџџџџџџ2
conv1d_3/conv1d/SqueezeЇ
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_3/BiasAdd/ReadVariableOpБ
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
conv1d_3/BiasAddx
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
conv1d_3/Relu
"average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_5/ExpandDims/dimо
average_pooling1d_5/ExpandDims
ExpandDims&token_and_position_embedding_1/add:z:0+average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2 
average_pooling1d_5/ExpandDimsц
average_pooling1d_5/AvgPoolAvgPool'average_pooling1d_5/ExpandDims:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# *
ksize	
Ќ*
paddingVALID*
strides	
Ќ2
average_pooling1d_5/AvgPoolИ
average_pooling1d_5/SqueezeSqueeze$average_pooling1d_5/AvgPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
squeeze_dims
2
average_pooling1d_5/Squeeze
"average_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_4/ExpandDims/dimг
average_pooling1d_4/ExpandDims
ExpandDimsconv1d_3/Relu:activations:0+average_pooling1d_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2 
average_pooling1d_4/ExpandDimsф
average_pooling1d_4/AvgPoolAvgPool'average_pooling1d_4/ExpandDims:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# *
ksize

*
paddingVALID*
strides

2
average_pooling1d_4/AvgPoolИ
average_pooling1d_4/SqueezeSqueeze$average_pooling1d_4/AvgPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
squeeze_dims
2
average_pooling1d_4/SqueezeН
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       26
4batch_normalization_2/moments/mean/reduction_indicesѓ
"batch_normalization_2/moments/meanMean$average_pooling1d_4/Squeeze:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2$
"batch_normalization_2/moments/meanТ
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*"
_output_shapes
: 2,
*batch_normalization_2/moments/StopGradient
/batch_normalization_2/moments/SquaredDifferenceSquaredDifference$average_pooling1d_4/Squeeze:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/batch_normalization_2/moments/SquaredDifferenceХ
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2:
8batch_normalization_2/moments/variance/reduction_indices
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2(
&batch_normalization_2/moments/varianceУ
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2'
%batch_normalization_2/moments/SqueezeЫ
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1
+batch_normalization_2/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/19271*
_output_shapes
: *
dtype0*
valueB
 *
з#<2-
+batch_normalization_2/AssignMovingAvg/decayд
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp+batch_normalization_2_assignmovingavg_19271*
_output_shapes
: *
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOpо
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/19271*
_output_shapes
: 2+
)batch_normalization_2/AssignMovingAvg/subе
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/19271*
_output_shapes
: 2+
)batch_normalization_2/AssignMovingAvg/mulБ
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp+batch_normalization_2_assignmovingavg_19271-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/19271*
_output_shapes
 *
dtype02;
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp
-batch_normalization_2/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/19277*
_output_shapes
: *
dtype0*
valueB
 *
з#<2/
-batch_normalization_2/AssignMovingAvg_1/decayк
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp-batch_normalization_2_assignmovingavg_1_19277*
_output_shapes
: *
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpш
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/19277*
_output_shapes
: 2-
+batch_normalization_2/AssignMovingAvg_1/subп
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/19277*
_output_shapes
: 2-
+batch_normalization_2/AssignMovingAvg_1/mulН
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp-batch_normalization_2_assignmovingavg_1_19277/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/19277*
_output_shapes
 *
dtype02=
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yк
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_2/batchnorm/addЅ
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_2/batchnorm/Rsqrtр
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOpн
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_2/batchnorm/mulк
%batch_normalization_2/batchnorm/mul_1Mul$average_pooling1d_4/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_2/batchnorm/mul_1г
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_2/batchnorm/mul_2д
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_2/batchnorm/ReadVariableOpй
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_2/batchnorm/subс
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_2/batchnorm/add_1Н
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       26
4batch_normalization_3/moments/mean/reduction_indicesѓ
"batch_normalization_3/moments/meanMean$average_pooling1d_5/Squeeze:output:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2$
"batch_normalization_3/moments/meanТ
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*"
_output_shapes
: 2,
*batch_normalization_3/moments/StopGradient
/batch_normalization_3/moments/SquaredDifferenceSquaredDifference$average_pooling1d_5/Squeeze:output:03batch_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/batch_normalization_3/moments/SquaredDifferenceХ
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2:
8batch_normalization_3/moments/variance/reduction_indices
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2(
&batch_normalization_3/moments/varianceУ
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2'
%batch_normalization_3/moments/SqueezeЫ
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2)
'batch_normalization_3/moments/Squeeze_1
+batch_normalization_3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization_3/AssignMovingAvg/19303*
_output_shapes
: *
dtype0*
valueB
 *
з#<2-
+batch_normalization_3/AssignMovingAvg/decayд
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp+batch_normalization_3_assignmovingavg_19303*
_output_shapes
: *
dtype026
4batch_normalization_3/AssignMovingAvg/ReadVariableOpо
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization_3/AssignMovingAvg/19303*
_output_shapes
: 2+
)batch_normalization_3/AssignMovingAvg/subе
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization_3/AssignMovingAvg/19303*
_output_shapes
: 2+
)batch_normalization_3/AssignMovingAvg/mulБ
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp+batch_normalization_3_assignmovingavg_19303-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization_3/AssignMovingAvg/19303*
_output_shapes
 *
dtype02;
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp
-batch_normalization_3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_1/19309*
_output_shapes
: *
dtype0*
valueB
 *
з#<2/
-batch_normalization_3/AssignMovingAvg_1/decayк
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp-batch_normalization_3_assignmovingavg_1_19309*
_output_shapes
: *
dtype028
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpш
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_1/19309*
_output_shapes
: 2-
+batch_normalization_3/AssignMovingAvg_1/subп
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_1/19309*
_output_shapes
: 2-
+batch_normalization_3/AssignMovingAvg_1/mulН
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp-batch_normalization_3_assignmovingavg_1_19309/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_1/19309*
_output_shapes
 *
dtype02=
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_3/batchnorm/add/yк
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_3/batchnorm/addЅ
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_3/batchnorm/Rsqrtр
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOpн
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_3/batchnorm/mulк
%batch_normalization_3/batchnorm/mul_1Mul$average_pooling1d_5/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_3/batchnorm/mul_1г
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_3/batchnorm/mul_2д
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_3/batchnorm/ReadVariableOpй
#batch_normalization_3/batchnorm/subSub6batch_normalization_3/batchnorm/ReadVariableOp:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_3/batchnorm/subс
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_3/batchnorm/add_1Ћ
	add_1/addAddV2)batch_normalization_2/batchnorm/add_1:z:0)batch_normalization_3/batchnorm/add_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
	add_1/addЙ
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpа
>transformer_block_3/multi_head_attention_3/query/einsum/EinsumEinsumadd_1/add:z:0Utransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/query/einsum/Einsum
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpХ
4transformer_block_3/multi_head_attention_3/query/addAddV2Gtransformer_block_3/multi_head_attention_3/query/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 26
4transformer_block_3/multi_head_attention_3/query/addГ
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЪ
<transformer_block_3/multi_head_attention_3/key/einsum/EinsumEinsumadd_1/add:z:0Stransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2>
<transformer_block_3/multi_head_attention_3/key/einsum/Einsum
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpJtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpН
2transformer_block_3/multi_head_attention_3/key/addAddV2Etransformer_block_3/multi_head_attention_3/key/einsum/Einsum:output:0Itransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 24
2transformer_block_3/multi_head_attention_3/key/addЙ
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpа
>transformer_block_3/multi_head_attention_3/value/einsum/EinsumEinsumadd_1/add:z:0Utransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/value/einsum/Einsum
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpХ
4transformer_block_3/multi_head_attention_3/value/addAddV2Gtransformer_block_3/multi_head_attention_3/value/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 26
4transformer_block_3/multi_head_attention_3/value/addЉ
0transformer_block_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>22
0transformer_block_3/multi_head_attention_3/Mul/y
.transformer_block_3/multi_head_attention_3/MulMul8transformer_block_3/multi_head_attention_3/query/add:z:09transformer_block_3/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# 20
.transformer_block_3/multi_head_attention_3/MulЬ
8transformer_block_3/multi_head_attention_3/einsum/EinsumEinsum6transformer_block_3/multi_head_attention_3/key/add:z:02transformer_block_3/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
equationaecd,abcd->acbe2:
8transformer_block_3/multi_head_attention_3/einsum/Einsum
:transformer_block_3/multi_head_attention_3/softmax/SoftmaxSoftmaxAtransformer_block_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2<
:transformer_block_3/multi_head_attention_3/softmax/SoftmaxЩ
@transformer_block_3/multi_head_attention_3/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2B
@transformer_block_3/multi_head_attention_3/dropout/dropout/Constв
>transformer_block_3/multi_head_attention_3/dropout/dropout/MulMulDtransformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0Itransformer_block_3/multi_head_attention_3/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2@
>transformer_block_3/multi_head_attention_3/dropout/dropout/Mulј
@transformer_block_3/multi_head_attention_3/dropout/dropout/ShapeShapeDtransformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2B
@transformer_block_3/multi_head_attention_3/dropout/dropout/Shapeс
Wtransformer_block_3/multi_head_attention_3/dropout/dropout/random_uniform/RandomUniformRandomUniformItransformer_block_3/multi_head_attention_3/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
dtype0*

seed*2Y
Wtransformer_block_3/multi_head_attention_3/dropout/dropout/random_uniform/RandomUniformл
Itransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Itransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual/y
Gtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqualGreaterEqual`transformer_block_3/multi_head_attention_3/dropout/dropout/random_uniform/RandomUniform:output:0Rtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2I
Gtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual 
?transformer_block_3/multi_head_attention_3/dropout/dropout/CastCastKtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ##2A
?transformer_block_3/multi_head_attention_3/dropout/dropout/CastЮ
@transformer_block_3/multi_head_attention_3/dropout/dropout/Mul_1MulBtransformer_block_3/multi_head_attention_3/dropout/dropout/Mul:z:0Ctransformer_block_3/multi_head_attention_3/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ##2B
@transformer_block_3/multi_head_attention_3/dropout/dropout/Mul_1ф
:transformer_block_3/multi_head_attention_3/einsum_1/EinsumEinsumDtransformer_block_3/multi_head_attention_3/dropout/dropout/Mul_1:z:08transformer_block_3/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationacbe,aecd->abcd2<
:transformer_block_3/multi_head_attention_3/einsum_1/Einsumк
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЃ
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumCtransformer_block_3/multi_head_attention_3/einsum_1/Einsum:output:0`transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ# *
equationabcd,cde->abe2K
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumД
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpэ
?transformer_block_3/multi_head_attention_3/attention_output/addAddV2Rtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0Vtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2A
?transformer_block_3/multi_head_attention_3/attention_output/add
+transformer_block_3/dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2-
+transformer_block_3/dropout_8/dropout/Const
)transformer_block_3/dropout_8/dropout/MulMulCtransformer_block_3/multi_head_attention_3/attention_output/add:z:04transformer_block_3/dropout_8/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2+
)transformer_block_3/dropout_8/dropout/MulЭ
+transformer_block_3/dropout_8/dropout/ShapeShapeCtransformer_block_3/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:2-
+transformer_block_3/dropout_8/dropout/ShapeЋ
Btransformer_block_3/dropout_8/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_3/dropout_8/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
dtype0*

seed**
seed22D
Btransformer_block_3/dropout_8/dropout/random_uniform/RandomUniformБ
4transformer_block_3/dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=26
4transformer_block_3/dropout_8/dropout/GreaterEqual/yК
2transformer_block_3/dropout_8/dropout/GreaterEqualGreaterEqualKtransformer_block_3/dropout_8/dropout/random_uniform/RandomUniform:output:0=transformer_block_3/dropout_8/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 24
2transformer_block_3/dropout_8/dropout/GreaterEqualн
*transformer_block_3/dropout_8/dropout/CastCast6transformer_block_3/dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ# 2,
*transformer_block_3/dropout_8/dropout/Castі
+transformer_block_3/dropout_8/dropout/Mul_1Mul-transformer_block_3/dropout_8/dropout/Mul:z:0.transformer_block_3/dropout_8/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2-
+transformer_block_3/dropout_8/dropout/Mul_1Б
transformer_block_3/addAddV2add_1/add:z:0/transformer_block_3/dropout_8/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
transformer_block_3/addо
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indicesЏ
6transformer_block_3/layer_normalization_6/moments/meanMeantransformer_block_3/add:z:0Qtransformer_block_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(28
6transformer_block_3/layer_normalization_6/moments/mean
>transformer_block_3/layer_normalization_6/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2@
>transformer_block_3/layer_normalization_6/moments/StopGradientЛ
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add:z:0Gtransformer_block_3/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2E
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceц
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesч
:transformer_block_3/layer_normalization_6/moments/varianceMeanGtransformer_block_3/layer_normalization_6/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2<
:transformer_block_3/layer_normalization_6/moments/varianceЛ
9transformer_block_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752;
9transformer_block_3/layer_normalization_6/batchnorm/add/yК
7transformer_block_3/layer_normalization_6/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_6/moments/variance:output:0Btransformer_block_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#29
7transformer_block_3/layer_normalization_6/batchnorm/addђ
9transformer_block_3/layer_normalization_6/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2;
9transformer_block_3/layer_normalization_6/batchnorm/Rsqrt
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpО
7transformer_block_3/layer_normalization_6/batchnorm/mulMul=transformer_block_3/layer_normalization_6/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_6/batchnorm/mul
9transformer_block_3/layer_normalization_6/batchnorm/mul_1Multransformer_block_3/add:z:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_1Б
9transformer_block_3/layer_normalization_6/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_6/moments/mean:output:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_2
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpК
7transformer_block_3/layer_normalization_6/batchnorm/subSubJtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_6/batchnorm/subБ
9transformer_block_3/layer_normalization_6/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_6/batchnorm/add_1
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02C
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpМ
7transformer_block_3/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_3/sequential_3/dense_9/Tensordot/axesУ
7transformer_block_3/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_3/sequential_3/dense_9/Tensordot/freeс
8transformer_block_3/sequential_3/dense_9/Tensordot/ShapeShape=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/ShapeЦ
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2Ъ
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisЄ
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Ktransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1О
8transformer_block_3/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_3/sequential_3/dense_9/Tensordot/ConstЄ
7transformer_block_3/sequential_3/dense_9/Tensordot/ProdProdDtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Atransformer_block_3/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_3/sequential_3/dense_9/Tensordot/ProdТ
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Ќ
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1ProdFtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1Т
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axis§
9transformer_block_3/sequential_3/dense_9/Tensordot/concatConcatV2@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Gtransformer_block_3/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_9/Tensordot/concatА
8transformer_block_3/sequential_3/dense_9/Tensordot/stackPack@transformer_block_3/sequential_3/dense_9/Tensordot/Prod:output:0Btransformer_block_3/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/stackТ
<transformer_block_3/sequential_3/dense_9/Tensordot/transpose	Transpose=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0Btransformer_block_3/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2>
<transformer_block_3/sequential_3/dense_9/Tensordot/transposeУ
:transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeReshape@transformer_block_3/sequential_3/dense_9/Tensordot/transpose:y:0Atransformer_block_3/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2<
:transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeТ
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMulMatMulCtransformer_block_3/sequential_3/dense_9/Tensordot/Reshape:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2;
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMulТ
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Ц
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1ConcatV2Dtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_2:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1Д
2transformer_block_3/sequential_3/dense_9/TensordotReshapeCtransformer_block_3/sequential_3/dense_9/Tensordot/MatMul:product:0Dtransformer_block_3/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@24
2transformer_block_3/sequential_3/dense_9/Tensordot
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpЋ
0transformer_block_3/sequential_3/dense_9/BiasAddBiasAdd;transformer_block_3/sequential_3/dense_9/Tensordot:output:0Gtransformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@22
0transformer_block_3/sequential_3/dense_9/BiasAddз
-transformer_block_3/sequential_3/dense_9/ReluRelu9transformer_block_3/sequential_3/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2/
-transformer_block_3/sequential_3/dense_9/Relu
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02D
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpО
8transformer_block_3/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_3/sequential_3/dense_10/Tensordot/axesХ
8transformer_block_3/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_3/sequential_3/dense_10/Tensordot/freeс
9transformer_block_3/sequential_3/dense_10/Tensordot/ShapeShape;transformer_block_3/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/ShapeШ
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisЃ
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2Ь
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisЉ
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Ltransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1Р
9transformer_block_3/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_3/sequential_3/dense_10/Tensordot/ConstЈ
8transformer_block_3/sequential_3/dense_10/Tensordot/ProdProdEtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Btransformer_block_3/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_3/sequential_3/dense_10/Tensordot/ProdФ
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1А
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1ProdGtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1Ф
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axis
:transformer_block_3/sequential_3/dense_10/Tensordot/concatConcatV2Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Htransformer_block_3/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_3/sequential_3/dense_10/Tensordot/concatД
9transformer_block_3/sequential_3/dense_10/Tensordot/stackPackAtransformer_block_3/sequential_3/dense_10/Tensordot/Prod:output:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/stackУ
=transformer_block_3/sequential_3/dense_10/Tensordot/transpose	Transpose;transformer_block_3/sequential_3/dense_9/Relu:activations:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2?
=transformer_block_3/sequential_3/dense_10/Tensordot/transposeЧ
;transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeReshapeAtransformer_block_3/sequential_3/dense_10/Tensordot/transpose:y:0Btransformer_block_3/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2=
;transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeЦ
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMulMatMulDtransformer_block_3/sequential_3/dense_10/Tensordot/Reshape:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2<
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMulФ
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Ш
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1ConcatV2Etransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_2:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1И
3transformer_block_3/sequential_3/dense_10/TensordotReshapeDtransformer_block_3/sequential_3/dense_10/Tensordot/MatMul:product:0Etransformer_block_3/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 25
3transformer_block_3/sequential_3/dense_10/Tensordot
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02B
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpЏ
1transformer_block_3/sequential_3/dense_10/BiasAddBiasAdd<transformer_block_3/sequential_3/dense_10/Tensordot:output:0Htransformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 23
1transformer_block_3/sequential_3/dense_10/BiasAdd
+transformer_block_3/dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2-
+transformer_block_3/dropout_9/dropout/Const
)transformer_block_3/dropout_9/dropout/MulMul:transformer_block_3/sequential_3/dense_10/BiasAdd:output:04transformer_block_3/dropout_9/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2+
)transformer_block_3/dropout_9/dropout/MulФ
+transformer_block_3/dropout_9/dropout/ShapeShape:transformer_block_3/sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:2-
+transformer_block_3/dropout_9/dropout/ShapeЋ
Btransformer_block_3/dropout_9/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_3/dropout_9/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
dtype0*

seed**
seed22D
Btransformer_block_3/dropout_9/dropout/random_uniform/RandomUniformБ
4transformer_block_3/dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=26
4transformer_block_3/dropout_9/dropout/GreaterEqual/yК
2transformer_block_3/dropout_9/dropout/GreaterEqualGreaterEqualKtransformer_block_3/dropout_9/dropout/random_uniform/RandomUniform:output:0=transformer_block_3/dropout_9/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 24
2transformer_block_3/dropout_9/dropout/GreaterEqualн
*transformer_block_3/dropout_9/dropout/CastCast6transformer_block_3/dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ# 2,
*transformer_block_3/dropout_9/dropout/Castі
+transformer_block_3/dropout_9/dropout/Mul_1Mul-transformer_block_3/dropout_9/dropout/Mul:z:0.transformer_block_3/dropout_9/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2-
+transformer_block_3/dropout_9/dropout/Mul_1х
transformer_block_3/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0/transformer_block_3/dropout_9/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
transformer_block_3/add_1о
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indicesБ
6transformer_block_3/layer_normalization_7/moments/meanMeantransformer_block_3/add_1:z:0Qtransformer_block_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(28
6transformer_block_3/layer_normalization_7/moments/mean
>transformer_block_3/layer_normalization_7/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2@
>transformer_block_3/layer_normalization_7/moments/StopGradientН
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add_1:z:0Gtransformer_block_3/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2E
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceц
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesч
:transformer_block_3/layer_normalization_7/moments/varianceMeanGtransformer_block_3/layer_normalization_7/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2<
:transformer_block_3/layer_normalization_7/moments/varianceЛ
9transformer_block_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752;
9transformer_block_3/layer_normalization_7/batchnorm/add/yК
7transformer_block_3/layer_normalization_7/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_7/moments/variance:output:0Btransformer_block_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#29
7transformer_block_3/layer_normalization_7/batchnorm/addђ
9transformer_block_3/layer_normalization_7/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2;
9transformer_block_3/layer_normalization_7/batchnorm/Rsqrt
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpО
7transformer_block_3/layer_normalization_7/batchnorm/mulMul=transformer_block_3/layer_normalization_7/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_7/batchnorm/mul
9transformer_block_3/layer_normalization_7/batchnorm/mul_1Multransformer_block_3/add_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_1Б
9transformer_block_3/layer_normalization_7/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_7/moments/mean:output:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_2
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpК
7transformer_block_3/layer_normalization_7/batchnorm/subSubJtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_7/batchnorm/subБ
9transformer_block_3/layer_normalization_7/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_7/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_7/batchnorm/add_1s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ`  2
flatten_1/ConstН
flatten_1/ReshapeReshape=transformer_block_3/layer_normalization_7/batchnorm/add_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2
flatten_1/Reshapex
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisШ
concatenate_1/concatConcatV2flatten_1/Reshape:output:0inputs_1inputs_2"concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
2
concatenate_1/concatЉ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	
@*
dtype02 
dense_11/MatMul/ReadVariableOpЅ
dense_11/MatMulMatMulconcatenate_1/concat:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_11/MatMulЇ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_11/BiasAdd/ReadVariableOpЅ
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_11/BiasAdds
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_11/Reluy
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_10/dropout/ConstЉ
dropout_10/dropout/MulMuldense_11/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_10/dropout/Mul
dropout_10/dropout/ShapeShapedense_11/Relu:activations:0*
T0*
_output_shapes
:2
dropout_10/dropout/Shapeю
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed**
seed221
/dropout_10/dropout/random_uniform/RandomUniform
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2#
!dropout_10/dropout/GreaterEqual/yъ
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
dropout_10/dropout/GreaterEqual 
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_10/dropout/CastІ
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_10/dropout/Mul_1Ј
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_12/MatMul/ReadVariableOpЄ
dense_12/MatMulMatMuldropout_10/dropout/Mul_1:z:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_12/MatMulЇ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_12/BiasAdd/ReadVariableOpЅ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_12/Reluy
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_11/dropout/ConstЉ
dropout_11/dropout/MulMuldense_12/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_11/dropout/Mul
dropout_11/dropout/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2
dropout_11/dropout/Shapeю
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed**
seed221
/dropout_11/dropout/random_uniform/RandomUniform
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2#
!dropout_11/dropout/GreaterEqual/yъ
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
dropout_11/dropout/GreaterEqual 
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_11/dropout/CastІ
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_11/dropout/Mul_1Ј
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_13/MatMul/ReadVariableOpЄ
dense_13/MatMulMatMuldropout_11/dropout/Mul_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/MatMulЇ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOpЅ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/BiasAdd
IdentityIdentitydense_13/BiasAdd:output:0:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_2/AssignMovingAvg/ReadVariableOp<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_3/AssignMovingAvg/ReadVariableOp<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp3^batch_normalization_3/batchnorm/mul/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupC^transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpC^transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpO^transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpY^transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpL^transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpA^transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpC^transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp@^transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpB^transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::2v
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2v
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp2
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp2
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2 
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp2Д
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp2
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp2
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp2
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp2
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp2
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp2
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:R N
(
_output_shapes
:џџџџџџџџџR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:џџџџџџџџџЕ
"
_user_specified_name
inputs/2
а
т
C__inference_dense_10_layer_call_and_return_conditional_losses_17718

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
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
Tensordot/GatherV2/axisб
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
Tensordot/GatherV2_1/axisз
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ#@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ#@
 
_user_specified_nameinputs
в
љ
G__inference_sequential_3_layer_call_and_return_conditional_losses_17793

inputs
dense_9_17782
dense_9_17784
dense_10_17787
dense_10_17789
identityЂ dense_10/StatefulPartitionedCallЂdense_9/StatefulPartitionedCall
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_17782dense_9_17784*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_176722!
dense_9/StatefulPartitionedCallК
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_17787dense_10_17789*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_177182"
 dense_10/StatefulPartitionedCallЦ
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs

і
C__inference_conv1d_2_layer_call_and_return_conditional_losses_17866

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2
conv1d/ExpandDimsИ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЗ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/ExpandDims_1З
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџR *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџR *
squeeze_dims

§џџџџџџџџ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџR 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
ReluЉ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџR 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџR ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџR 
 
_user_specified_nameinputs
Њ
Q
%__inference_add_1_layer_call_fn_20338
inputs_0
inputs_1
identityв
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_181052
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:џџџџџџџџџ# :џџџџџџџџџ# :U Q
+
_output_shapes
:џџџџџџџџџ# 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:џџџџџџџџџ# 
"
_user_specified_name
inputs/1

E
)__inference_flatten_1_layer_call_fn_20698

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_185042
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ# :S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Ы
І
,__inference_sequential_3_layer_call_fn_17804
dense_9_input
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_177932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ# 
'
_user_specified_namedense_9_input
Хл
Ы$
B__inference_model_1_layer_call_and_return_conditional_losses_19757
inputs_0
inputs_1
inputs_2E
Atoken_and_position_embedding_1_embedding_3_embedding_lookup_19526E
Atoken_and_position_embedding_1_embedding_2_embedding_lookup_195328
4conv1d_2_conv1d_expanddims_1_readvariableop_resource,
(conv1d_2_biasadd_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource;
7batch_normalization_2_batchnorm_readvariableop_resource?
;batch_normalization_2_batchnorm_mul_readvariableop_resource=
9batch_normalization_2_batchnorm_readvariableop_1_resource=
9batch_normalization_2_batchnorm_readvariableop_2_resource;
7batch_normalization_3_batchnorm_readvariableop_resource?
;batch_normalization_3_batchnorm_mul_readvariableop_resource=
9batch_normalization_3_batchnorm_readvariableop_1_resource=
9batch_normalization_3_batchnorm_readvariableop_2_resourceZ
Vtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_query_add_readvariableop_resourceX
Ttransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resourceZ
Vtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_value_add_readvariableop_resourcee
atransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resourceS
Otransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resourceN
Jtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resourceL
Htransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resourceO
Ktransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resourceM
Itransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resourceS
Otransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identityЂ.batch_normalization_2/batchnorm/ReadVariableOpЂ0batch_normalization_2/batchnorm/ReadVariableOp_1Ђ0batch_normalization_2/batchnorm/ReadVariableOp_2Ђ2batch_normalization_2/batchnorm/mul/ReadVariableOpЂ.batch_normalization_3/batchnorm/ReadVariableOpЂ0batch_normalization_3/batchnorm/ReadVariableOp_1Ђ0batch_normalization_3/batchnorm/ReadVariableOp_2Ђ2batch_normalization_3/batchnorm/mul/ReadVariableOpЂconv1d_2/BiasAdd/ReadVariableOpЂ+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpЂconv1d_3/BiasAdd/ReadVariableOpЂ+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpЂdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpЂdense_12/BiasAdd/ReadVariableOpЂdense_12/MatMul/ReadVariableOpЂdense_13/BiasAdd/ReadVariableOpЂdense_13/MatMul/ReadVariableOpЂ;token_and_position_embedding_1/embedding_2/embedding_lookupЂ;token_and_position_embedding_1/embedding_3/embedding_lookupЂBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpЂFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpЂBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpЂFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpЂNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpЂXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЂAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpЂKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЂCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpЂMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpЂCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpЂMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpЂ@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpЂBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpЂ?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpЂAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp
$token_and_position_embedding_1/ShapeShapeinputs_0*
T0*
_output_shapes
:2&
$token_and_position_embedding_1/ShapeЛ
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ24
2token_and_position_embedding_1/strided_slice/stackЖ
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_1/strided_slice/stack_1Ж
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_1/strided_slice/stack_2
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_1/strided_slice
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_1/range/start
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_1/range/delta
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2&
$token_and_position_embedding_1/rangeШ
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_3_embedding_lookup_19526-token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/19526*'
_output_shapes
:џџџџџџџџџ *
dtype02=
;token_and_position_embedding_1/embedding_3/embedding_lookup
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/19526*'
_output_shapes
:џџџџџџџџџ 2F
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2H
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1Ж
/token_and_position_embedding_1/embedding_2/CastCastinputs_0*

DstT0*

SrcT0*(
_output_shapes
:џџџџџџџџџR21
/token_and_position_embedding_1/embedding_2/Castг
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_2_embedding_lookup_195323token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/19532*,
_output_shapes
:џџџџџџџџџR *
dtype02=
;token_and_position_embedding_1/embedding_2/embedding_lookup
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/19532*,
_output_shapes
:џџџџџџџџџR 2F
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityЂ
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2H
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1Њ
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2$
"token_and_position_embedding_1/add
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2 
conv1d_2/conv1d/ExpandDims/dimв
conv1d_2/conv1d/ExpandDims
ExpandDims&token_and_position_embedding_1/add:z:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2
conv1d_2/conv1d/ExpandDimsг
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dimл
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d_2/conv1d/ExpandDims_1л
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџR *
paddingSAME*
strides
2
conv1d_2/conv1dЎ
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџR *
squeeze_dims

§џџџџџџџџ2
conv1d_2/conv1d/SqueezeЇ
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOpБ
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
conv1d_2/BiasAddx
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
conv1d_2/Relu
"average_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_3/ExpandDims/dimг
average_pooling1d_3/ExpandDims
ExpandDimsconv1d_2/Relu:activations:0+average_pooling1d_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2 
average_pooling1d_3/ExpandDimsх
average_pooling1d_3/AvgPoolAvgPool'average_pooling1d_3/ExpandDims:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
ksize
*
paddingVALID*
strides
2
average_pooling1d_3/AvgPoolЙ
average_pooling1d_3/SqueezeSqueeze$average_pooling1d_3/AvgPool:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims
2
average_pooling1d_3/Squeeze
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2 
conv1d_3/conv1d/ExpandDims/dimа
conv1d_3/conv1d/ExpandDims
ExpandDims$average_pooling1d_3/Squeeze:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2
conv1d_3/conv1d/ExpandDimsг
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dimл
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d_3/conv1d/ExpandDims_1л
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
paddingSAME*
strides
2
conv1d_3/conv1dЎ
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims

§џџџџџџџџ2
conv1d_3/conv1d/SqueezeЇ
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_3/BiasAdd/ReadVariableOpБ
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
conv1d_3/BiasAddx
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
conv1d_3/Relu
"average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_5/ExpandDims/dimо
average_pooling1d_5/ExpandDims
ExpandDims&token_and_position_embedding_1/add:z:0+average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџR 2 
average_pooling1d_5/ExpandDimsц
average_pooling1d_5/AvgPoolAvgPool'average_pooling1d_5/ExpandDims:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# *
ksize	
Ќ*
paddingVALID*
strides	
Ќ2
average_pooling1d_5/AvgPoolИ
average_pooling1d_5/SqueezeSqueeze$average_pooling1d_5/AvgPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
squeeze_dims
2
average_pooling1d_5/Squeeze
"average_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_4/ExpandDims/dimг
average_pooling1d_4/ExpandDims
ExpandDimsconv1d_3/Relu:activations:0+average_pooling1d_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2 
average_pooling1d_4/ExpandDimsф
average_pooling1d_4/AvgPoolAvgPool'average_pooling1d_4/ExpandDims:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# *
ksize

*
paddingVALID*
strides

2
average_pooling1d_4/AvgPoolИ
average_pooling1d_4/SqueezeSqueeze$average_pooling1d_4/AvgPool:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
squeeze_dims
2
average_pooling1d_4/Squeezeд
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yр
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_2/batchnorm/addЅ
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_2/batchnorm/Rsqrtр
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOpн
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_2/batchnorm/mulк
%batch_normalization_2/batchnorm/mul_1Mul$average_pooling1d_4/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_2/batchnorm/mul_1к
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_1н
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_2/batchnorm/mul_2к
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_2л
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_2/batchnorm/subс
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_2/batchnorm/add_1д
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_3/batchnorm/add/yр
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_3/batchnorm/addЅ
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_3/batchnorm/Rsqrtр
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOpн
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_3/batchnorm/mulк
%batch_normalization_3/batchnorm/mul_1Mul$average_pooling1d_5/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_3/batchnorm/mul_1к
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_1н
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_3/batchnorm/mul_2к
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_2л
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_3/batchnorm/subс
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%batch_normalization_3/batchnorm/add_1Ћ
	add_1/addAddV2)batch_normalization_2/batchnorm/add_1:z:0)batch_normalization_3/batchnorm/add_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
	add_1/addЙ
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpа
>transformer_block_3/multi_head_attention_3/query/einsum/EinsumEinsumadd_1/add:z:0Utransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/query/einsum/Einsum
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpХ
4transformer_block_3/multi_head_attention_3/query/addAddV2Gtransformer_block_3/multi_head_attention_3/query/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 26
4transformer_block_3/multi_head_attention_3/query/addГ
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЪ
<transformer_block_3/multi_head_attention_3/key/einsum/EinsumEinsumadd_1/add:z:0Stransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2>
<transformer_block_3/multi_head_attention_3/key/einsum/Einsum
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpJtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpН
2transformer_block_3/multi_head_attention_3/key/addAddV2Etransformer_block_3/multi_head_attention_3/key/einsum/Einsum:output:0Itransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 24
2transformer_block_3/multi_head_attention_3/key/addЙ
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpа
>transformer_block_3/multi_head_attention_3/value/einsum/EinsumEinsumadd_1/add:z:0Utransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/value/einsum/Einsum
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpХ
4transformer_block_3/multi_head_attention_3/value/addAddV2Gtransformer_block_3/multi_head_attention_3/value/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 26
4transformer_block_3/multi_head_attention_3/value/addЉ
0transformer_block_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>22
0transformer_block_3/multi_head_attention_3/Mul/y
.transformer_block_3/multi_head_attention_3/MulMul8transformer_block_3/multi_head_attention_3/query/add:z:09transformer_block_3/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# 20
.transformer_block_3/multi_head_attention_3/MulЬ
8transformer_block_3/multi_head_attention_3/einsum/EinsumEinsum6transformer_block_3/multi_head_attention_3/key/add:z:02transformer_block_3/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
equationaecd,abcd->acbe2:
8transformer_block_3/multi_head_attention_3/einsum/Einsum
:transformer_block_3/multi_head_attention_3/softmax/SoftmaxSoftmaxAtransformer_block_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2<
:transformer_block_3/multi_head_attention_3/softmax/Softmax
;transformer_block_3/multi_head_attention_3/dropout/IdentityIdentityDtransformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ##2=
;transformer_block_3/multi_head_attention_3/dropout/Identityф
:transformer_block_3/multi_head_attention_3/einsum_1/EinsumEinsumDtransformer_block_3/multi_head_attention_3/dropout/Identity:output:08transformer_block_3/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationacbe,aecd->abcd2<
:transformer_block_3/multi_head_attention_3/einsum_1/Einsumк
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЃ
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumCtransformer_block_3/multi_head_attention_3/einsum_1/Einsum:output:0`transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ# *
equationabcd,cde->abe2K
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumД
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpэ
?transformer_block_3/multi_head_attention_3/attention_output/addAddV2Rtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0Vtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2A
?transformer_block_3/multi_head_attention_3/attention_output/addз
&transformer_block_3/dropout_8/IdentityIdentityCtransformer_block_3/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2(
&transformer_block_3/dropout_8/IdentityБ
transformer_block_3/addAddV2add_1/add:z:0/transformer_block_3/dropout_8/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
transformer_block_3/addо
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indicesЏ
6transformer_block_3/layer_normalization_6/moments/meanMeantransformer_block_3/add:z:0Qtransformer_block_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(28
6transformer_block_3/layer_normalization_6/moments/mean
>transformer_block_3/layer_normalization_6/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2@
>transformer_block_3/layer_normalization_6/moments/StopGradientЛ
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add:z:0Gtransformer_block_3/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2E
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceц
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesч
:transformer_block_3/layer_normalization_6/moments/varianceMeanGtransformer_block_3/layer_normalization_6/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2<
:transformer_block_3/layer_normalization_6/moments/varianceЛ
9transformer_block_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752;
9transformer_block_3/layer_normalization_6/batchnorm/add/yК
7transformer_block_3/layer_normalization_6/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_6/moments/variance:output:0Btransformer_block_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#29
7transformer_block_3/layer_normalization_6/batchnorm/addђ
9transformer_block_3/layer_normalization_6/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2;
9transformer_block_3/layer_normalization_6/batchnorm/Rsqrt
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpО
7transformer_block_3/layer_normalization_6/batchnorm/mulMul=transformer_block_3/layer_normalization_6/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_6/batchnorm/mul
9transformer_block_3/layer_normalization_6/batchnorm/mul_1Multransformer_block_3/add:z:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_1Б
9transformer_block_3/layer_normalization_6/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_6/moments/mean:output:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_2
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpК
7transformer_block_3/layer_normalization_6/batchnorm/subSubJtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_6/batchnorm/subБ
9transformer_block_3/layer_normalization_6/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_6/batchnorm/add_1
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02C
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpМ
7transformer_block_3/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_3/sequential_3/dense_9/Tensordot/axesУ
7transformer_block_3/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_3/sequential_3/dense_9/Tensordot/freeс
8transformer_block_3/sequential_3/dense_9/Tensordot/ShapeShape=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/ShapeЦ
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2Ъ
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisЄ
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Ktransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1О
8transformer_block_3/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_3/sequential_3/dense_9/Tensordot/ConstЄ
7transformer_block_3/sequential_3/dense_9/Tensordot/ProdProdDtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Atransformer_block_3/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_3/sequential_3/dense_9/Tensordot/ProdТ
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Ќ
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1ProdFtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1Т
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axis§
9transformer_block_3/sequential_3/dense_9/Tensordot/concatConcatV2@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Gtransformer_block_3/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_9/Tensordot/concatА
8transformer_block_3/sequential_3/dense_9/Tensordot/stackPack@transformer_block_3/sequential_3/dense_9/Tensordot/Prod:output:0Btransformer_block_3/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/stackТ
<transformer_block_3/sequential_3/dense_9/Tensordot/transpose	Transpose=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0Btransformer_block_3/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2>
<transformer_block_3/sequential_3/dense_9/Tensordot/transposeУ
:transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeReshape@transformer_block_3/sequential_3/dense_9/Tensordot/transpose:y:0Atransformer_block_3/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2<
:transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeТ
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMulMatMulCtransformer_block_3/sequential_3/dense_9/Tensordot/Reshape:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2;
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMulТ
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Ц
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1ConcatV2Dtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_2:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1Д
2transformer_block_3/sequential_3/dense_9/TensordotReshapeCtransformer_block_3/sequential_3/dense_9/Tensordot/MatMul:product:0Dtransformer_block_3/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@24
2transformer_block_3/sequential_3/dense_9/Tensordot
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpЋ
0transformer_block_3/sequential_3/dense_9/BiasAddBiasAdd;transformer_block_3/sequential_3/dense_9/Tensordot:output:0Gtransformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@22
0transformer_block_3/sequential_3/dense_9/BiasAddз
-transformer_block_3/sequential_3/dense_9/ReluRelu9transformer_block_3/sequential_3/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2/
-transformer_block_3/sequential_3/dense_9/Relu
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02D
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpО
8transformer_block_3/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_3/sequential_3/dense_10/Tensordot/axesХ
8transformer_block_3/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_3/sequential_3/dense_10/Tensordot/freeс
9transformer_block_3/sequential_3/dense_10/Tensordot/ShapeShape;transformer_block_3/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/ShapeШ
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisЃ
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2Ь
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisЉ
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Ltransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1Р
9transformer_block_3/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_3/sequential_3/dense_10/Tensordot/ConstЈ
8transformer_block_3/sequential_3/dense_10/Tensordot/ProdProdEtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Btransformer_block_3/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_3/sequential_3/dense_10/Tensordot/ProdФ
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1А
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1ProdGtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1Ф
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axis
:transformer_block_3/sequential_3/dense_10/Tensordot/concatConcatV2Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Htransformer_block_3/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_3/sequential_3/dense_10/Tensordot/concatД
9transformer_block_3/sequential_3/dense_10/Tensordot/stackPackAtransformer_block_3/sequential_3/dense_10/Tensordot/Prod:output:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/stackУ
=transformer_block_3/sequential_3/dense_10/Tensordot/transpose	Transpose;transformer_block_3/sequential_3/dense_9/Relu:activations:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2?
=transformer_block_3/sequential_3/dense_10/Tensordot/transposeЧ
;transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeReshapeAtransformer_block_3/sequential_3/dense_10/Tensordot/transpose:y:0Btransformer_block_3/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2=
;transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeЦ
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMulMatMulDtransformer_block_3/sequential_3/dense_10/Tensordot/Reshape:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2<
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMulФ
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Ш
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1ConcatV2Etransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_2:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1И
3transformer_block_3/sequential_3/dense_10/TensordotReshapeDtransformer_block_3/sequential_3/dense_10/Tensordot/MatMul:product:0Etransformer_block_3/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 25
3transformer_block_3/sequential_3/dense_10/Tensordot
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02B
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpЏ
1transformer_block_3/sequential_3/dense_10/BiasAddBiasAdd<transformer_block_3/sequential_3/dense_10/Tensordot:output:0Htransformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 23
1transformer_block_3/sequential_3/dense_10/BiasAddЮ
&transformer_block_3/dropout_9/IdentityIdentity:transformer_block_3/sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2(
&transformer_block_3/dropout_9/Identityх
transformer_block_3/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0/transformer_block_3/dropout_9/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
transformer_block_3/add_1о
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indicesБ
6transformer_block_3/layer_normalization_7/moments/meanMeantransformer_block_3/add_1:z:0Qtransformer_block_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(28
6transformer_block_3/layer_normalization_7/moments/mean
>transformer_block_3/layer_normalization_7/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2@
>transformer_block_3/layer_normalization_7/moments/StopGradientН
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add_1:z:0Gtransformer_block_3/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2E
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceц
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesч
:transformer_block_3/layer_normalization_7/moments/varianceMeanGtransformer_block_3/layer_normalization_7/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2<
:transformer_block_3/layer_normalization_7/moments/varianceЛ
9transformer_block_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752;
9transformer_block_3/layer_normalization_7/batchnorm/add/yК
7transformer_block_3/layer_normalization_7/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_7/moments/variance:output:0Btransformer_block_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#29
7transformer_block_3/layer_normalization_7/batchnorm/addђ
9transformer_block_3/layer_normalization_7/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2;
9transformer_block_3/layer_normalization_7/batchnorm/Rsqrt
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpО
7transformer_block_3/layer_normalization_7/batchnorm/mulMul=transformer_block_3/layer_normalization_7/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_7/batchnorm/mul
9transformer_block_3/layer_normalization_7/batchnorm/mul_1Multransformer_block_3/add_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_1Б
9transformer_block_3/layer_normalization_7/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_7/moments/mean:output:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_2
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpК
7transformer_block_3/layer_normalization_7/batchnorm/subSubJtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 29
7transformer_block_3/layer_normalization_7/batchnorm/subБ
9transformer_block_3/layer_normalization_7/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_7/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2;
9transformer_block_3/layer_normalization_7/batchnorm/add_1s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ`  2
flatten_1/ConstН
flatten_1/ReshapeReshape=transformer_block_3/layer_normalization_7/batchnorm/add_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2
flatten_1/Reshapex
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisШ
concatenate_1/concatConcatV2flatten_1/Reshape:output:0inputs_1inputs_2"concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
2
concatenate_1/concatЉ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	
@*
dtype02 
dense_11/MatMul/ReadVariableOpЅ
dense_11/MatMulMatMulconcatenate_1/concat:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_11/MatMulЇ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_11/BiasAdd/ReadVariableOpЅ
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_11/BiasAdds
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_11/Relu
dropout_10/IdentityIdentitydense_11/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_10/IdentityЈ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_12/MatMul/ReadVariableOpЄ
dense_12/MatMulMatMuldropout_10/Identity:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_12/MatMulЇ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_12/BiasAdd/ReadVariableOpЅ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_12/Relu
dropout_11/IdentityIdentitydense_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_11/IdentityЈ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_13/MatMul/ReadVariableOpЄ
dense_13/MatMulMatMuldropout_11/Identity:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/MatMulЇ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOpЅ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/BiasAddў
IdentityIdentitydense_13/BiasAdd:output:0/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupC^transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpC^transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpO^transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpY^transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpL^transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpA^transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpC^transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp@^transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpB^transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp2
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp2
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2 
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp2Д
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp2
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp2
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp2
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp2
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp2
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp2
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:R N
(
_output_shapes
:џџџџџџџџџR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:џџџџџџџџџЕ
"
_user_specified_name
inputs/2
Њ
Њ
#__inference_signature_wrapper_19202
input_4
input_5
input_6
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityЂStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinput_4input_5input_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*F
_read_only_resource_inputs(
&$	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_173122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџR
!
_user_specified_name	input_4:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_5:QM
(
_output_shapes
:џџџџџџџџџЕ
!
_user_specified_name	input_6
И

H__inference_concatenate_1_layer_call_and_return_conditional_losses_18520

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџр:џџџџџџџџџ:џџџџџџџџџЕ:P L
(
_output_shapes
:џџџџџџџџџр
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџЕ
 
_user_specified_nameinputs
Ы
І
,__inference_sequential_3_layer_call_fn_17777
dense_9_input
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_177662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ# 
'
_user_specified_namedense_9_input
ъ
Ј
5__inference_batch_normalization_2_layer_call_fn_20067

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_174532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ь
Ј
5__inference_batch_normalization_2_layer_call_fn_20080

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_174862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs

F
*__inference_dropout_10_layer_call_fn_20760

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_185742
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ш
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_20750

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
й
Б
'__inference_model_1_layer_call_fn_19915
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*F
_read_only_resource_inputs(
&$	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_190402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:џџџџџџџџџR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:џџџџџџџџџЕ
"
_user_specified_name
inputs/2
Ї
g
-__inference_concatenate_1_layer_call_fn_20713
inputs_0
inputs_1
inputs_2
identityт
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_185202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџр:џџџџџџџџџ:џџџџџџџџџЕ:R N
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:џџџџџџџџџЕ
"
_user_specified_name
inputs/2

O
3__inference_average_pooling1d_5_layer_call_fn_17357

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_173512
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

d
E__inference_dropout_11_layer_call_and_return_conditional_losses_18626

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ф0
Х
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20198

inputs
assignmovingavg_20173
assignmovingavg_1_20179)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientБ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20173*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_20173*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20173*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20173*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_20173AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20173*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20179*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_20179*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20179*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20179*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_20179AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20179*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1Р
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
є
j
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_17336

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

ExpandDimsК
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize

*
paddingVALID*
strides

2	
AvgPool
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
э	
м
C__inference_dense_12_layer_call_and_return_conditional_losses_20771

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
АI
Њ
G__inference_sequential_3_layer_call_and_return_conditional_losses_20883

inputs-
)dense_9_tensordot_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource.
*dense_10_tensordot_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource
identityЂdense_10/BiasAdd/ReadVariableOpЂ!dense_10/Tensordot/ReadVariableOpЂdense_9/BiasAdd/ReadVariableOpЂ dense_9/Tensordot/ReadVariableOpЎ
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02"
 dense_9/Tensordot/ReadVariableOpz
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_9/Tensordot/axes
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_9/Tensordot/freeh
dense_9/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_9/Tensordot/Shape
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/GatherV2/axisљ
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_9/Tensordot/GatherV2_1/axisџ
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2_1|
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const 
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_1Ј
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod_1
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_9/Tensordot/concat/axisи
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concatЌ
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/stackЈ
dense_9/Tensordot/transpose	Transposeinputs!dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dense_9/Tensordot/transposeП
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense_9/Tensordot/ReshapeО
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_9/Tensordot/MatMul
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_9/Tensordot/Const_2
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/concat_1/axisх
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat_1А
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_9/TensordotЄ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_9/BiasAdd/ReadVariableOpЇ
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_9/BiasAddt
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_9/ReluБ
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_10/Tensordot/ReadVariableOp|
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_10/Tensordot/axes
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_10/Tensordot/free~
dense_10/Tensordot/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:2
dense_10/Tensordot/Shape
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/GatherV2/axisў
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_10/Tensordot/GatherV2_1/axis
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2_1~
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/ConstЄ
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prod
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Const_1Ќ
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prod_1
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_10/Tensordot/concat/axisн
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concatА
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/stackП
dense_10/Tensordot/transpose	Transposedense_9/Relu:activations:0"dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
dense_10/Tensordot/transposeУ
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense_10/Tensordot/ReshapeТ
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_10/Tensordot/MatMul
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Const_2
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/concat_1/axisъ
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concat_1Д
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dense_10/TensordotЇ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_10/BiasAdd/ReadVariableOpЋ
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dense_10/BiasAddћ
IdentityIdentitydense_10/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ч

P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17972

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1п
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ф0
Х
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17453

inputs
assignmovingavg_17428
assignmovingavg_1_17434)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientБ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/17428*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_17428*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/17428*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/17428*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_17428AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/17428*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/17434*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_17434*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/17434*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/17434*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_17434AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/17434*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1Р
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
а
т
C__inference_dense_10_layer_call_and_return_conditional_losses_21036

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
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
Tensordot/GatherV2/axisб
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
Tensordot/GatherV2_1/axisз
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ#@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ#@
 
_user_specified_nameinputs

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_18569

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

F
*__inference_dropout_11_layer_call_fn_20807

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_186312
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ѓ
c
*__inference_dropout_11_layer_call_fn_20802

inputs
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_186262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
­0
Х
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20280

inputs
assignmovingavg_20255
assignmovingavg_1_20261)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientЈ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20255*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_20255*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20255*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/20255*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_20255AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/20255*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20261*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_20261*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20261*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/20261*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_20261AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/20261*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1З
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Џ 
с
B__inference_dense_9_layer_call_and_return_conditional_losses_20997

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
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
Tensordot/GatherV2/axisб
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
Tensordot/GatherV2_1/axisз
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
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
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ#@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ# ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ь
Ј
5__inference_batch_normalization_3_layer_call_fn_20244

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_176262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
им
е
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_18389

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityЂ.layer_normalization_6/batchnorm/ReadVariableOpЂ2layer_normalization_6/batchnorm/mul/ReadVariableOpЂ.layer_normalization_7/batchnorm/ReadVariableOpЂ2layer_normalization_7/batchnorm/mul/ReadVariableOpЂ:multi_head_attention_3/attention_output/add/ReadVariableOpЂDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЂ-multi_head_attention_3/key/add/ReadVariableOpЂ7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/query/add/ReadVariableOpЂ9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/value/add/ReadVariableOpЂ9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpЂ,sequential_3/dense_10/BiasAdd/ReadVariableOpЂ.sequential_3/dense_10/Tensordot/ReadVariableOpЂ+sequential_3/dense_9/BiasAdd/ReadVariableOpЂ-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsumл
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/query/add/ReadVariableOpѕ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/query/addї
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/Einsumе
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpэ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsumл
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/value/add/ReadVariableOpѕ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/value/add
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention_3/Mul/yЦ
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2
multi_head_attention_3/Mulќ
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/EinsumФ
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2(
&multi_head_attention_3/softmax/SoftmaxЪ
'multi_head_attention_3/dropout/IdentityIdentity0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ##2)
'multi_head_attention_3/dropout/Identity
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/Identity:output:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsum
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpг
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ# *
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/Einsumј
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOp
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2-
+multi_head_attention_3/attention_output/add
dropout_8/IdentityIdentity/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/Identityn
addAddV2inputsdropout_8/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
addЖ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesп
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_6/moments/meanЫ
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_6/moments/StopGradientы
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_6/moments/SquaredDifferenceО
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indices
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_6/moments/variance
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_6/batchnorm/add/yъ
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_6/batchnorm/addЖ
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_6/batchnorm/Rsqrtр
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOpю
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/mulН
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_1с
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_2д
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpъ
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/subс
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/add_1е
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOp
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axes
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЅ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shape
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axisК
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2Ђ
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axisР
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constд
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prod
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1м
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axis
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatр
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackђ
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2*
(sequential_3/dense_9/Tensordot/transposeѓ
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2(
&sequential_3/dense_9/Tensordot/Reshapeђ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/dense_9/Tensordot/MatMul
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisІ
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1ф
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2 
sequential_3/dense_9/TensordotЫ
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOpл
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/BiasAdd
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/Reluи
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOp
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axes
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЅ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shape 
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axisП
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2Є
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axisХ
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constи
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prod
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1р
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axis
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatф
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackѓ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2+
)sequential_3/dense_10/Tensordot/transposeї
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2)
'sequential_3/dense_10/Tensordot/Reshapeі
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2(
&sequential_3/dense_10/Tensordot/MatMul
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_2 
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisЋ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ш
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2!
sequential_3/dense_10/TensordotЮ
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpп
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
sequential_3/dense_10/BiasAdd
dropout_9/IdentityIdentity&sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/Identity
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
add_1Ж
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesс
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_7/moments/meanЫ
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_7/moments/StopGradientэ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_7/moments/SquaredDifferenceО
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indices
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_7/moments/variance
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_7/batchnorm/add/yъ
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_7/batchnorm/addЖ
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_7/batchnorm/Rsqrtр
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOpю
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/mulП
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_1с
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_2д
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpъ
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/subс
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/add_1е
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:џџџџџџџџџ# ::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Y

B__inference_model_1_layer_call_and_return_conditional_losses_18766
input_4
input_5
input_6(
$token_and_position_embedding_1_18676(
$token_and_position_embedding_1_18678
conv1d_2_18681
conv1d_2_18683
conv1d_3_18687
conv1d_3_18689
batch_normalization_2_18694
batch_normalization_2_18696
batch_normalization_2_18698
batch_normalization_2_18700
batch_normalization_3_18703
batch_normalization_3_18705
batch_normalization_3_18707
batch_normalization_3_18709
transformer_block_3_18713
transformer_block_3_18715
transformer_block_3_18717
transformer_block_3_18719
transformer_block_3_18721
transformer_block_3_18723
transformer_block_3_18725
transformer_block_3_18727
transformer_block_3_18729
transformer_block_3_18731
transformer_block_3_18733
transformer_block_3_18735
transformer_block_3_18737
transformer_block_3_18739
transformer_block_3_18741
transformer_block_3_18743
dense_11_18748
dense_11_18750
dense_12_18754
dense_12_18756
dense_13_18760
dense_13_18762
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂ conv1d_2/StatefulPartitionedCallЂ conv1d_3/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ6token_and_position_embedding_1/StatefulPartitionedCallЂ+transformer_block_3/StatefulPartitionedCall
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_4$token_and_position_embedding_1_18676$token_and_position_embedding_1_18678*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_1783428
6token_and_position_embedding_1/StatefulPartitionedCallв
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0conv1d_2_18681conv1d_2_18683*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_178662"
 conv1d_2/StatefulPartitionedCall
#average_pooling1d_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_173212%
#average_pooling1d_3/PartitionedCallП
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_3/PartitionedCall:output:0conv1d_3_18687conv1d_3_18689*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_178992"
 conv1d_3/StatefulPartitionedCallД
#average_pooling1d_5/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_173512%
#average_pooling1d_5/PartitionedCall
#average_pooling1d_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_173362%
#average_pooling1d_4/PartitionedCallН
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_4/PartitionedCall:output:0batch_normalization_2_18694batch_normalization_2_18696batch_normalization_2_18698batch_normalization_2_18700*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_179722/
-batch_normalization_2/StatefulPartitionedCallН
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0batch_normalization_3_18703batch_normalization_3_18705batch_normalization_3_18707batch_normalization_3_18709*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_180632/
-batch_normalization_3/StatefulPartitionedCallК
add_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:06batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_181052
add_1/PartitionedCall§
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0transformer_block_3_18713transformer_block_3_18715transformer_block_3_18717transformer_block_3_18719transformer_block_3_18721transformer_block_3_18723transformer_block_3_18725transformer_block_3_18727transformer_block_3_18729transformer_block_3_18731transformer_block_3_18733transformer_block_3_18735transformer_block_3_18737transformer_block_3_18739transformer_block_3_18741transformer_block_3_18743*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_183892-
+transformer_block_3/StatefulPartitionedCall
flatten_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_185042
flatten_1/PartitionedCall
concatenate_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0input_5input_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_185202
concatenate_1/PartitionedCallД
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_18748dense_11_18750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_185412"
 dense_11/StatefulPartitionedCallџ
dropout_10/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_185742
dropout_10/PartitionedCallБ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_12_18754dense_12_18756*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_185982"
 dense_12/StatefulPartitionedCallџ
dropout_11/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_186312
dropout_11/PartitionedCallБ
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_13_18760dense_13_18762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_186542"
 dense_13/StatefulPartitionedCallѓ
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџR
!
_user_specified_name	input_4:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_5:QM
(
_output_shapes
:џџџџџџџџџЕ
!
_user_specified_name	input_6
ы

Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_17834
x&
"embedding_3_embedding_lookup_17821&
"embedding_2_embedding_lookup_17827
identityЂembedding_2/embedding_lookupЂembedding_3/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
range­
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_17821range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/17821*'
_output_shapes
:џџџџџџџџџ *
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/17821*'
_output_shapes
:џџџџџџџџџ 2'
%embedding_3/embedding_lookup/IdentityР
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2)
'embedding_3/embedding_lookup/Identity_1q
embedding_2/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:џџџџџџџџџR2
embedding_2/CastИ
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_17827embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/17827*,
_output_shapes
:џџџџџџџџџR *
dtype02
embedding_2/embedding_lookup
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/17827*,
_output_shapes
:џџџџџџџџџR 2'
%embedding_2/embedding_lookup/IdentityХ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2)
'embedding_2/embedding_lookup/Identity_1Ў
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџR 2
add
IdentityIdentityadd:z:0^embedding_2/embedding_lookup^embedding_3/embedding_lookup*
T0*,
_output_shapes
:џџџџџџџџџR 2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџR::2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:K G
(
_output_shapes
:џџџџџџџџџR

_user_specified_namex
им
е
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_20613

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityЂ.layer_normalization_6/batchnorm/ReadVariableOpЂ2layer_normalization_6/batchnorm/mul/ReadVariableOpЂ.layer_normalization_7/batchnorm/ReadVariableOpЂ2layer_normalization_7/batchnorm/mul/ReadVariableOpЂ:multi_head_attention_3/attention_output/add/ReadVariableOpЂDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЂ-multi_head_attention_3/key/add/ReadVariableOpЂ7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/query/add/ReadVariableOpЂ9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/value/add/ReadVariableOpЂ9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpЂ,sequential_3/dense_10/BiasAdd/ReadVariableOpЂ.sequential_3/dense_10/Tensordot/ReadVariableOpЂ+sequential_3/dense_9/BiasAdd/ReadVariableOpЂ-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsumл
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/query/add/ReadVariableOpѕ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/query/addї
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/Einsumе
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpэ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsumл
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/value/add/ReadVariableOpѕ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/value/add
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention_3/Mul/yЦ
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2
multi_head_attention_3/Mulќ
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/EinsumФ
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2(
&multi_head_attention_3/softmax/SoftmaxЪ
'multi_head_attention_3/dropout/IdentityIdentity0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ##2)
'multi_head_attention_3/dropout/Identity
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/Identity:output:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsum
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpг
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ# *
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/Einsumј
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOp
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2-
+multi_head_attention_3/attention_output/add
dropout_8/IdentityIdentity/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/Identityn
addAddV2inputsdropout_8/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
addЖ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesп
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_6/moments/meanЫ
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_6/moments/StopGradientы
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_6/moments/SquaredDifferenceО
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indices
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_6/moments/variance
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_6/batchnorm/add/yъ
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_6/batchnorm/addЖ
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_6/batchnorm/Rsqrtр
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOpю
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/mulН
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_1с
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_2д
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpъ
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/subс
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/add_1е
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOp
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axes
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЅ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shape
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axisК
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2Ђ
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axisР
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constд
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prod
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1м
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axis
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatр
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackђ
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2*
(sequential_3/dense_9/Tensordot/transposeѓ
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2(
&sequential_3/dense_9/Tensordot/Reshapeђ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/dense_9/Tensordot/MatMul
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisІ
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1ф
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2 
sequential_3/dense_9/TensordotЫ
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOpл
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/BiasAdd
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/Reluи
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOp
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axes
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЅ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shape 
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axisП
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2Є
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axisХ
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constи
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prod
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1р
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axis
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatф
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackѓ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2+
)sequential_3/dense_10/Tensordot/transposeї
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2)
'sequential_3/dense_10/Tensordot/Reshapeі
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2(
&sequential_3/dense_10/Tensordot/MatMul
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_2 
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisЋ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ш
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2!
sequential_3/dense_10/TensordotЮ
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpп
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
sequential_3/dense_10/BiasAdd
dropout_9/IdentityIdentity&sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/Identity
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
add_1Ж
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesс
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_7/moments/meanЫ
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_7/moments/StopGradientэ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_7/moments/SquaredDifferenceО
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indices
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_7/moments/variance
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_7/batchnorm/add/yъ
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_7/batchnorm/addЖ
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_7/batchnorm/Rsqrtр
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOpю
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/mulП
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_1с
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_2д
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpъ
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/subс
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/add_1е
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:џџџџџџџџџ# ::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Д
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_18504

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ`  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ# :S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs

O
3__inference_average_pooling1d_3_layer_call_fn_17327

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_173212
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ж

,__inference_sequential_3_layer_call_fn_20953

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_177662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
О
l
@__inference_add_1_layer_call_and_return_conditional_losses_20332
inputs_0
inputs_1
identity]
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:џџџџџџџџџ# 2
add_
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:џџџџџџџџџ# :џџџџџџџџџ# :U Q
+
_output_shapes
:џџџџџџџџџ# 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:џџџџџџџџџ# 
"
_user_specified_name
inputs/1
№	
м
C__inference_dense_11_layer_call_and_return_conditional_losses_18541

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ъ
Ј
5__inference_batch_normalization_3_layer_call_fn_20231

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_175932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ц
Ј
5__inference_batch_normalization_3_layer_call_fn_20313

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_180432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Х§
е
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_20486

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityЂ.layer_normalization_6/batchnorm/ReadVariableOpЂ2layer_normalization_6/batchnorm/mul/ReadVariableOpЂ.layer_normalization_7/batchnorm/ReadVariableOpЂ2layer_normalization_7/batchnorm/mul/ReadVariableOpЂ:multi_head_attention_3/attention_output/add/ReadVariableOpЂDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЂ-multi_head_attention_3/key/add/ReadVariableOpЂ7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/query/add/ReadVariableOpЂ9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/value/add/ReadVariableOpЂ9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpЂ,sequential_3/dense_10/BiasAdd/ReadVariableOpЂ.sequential_3/dense_10/Tensordot/ReadVariableOpЂ+sequential_3/dense_9/BiasAdd/ReadVariableOpЂ-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsumл
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/query/add/ReadVariableOpѕ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/query/addї
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/Einsumе
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpэ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsumл
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/value/add/ReadVariableOpѕ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/value/add
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention_3/Mul/yЦ
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2
multi_head_attention_3/Mulќ
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/EinsumФ
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2(
&multi_head_attention_3/softmax/SoftmaxЁ
,multi_head_attention_3/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,multi_head_attention_3/dropout/dropout/Const
*multi_head_attention_3/dropout/dropout/MulMul0multi_head_attention_3/softmax/Softmax:softmax:05multi_head_attention_3/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2,
*multi_head_attention_3/dropout/dropout/MulМ
,multi_head_attention_3/dropout/dropout/ShapeShape0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_3/dropout/dropout/ShapeЅ
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_3/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
dtype0*

seed*2E
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniformГ
5multi_head_attention_3/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_3/dropout/dropout/GreaterEqual/yТ
3multi_head_attention_3/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_3/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##25
3multi_head_attention_3/dropout/dropout/GreaterEqualф
+multi_head_attention_3/dropout/dropout/CastCast7multi_head_attention_3/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ##2-
+multi_head_attention_3/dropout/dropout/Castў
,multi_head_attention_3/dropout/dropout/Mul_1Mul.multi_head_attention_3/dropout/dropout/Mul:z:0/multi_head_attention_3/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ##2.
,multi_head_attention_3/dropout/dropout/Mul_1
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/dropout/Mul_1:z:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsum
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpг
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ# *
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/Einsumј
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOp
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2-
+multi_head_attention_3/attention_output/addw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_8/dropout/ConstО
dropout_8/dropout/MulMul/multi_head_attention_3/attention_output/add:z:0 dropout_8/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/dropout/Mul
dropout_8/dropout/ShapeShape/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shapeя
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
dtype0*

seed**
seed220
.dropout_8/dropout/random_uniform/RandomUniform
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_8/dropout/GreaterEqual/yъ
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2 
dropout_8/dropout/GreaterEqualЁ
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/dropout/CastІ
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/dropout/Mul_1n
addAddV2inputsdropout_8/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
addЖ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesп
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_6/moments/meanЫ
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_6/moments/StopGradientы
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_6/moments/SquaredDifferenceО
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indices
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_6/moments/variance
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_6/batchnorm/add/yъ
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_6/batchnorm/addЖ
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_6/batchnorm/Rsqrtр
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOpю
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/mulН
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_1с
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_2д
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpъ
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/subс
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/add_1е
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOp
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axes
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЅ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shape
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axisК
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2Ђ
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axisР
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constд
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prod
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1м
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axis
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatр
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackђ
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2*
(sequential_3/dense_9/Tensordot/transposeѓ
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2(
&sequential_3/dense_9/Tensordot/Reshapeђ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/dense_9/Tensordot/MatMul
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisІ
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1ф
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2 
sequential_3/dense_9/TensordotЫ
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOpл
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/BiasAdd
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/Reluи
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOp
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axes
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЅ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shape 
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axisП
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2Є
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axisХ
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constи
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prod
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1р
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axis
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatф
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackѓ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2+
)sequential_3/dense_10/Tensordot/transposeї
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2)
'sequential_3/dense_10/Tensordot/Reshapeі
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2(
&sequential_3/dense_10/Tensordot/MatMul
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_2 
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisЋ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ш
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2!
sequential_3/dense_10/TensordotЮ
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpп
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
sequential_3/dense_10/BiasAddw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_9/dropout/ConstЕ
dropout_9/dropout/MulMul&sequential_3/dense_10/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/dropout/Mul
dropout_9/dropout/ShapeShape&sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shapeя
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
dtype0*

seed**
seed220
.dropout_9/dropout/random_uniform/RandomUniform
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_9/dropout/GreaterEqual/yъ
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2 
dropout_9/dropout/GreaterEqualЁ
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/dropout/CastІ
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/dropout/Mul_1
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
add_1Ж
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesс
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_7/moments/meanЫ
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_7/moments/StopGradientэ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_7/moments/SquaredDifferenceО
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indices
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_7/moments/variance
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_7/batchnorm/add/yъ
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_7/batchnorm/addЖ
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_7/batchnorm/Rsqrtр
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOpю
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/mulП
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_1с
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_2д
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpъ
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/subс
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/add_1е
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:џџџџџџџџџ# ::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Ж

,__inference_sequential_3_layer_call_fn_20966

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_177932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Ш
Ј
5__inference_batch_normalization_3_layer_call_fn_20326

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_180632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
СЦ
1
!__inference__traced_restore_21524
file_prefix$
 assignvariableop_conv1d_2_kernel$
 assignvariableop_1_conv1d_2_bias&
"assignvariableop_2_conv1d_3_kernel$
 assignvariableop_3_conv1d_3_bias2
.assignvariableop_4_batch_normalization_2_gamma1
-assignvariableop_5_batch_normalization_2_beta8
4assignvariableop_6_batch_normalization_2_moving_mean<
8assignvariableop_7_batch_normalization_2_moving_variance2
.assignvariableop_8_batch_normalization_3_gamma1
-assignvariableop_9_batch_normalization_3_beta9
5assignvariableop_10_batch_normalization_3_moving_mean=
9assignvariableop_11_batch_normalization_3_moving_variance'
#assignvariableop_12_dense_11_kernel%
!assignvariableop_13_dense_11_bias'
#assignvariableop_14_dense_12_kernel%
!assignvariableop_15_dense_12_bias'
#assignvariableop_16_dense_13_kernel%
!assignvariableop_17_dense_13_bias
assignvariableop_18_decay%
!assignvariableop_19_learning_rate 
assignvariableop_20_momentum 
assignvariableop_21_sgd_iterM
Iassignvariableop_22_token_and_position_embedding_1_embedding_2_embeddingsM
Iassignvariableop_23_token_and_position_embedding_1_embedding_3_embeddingsO
Kassignvariableop_24_transformer_block_3_multi_head_attention_3_query_kernelM
Iassignvariableop_25_transformer_block_3_multi_head_attention_3_query_biasM
Iassignvariableop_26_transformer_block_3_multi_head_attention_3_key_kernelK
Gassignvariableop_27_transformer_block_3_multi_head_attention_3_key_biasO
Kassignvariableop_28_transformer_block_3_multi_head_attention_3_value_kernelM
Iassignvariableop_29_transformer_block_3_multi_head_attention_3_value_biasZ
Vassignvariableop_30_transformer_block_3_multi_head_attention_3_attention_output_kernelX
Tassignvariableop_31_transformer_block_3_multi_head_attention_3_attention_output_bias&
"assignvariableop_32_dense_9_kernel$
 assignvariableop_33_dense_9_bias'
#assignvariableop_34_dense_10_kernel%
!assignvariableop_35_dense_10_biasG
Cassignvariableop_36_transformer_block_3_layer_normalization_6_gammaF
Bassignvariableop_37_transformer_block_3_layer_normalization_6_betaG
Cassignvariableop_38_transformer_block_3_layer_normalization_7_gammaF
Bassignvariableop_39_transformer_block_3_layer_normalization_7_beta
assignvariableop_40_total
assignvariableop_41_count4
0assignvariableop_42_sgd_conv1d_2_kernel_momentum2
.assignvariableop_43_sgd_conv1d_2_bias_momentum4
0assignvariableop_44_sgd_conv1d_3_kernel_momentum2
.assignvariableop_45_sgd_conv1d_3_bias_momentum@
<assignvariableop_46_sgd_batch_normalization_2_gamma_momentum?
;assignvariableop_47_sgd_batch_normalization_2_beta_momentum@
<assignvariableop_48_sgd_batch_normalization_3_gamma_momentum?
;assignvariableop_49_sgd_batch_normalization_3_beta_momentum4
0assignvariableop_50_sgd_dense_11_kernel_momentum2
.assignvariableop_51_sgd_dense_11_bias_momentum4
0assignvariableop_52_sgd_dense_12_kernel_momentum2
.assignvariableop_53_sgd_dense_12_bias_momentum4
0assignvariableop_54_sgd_dense_13_kernel_momentum2
.assignvariableop_55_sgd_dense_13_bias_momentumZ
Vassignvariableop_56_sgd_token_and_position_embedding_1_embedding_2_embeddings_momentumZ
Vassignvariableop_57_sgd_token_and_position_embedding_1_embedding_3_embeddings_momentum\
Xassignvariableop_58_sgd_transformer_block_3_multi_head_attention_3_query_kernel_momentumZ
Vassignvariableop_59_sgd_transformer_block_3_multi_head_attention_3_query_bias_momentumZ
Vassignvariableop_60_sgd_transformer_block_3_multi_head_attention_3_key_kernel_momentumX
Tassignvariableop_61_sgd_transformer_block_3_multi_head_attention_3_key_bias_momentum\
Xassignvariableop_62_sgd_transformer_block_3_multi_head_attention_3_value_kernel_momentumZ
Vassignvariableop_63_sgd_transformer_block_3_multi_head_attention_3_value_bias_momentumg
cassignvariableop_64_sgd_transformer_block_3_multi_head_attention_3_attention_output_kernel_momentume
aassignvariableop_65_sgd_transformer_block_3_multi_head_attention_3_attention_output_bias_momentum3
/assignvariableop_66_sgd_dense_9_kernel_momentum1
-assignvariableop_67_sgd_dense_9_bias_momentum4
0assignvariableop_68_sgd_dense_10_kernel_momentum2
.assignvariableop_69_sgd_dense_10_bias_momentumT
Passignvariableop_70_sgd_transformer_block_3_layer_normalization_6_gamma_momentumS
Oassignvariableop_71_sgd_transformer_block_3_layer_normalization_6_beta_momentumT
Passignvariableop_72_sgd_transformer_block_3_layer_normalization_7_gamma_momentumS
Oassignvariableop_73_sgd_transformer_block_3_layer_normalization_7_beta_momentum
identity_75ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_8ЂAssignVariableOp_9щ%
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*ѕ$
valueы$Bш$KB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/15/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/16/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/17/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/18/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/19/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/20/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/21/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/22/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/23/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/26/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/27/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/28/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/29/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЇ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ћ
valueЁBKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЅ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Т
_output_shapesЏ
Ќ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Y
dtypesO
M2K	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv1d_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ї
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѕ
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Г
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_2_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5В
AssignVariableOp_5AssignVariableOp-assignvariableop_5_batch_normalization_2_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Й
AssignVariableOp_6AssignVariableOp4assignvariableop_6_batch_normalization_2_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Н
AssignVariableOp_7AssignVariableOp8assignvariableop_7_batch_normalization_2_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Г
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_3_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9В
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_3_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Н
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_3_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11С
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_3_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ћ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_11_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Љ
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_11_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ћ
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_12_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Љ
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_12_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ћ
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_13_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Љ
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_13_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ё
AssignVariableOp_18AssignVariableOpassignvariableop_18_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Љ
AssignVariableOp_19AssignVariableOp!assignvariableop_19_learning_rateIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Є
AssignVariableOp_20AssignVariableOpassignvariableop_20_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_21Є
AssignVariableOp_21AssignVariableOpassignvariableop_21_sgd_iterIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22б
AssignVariableOp_22AssignVariableOpIassignvariableop_22_token_and_position_embedding_1_embedding_2_embeddingsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23б
AssignVariableOp_23AssignVariableOpIassignvariableop_23_token_and_position_embedding_1_embedding_3_embeddingsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24г
AssignVariableOp_24AssignVariableOpKassignvariableop_24_transformer_block_3_multi_head_attention_3_query_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25б
AssignVariableOp_25AssignVariableOpIassignvariableop_25_transformer_block_3_multi_head_attention_3_query_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26б
AssignVariableOp_26AssignVariableOpIassignvariableop_26_transformer_block_3_multi_head_attention_3_key_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Я
AssignVariableOp_27AssignVariableOpGassignvariableop_27_transformer_block_3_multi_head_attention_3_key_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28г
AssignVariableOp_28AssignVariableOpKassignvariableop_28_transformer_block_3_multi_head_attention_3_value_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29б
AssignVariableOp_29AssignVariableOpIassignvariableop_29_transformer_block_3_multi_head_attention_3_value_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30о
AssignVariableOp_30AssignVariableOpVassignvariableop_30_transformer_block_3_multi_head_attention_3_attention_output_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31м
AssignVariableOp_31AssignVariableOpTassignvariableop_31_transformer_block_3_multi_head_attention_3_attention_output_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Њ
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_9_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ј
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_9_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ћ
AssignVariableOp_34AssignVariableOp#assignvariableop_34_dense_10_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Љ
AssignVariableOp_35AssignVariableOp!assignvariableop_35_dense_10_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ы
AssignVariableOp_36AssignVariableOpCassignvariableop_36_transformer_block_3_layer_normalization_6_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Ъ
AssignVariableOp_37AssignVariableOpBassignvariableop_37_transformer_block_3_layer_normalization_6_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ы
AssignVariableOp_38AssignVariableOpCassignvariableop_38_transformer_block_3_layer_normalization_7_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Ъ
AssignVariableOp_39AssignVariableOpBassignvariableop_39_transformer_block_3_layer_normalization_7_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Ё
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Ё
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42И
AssignVariableOp_42AssignVariableOp0assignvariableop_42_sgd_conv1d_2_kernel_momentumIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Ж
AssignVariableOp_43AssignVariableOp.assignvariableop_43_sgd_conv1d_2_bias_momentumIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44И
AssignVariableOp_44AssignVariableOp0assignvariableop_44_sgd_conv1d_3_kernel_momentumIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Ж
AssignVariableOp_45AssignVariableOp.assignvariableop_45_sgd_conv1d_3_bias_momentumIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Ф
AssignVariableOp_46AssignVariableOp<assignvariableop_46_sgd_batch_normalization_2_gamma_momentumIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47У
AssignVariableOp_47AssignVariableOp;assignvariableop_47_sgd_batch_normalization_2_beta_momentumIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Ф
AssignVariableOp_48AssignVariableOp<assignvariableop_48_sgd_batch_normalization_3_gamma_momentumIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49У
AssignVariableOp_49AssignVariableOp;assignvariableop_49_sgd_batch_normalization_3_beta_momentumIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50И
AssignVariableOp_50AssignVariableOp0assignvariableop_50_sgd_dense_11_kernel_momentumIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51Ж
AssignVariableOp_51AssignVariableOp.assignvariableop_51_sgd_dense_11_bias_momentumIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52И
AssignVariableOp_52AssignVariableOp0assignvariableop_52_sgd_dense_12_kernel_momentumIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53Ж
AssignVariableOp_53AssignVariableOp.assignvariableop_53_sgd_dense_12_bias_momentumIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54И
AssignVariableOp_54AssignVariableOp0assignvariableop_54_sgd_dense_13_kernel_momentumIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55Ж
AssignVariableOp_55AssignVariableOp.assignvariableop_55_sgd_dense_13_bias_momentumIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56о
AssignVariableOp_56AssignVariableOpVassignvariableop_56_sgd_token_and_position_embedding_1_embedding_2_embeddings_momentumIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57о
AssignVariableOp_57AssignVariableOpVassignvariableop_57_sgd_token_and_position_embedding_1_embedding_3_embeddings_momentumIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58р
AssignVariableOp_58AssignVariableOpXassignvariableop_58_sgd_transformer_block_3_multi_head_attention_3_query_kernel_momentumIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59о
AssignVariableOp_59AssignVariableOpVassignvariableop_59_sgd_transformer_block_3_multi_head_attention_3_query_bias_momentumIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60о
AssignVariableOp_60AssignVariableOpVassignvariableop_60_sgd_transformer_block_3_multi_head_attention_3_key_kernel_momentumIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61м
AssignVariableOp_61AssignVariableOpTassignvariableop_61_sgd_transformer_block_3_multi_head_attention_3_key_bias_momentumIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62р
AssignVariableOp_62AssignVariableOpXassignvariableop_62_sgd_transformer_block_3_multi_head_attention_3_value_kernel_momentumIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63о
AssignVariableOp_63AssignVariableOpVassignvariableop_63_sgd_transformer_block_3_multi_head_attention_3_value_bias_momentumIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64ы
AssignVariableOp_64AssignVariableOpcassignvariableop_64_sgd_transformer_block_3_multi_head_attention_3_attention_output_kernel_momentumIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65щ
AssignVariableOp_65AssignVariableOpaassignvariableop_65_sgd_transformer_block_3_multi_head_attention_3_attention_output_bias_momentumIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66З
AssignVariableOp_66AssignVariableOp/assignvariableop_66_sgd_dense_9_kernel_momentumIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67Е
AssignVariableOp_67AssignVariableOp-assignvariableop_67_sgd_dense_9_bias_momentumIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68И
AssignVariableOp_68AssignVariableOp0assignvariableop_68_sgd_dense_10_kernel_momentumIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69Ж
AssignVariableOp_69AssignVariableOp.assignvariableop_69_sgd_dense_10_bias_momentumIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70и
AssignVariableOp_70AssignVariableOpPassignvariableop_70_sgd_transformer_block_3_layer_normalization_6_gamma_momentumIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71з
AssignVariableOp_71AssignVariableOpOassignvariableop_71_sgd_transformer_block_3_layer_normalization_6_beta_momentumIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72и
AssignVariableOp_72AssignVariableOpPassignvariableop_72_sgd_transformer_block_3_layer_normalization_7_gamma_momentumIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73з
AssignVariableOp_73AssignVariableOpOassignvariableop_73_sgd_transformer_block_3_layer_normalization_7_beta_momentumIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_739
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpК
Identity_74Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_74­
Identity_75IdentityIdentity_74:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_75"#
identity_75Identity_75:output:0*П
_input_shapes­
Њ: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_73AssignVariableOp_732(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

і
C__inference_conv1d_3_layer_call_and_return_conditional_losses_19989

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2
conv1d/ExpandDimsИ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЗ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d/ExpandDims_1З
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims

§џџџџџџџџ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџо 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
ReluЉ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџо 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџо ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџо 
 
_user_specified_nameinputs
Џ 
с
B__inference_dense_9_layer_call_and_return_conditional_losses_17672

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
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
Tensordot/GatherV2/axisб
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
Tensordot/GatherV2_1/axisз
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
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
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ#@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ# ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ч

P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18063

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1п
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Ю

п
3__inference_transformer_block_3_layer_call_fn_20650

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identityЂStatefulPartitionedCallР
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
 *+
_output_shapes
:џџџџџџџџџ# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_182622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:џџџџџџџџџ# ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
ч

G__inference_sequential_3_layer_call_and_return_conditional_losses_17749
dense_9_input
dense_9_17738
dense_9_17740
dense_10_17743
dense_10_17745
identityЂ dense_10/StatefulPartitionedCallЂdense_9/StatefulPartitionedCall
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_17738dense_9_17740*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_176722!
dense_9/StatefulPartitionedCallК
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_17743dense_10_17745*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_177182"
 dense_10/StatefulPartitionedCallЦ
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ# 
'
_user_specified_namedense_9_input
Ь
Ў
'__inference_model_1_layer_call_fn_18941
input_4
input_5
input_6
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinput_4input_5input_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
"  !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_188662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџR
!
_user_specified_name	input_4:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_5:QM
(
_output_shapes
:џџџџџџџџџЕ
!
_user_specified_name	input_6
Х§
е
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_18262

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityЂ.layer_normalization_6/batchnorm/ReadVariableOpЂ2layer_normalization_6/batchnorm/mul/ReadVariableOpЂ.layer_normalization_7/batchnorm/ReadVariableOpЂ2layer_normalization_7/batchnorm/mul/ReadVariableOpЂ:multi_head_attention_3/attention_output/add/ReadVariableOpЂDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpЂ-multi_head_attention_3/key/add/ReadVariableOpЂ7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/query/add/ReadVariableOpЂ9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpЂ/multi_head_attention_3/value/add/ReadVariableOpЂ9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpЂ,sequential_3/dense_10/BiasAdd/ReadVariableOpЂ.sequential_3/dense_10/Tensordot/ReadVariableOpЂ+sequential_3/dense_9/BiasAdd/ReadVariableOpЂ-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsumл
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/query/add/ReadVariableOpѕ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/query/addї
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/Einsumе
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpэ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsumл
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_3/value/add/ReadVariableOpѕ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2"
 multi_head_attention_3/value/add
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention_3/Mul/yЦ
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ# 2
multi_head_attention_3/Mulќ
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/EinsumФ
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2(
&multi_head_attention_3/softmax/SoftmaxЁ
,multi_head_attention_3/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,multi_head_attention_3/dropout/dropout/Const
*multi_head_attention_3/dropout/dropout/MulMul0multi_head_attention_3/softmax/Softmax:softmax:05multi_head_attention_3/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2,
*multi_head_attention_3/dropout/dropout/MulМ
,multi_head_attention_3/dropout/dropout/ShapeShape0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_3/dropout/dropout/ShapeЅ
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_3/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
dtype0*

seed*2E
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniformГ
5multi_head_attention_3/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_3/dropout/dropout/GreaterEqual/yТ
3multi_head_attention_3/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_3/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##25
3multi_head_attention_3/dropout/dropout/GreaterEqualф
+multi_head_attention_3/dropout/dropout/CastCast7multi_head_attention_3/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ##2-
+multi_head_attention_3/dropout/dropout/Castў
,multi_head_attention_3/dropout/dropout/Mul_1Mul.multi_head_attention_3/dropout/dropout/Mul:z:0/multi_head_attention_3/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ##2.
,multi_head_attention_3/dropout/dropout/Mul_1
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/dropout/Mul_1:z:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ# *
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsum
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpг
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ# *
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/Einsumј
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOp
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2-
+multi_head_attention_3/attention_output/addw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_8/dropout/ConstО
dropout_8/dropout/MulMul/multi_head_attention_3/attention_output/add:z:0 dropout_8/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/dropout/Mul
dropout_8/dropout/ShapeShape/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shapeя
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
dtype0*

seed**
seed220
.dropout_8/dropout/random_uniform/RandomUniform
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_8/dropout/GreaterEqual/yъ
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2 
dropout_8/dropout/GreaterEqualЁ
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/dropout/CastІ
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_8/dropout/Mul_1n
addAddV2inputsdropout_8/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
addЖ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesп
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_6/moments/meanЫ
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_6/moments/StopGradientы
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_6/moments/SquaredDifferenceО
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indices
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_6/moments/variance
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_6/batchnorm/add/yъ
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_6/batchnorm/addЖ
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_6/batchnorm/Rsqrtр
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOpю
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/mulН
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_1с
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/mul_2д
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpъ
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_6/batchnorm/subс
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_6/batchnorm/add_1е
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOp
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axes
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЅ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shape
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axisК
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2Ђ
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axisР
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constд
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prod
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1м
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axis
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatр
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackђ
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2*
(sequential_3/dense_9/Tensordot/transposeѓ
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2(
&sequential_3/dense_9/Tensordot/Reshapeђ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/dense_9/Tensordot/MatMul
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisІ
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1ф
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2 
sequential_3/dense_9/TensordotЫ
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOpл
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/BiasAdd
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2
sequential_3/dense_9/Reluи
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOp
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axes
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЅ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shape 
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axisП
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2Є
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axisХ
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constи
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prod
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1р
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axis
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatф
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackѓ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#@2+
)sequential_3/dense_10/Tensordot/transposeї
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2)
'sequential_3/dense_10/Tensordot/Reshapeі
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2(
&sequential_3/dense_10/Tensordot/MatMul
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_2 
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisЋ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ш
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2!
sequential_3/dense_10/TensordotЮ
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpп
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
sequential_3/dense_10/BiasAddw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_9/dropout/ConstЕ
dropout_9/dropout/MulMul&sequential_3/dense_10/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/dropout/Mul
dropout_9/dropout/ShapeShape&sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shapeя
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# *
dtype0*

seed**
seed220
.dropout_9/dropout/random_uniform/RandomUniform
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_9/dropout/GreaterEqual/yъ
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2 
dropout_9/dropout/GreaterEqualЁ
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/dropout/CastІ
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
dropout_9/dropout/Mul_1
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
add_1Ж
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesс
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2$
"layer_normalization_7/moments/meanЫ
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2,
*layer_normalization_7/moments/StopGradientэ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 21
/layer_normalization_7/moments/SquaredDifferenceО
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indices
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#*
	keep_dims(2(
&layer_normalization_7/moments/variance
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_7/batchnorm/add/yъ
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#2%
#layer_normalization_7/batchnorm/addЖ
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџ#2'
%layer_normalization_7/batchnorm/Rsqrtр
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOpю
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/mulП
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_1с
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/mul_2д
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpъ
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2%
#layer_normalization_7/batchnorm/subс
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2'
%layer_normalization_7/batchnorm/add_1е
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:џџџџџџџџџ# ::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_20745

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ю

п
3__inference_transformer_block_3_layer_call_fn_20687

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identityЂStatefulPartitionedCallР
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
 *+
_output_shapes
:џџџџџџџџџ# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_183892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:џџџџџџџџџ# ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
в
љ
G__inference_sequential_3_layer_call_and_return_conditional_losses_17766

inputs
dense_9_17755
dense_9_17757
dense_10_17760
dense_10_17762
identityЂ dense_10/StatefulPartitionedCallЂdense_9/StatefulPartitionedCall
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_17755dense_9_17757*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_176722!
dense_9/StatefulPartitionedCallК
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_17760dense_10_17762*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_177182"
 dense_10/StatefulPartitionedCallЦ
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs


P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20218

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1ш
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ч

G__inference_sequential_3_layer_call_and_return_conditional_losses_17735
dense_9_input
dense_9_17683
dense_9_17685
dense_10_17729
dense_10_17731
identityЂ dense_10/StatefulPartitionedCallЂdense_9/StatefulPartitionedCall
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_17683dense_9_17685*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_176722!
dense_9/StatefulPartitionedCallК
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_17729dense_10_17731*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_177182"
 dense_10/StatefulPartitionedCallЦ
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ# 
'
_user_specified_namedense_9_input
н
}
(__inference_dense_12_layer_call_fn_20780

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_185982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

і
C__inference_conv1d_3_layer_call_and_return_conditional_losses_17899

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:џџџџџџџџџо 2
conv1d/ExpandDimsИ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЗ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d/ExpandDims_1З
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџо *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:џџџџџџџџџо *
squeeze_dims

§џџџџџџџџ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџо 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџо 2
ReluЉ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:џџџџџџџџџо 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџо ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџо 
 
_user_specified_nameinputs
Ц
Ј
5__inference_batch_normalization_2_layer_call_fn_20149

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_179522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
є
j
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_17321

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

ExpandDimsК
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
AvgPool
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
п
}
(__inference_dense_11_layer_call_fn_20733

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_185412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ
::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ш
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_20797

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ё
}
(__inference_conv1d_2_layer_call_fn_19973

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_178662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџR 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџR ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџR 
 
_user_specified_nameinputs
№	
м
C__inference_dense_11_layer_call_and_return_conditional_losses_20724

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
э
}
(__inference_dense_10_layer_call_fn_21045

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_177182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ#@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ#@
 
_user_specified_nameinputs
Ѓ
c
*__inference_dropout_10_layer_call_fn_20755

inputs
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_185692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ы
|
'__inference_dense_9_layer_call_fn_21006

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_176722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ#@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ# ::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Д
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_20693

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ`  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџр2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ# :S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
\
б
B__inference_model_1_layer_call_and_return_conditional_losses_18866

inputs
inputs_1
inputs_2(
$token_and_position_embedding_1_18776(
$token_and_position_embedding_1_18778
conv1d_2_18781
conv1d_2_18783
conv1d_3_18787
conv1d_3_18789
batch_normalization_2_18794
batch_normalization_2_18796
batch_normalization_2_18798
batch_normalization_2_18800
batch_normalization_3_18803
batch_normalization_3_18805
batch_normalization_3_18807
batch_normalization_3_18809
transformer_block_3_18813
transformer_block_3_18815
transformer_block_3_18817
transformer_block_3_18819
transformer_block_3_18821
transformer_block_3_18823
transformer_block_3_18825
transformer_block_3_18827
transformer_block_3_18829
transformer_block_3_18831
transformer_block_3_18833
transformer_block_3_18835
transformer_block_3_18837
transformer_block_3_18839
transformer_block_3_18841
transformer_block_3_18843
dense_11_18848
dense_11_18850
dense_12_18854
dense_12_18856
dense_13_18860
dense_13_18862
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂ conv1d_2/StatefulPartitionedCallЂ conv1d_3/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ"dropout_10/StatefulPartitionedCallЂ"dropout_11/StatefulPartitionedCallЂ6token_and_position_embedding_1/StatefulPartitionedCallЂ+transformer_block_3/StatefulPartitionedCall
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_1_18776$token_and_position_embedding_1_18778*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_1783428
6token_and_position_embedding_1/StatefulPartitionedCallв
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0conv1d_2_18781conv1d_2_18783*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_178662"
 conv1d_2/StatefulPartitionedCall
#average_pooling1d_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_173212%
#average_pooling1d_3/PartitionedCallП
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_3/PartitionedCall:output:0conv1d_3_18787conv1d_3_18789*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_178992"
 conv1d_3/StatefulPartitionedCallД
#average_pooling1d_5/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_173512%
#average_pooling1d_5/PartitionedCall
#average_pooling1d_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_173362%
#average_pooling1d_4/PartitionedCallЛ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_4/PartitionedCall:output:0batch_normalization_2_18794batch_normalization_2_18796batch_normalization_2_18798batch_normalization_2_18800*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_179522/
-batch_normalization_2/StatefulPartitionedCallЛ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0batch_normalization_3_18803batch_normalization_3_18805batch_normalization_3_18807batch_normalization_3_18809*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_180432/
-batch_normalization_3/StatefulPartitionedCallК
add_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:06batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_181052
add_1/PartitionedCall§
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0transformer_block_3_18813transformer_block_3_18815transformer_block_3_18817transformer_block_3_18819transformer_block_3_18821transformer_block_3_18823transformer_block_3_18825transformer_block_3_18827transformer_block_3_18829transformer_block_3_18831transformer_block_3_18833transformer_block_3_18835transformer_block_3_18837transformer_block_3_18839transformer_block_3_18841transformer_block_3_18843*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_182622-
+transformer_block_3/StatefulPartitionedCall
flatten_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_185042
flatten_1/PartitionedCall
concatenate_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_185202
concatenate_1/PartitionedCallД
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_18848dense_11_18850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_185412"
 dense_11/StatefulPartitionedCall
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_185692$
"dropout_10/StatefulPartitionedCallЙ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_12_18854dense_12_18856*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_185982"
 dense_12/StatefulPartitionedCallМ
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_186262$
"dropout_11/StatefulPartitionedCallЙ
 dense_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_13_18860dense_13_18862*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_186542"
 dense_13/StatefulPartitionedCallН
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџR
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџЕ
 
_user_specified_nameinputs

O
3__inference_average_pooling1d_4_layer_call_fn_17342

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_173362
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­0
Х
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17952

inputs
assignmovingavg_17927
assignmovingavg_1_17933)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityЂ#AssignMovingAvg/AssignSubVariableOpЂAssignMovingAvg/ReadVariableOpЂ%AssignMovingAvg_1/AssignSubVariableOpЂ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradientЈ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesЖ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ы
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/17927*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_17927*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp№
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/17927*
_output_shapes
: 2
AssignMovingAvg/subч
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/17927*
_output_shapes
: 2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_17927AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/17927*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpб
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/17933*
_output_shapes
: *
dtype0*
valueB
 *
з#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_17933*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpњ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/17933*
_output_shapes
: 2
AssignMovingAvg_1/subё
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/17933*
_output_shapes
: 2
AssignMovingAvg_1/mulЙ
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_17933AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/17933*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1З
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs
Y

B__inference_model_1_layer_call_and_return_conditional_losses_19040

inputs
inputs_1
inputs_2(
$token_and_position_embedding_1_18950(
$token_and_position_embedding_1_18952
conv1d_2_18955
conv1d_2_18957
conv1d_3_18961
conv1d_3_18963
batch_normalization_2_18968
batch_normalization_2_18970
batch_normalization_2_18972
batch_normalization_2_18974
batch_normalization_3_18977
batch_normalization_3_18979
batch_normalization_3_18981
batch_normalization_3_18983
transformer_block_3_18987
transformer_block_3_18989
transformer_block_3_18991
transformer_block_3_18993
transformer_block_3_18995
transformer_block_3_18997
transformer_block_3_18999
transformer_block_3_19001
transformer_block_3_19003
transformer_block_3_19005
transformer_block_3_19007
transformer_block_3_19009
transformer_block_3_19011
transformer_block_3_19013
transformer_block_3_19015
transformer_block_3_19017
dense_11_19022
dense_11_19024
dense_12_19028
dense_12_19030
dense_13_19034
dense_13_19036
identityЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂ conv1d_2/StatefulPartitionedCallЂ conv1d_3/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ6token_and_position_embedding_1/StatefulPartitionedCallЂ+transformer_block_3/StatefulPartitionedCall
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_1_18950$token_and_position_embedding_1_18952*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_1783428
6token_and_position_embedding_1/StatefulPartitionedCallв
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0conv1d_2_18955conv1d_2_18957*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_178662"
 conv1d_2/StatefulPartitionedCall
#average_pooling1d_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_173212%
#average_pooling1d_3/PartitionedCallП
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_3/PartitionedCall:output:0conv1d_3_18961conv1d_3_18963*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџо *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_178992"
 conv1d_3/StatefulPartitionedCallД
#average_pooling1d_5/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_173512%
#average_pooling1d_5/PartitionedCall
#average_pooling1d_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_173362%
#average_pooling1d_4/PartitionedCallН
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_4/PartitionedCall:output:0batch_normalization_2_18968batch_normalization_2_18970batch_normalization_2_18972batch_normalization_2_18974*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_179722/
-batch_normalization_2/StatefulPartitionedCallН
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0batch_normalization_3_18977batch_normalization_3_18979batch_normalization_3_18981batch_normalization_3_18983*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_180632/
-batch_normalization_3/StatefulPartitionedCallК
add_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:06batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_181052
add_1/PartitionedCall§
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0transformer_block_3_18987transformer_block_3_18989transformer_block_3_18991transformer_block_3_18993transformer_block_3_18995transformer_block_3_18997transformer_block_3_18999transformer_block_3_19001transformer_block_3_19003transformer_block_3_19005transformer_block_3_19007transformer_block_3_19009transformer_block_3_19011transformer_block_3_19013transformer_block_3_19015transformer_block_3_19017*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_183892-
+transformer_block_3/StatefulPartitionedCall
flatten_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_185042
flatten_1/PartitionedCall
concatenate_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_185202
concatenate_1/PartitionedCallД
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_19022dense_11_19024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_185412"
 dense_11/StatefulPartitionedCallџ
dropout_10/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_185742
dropout_10/PartitionedCallБ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_12_19028dense_12_19030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_185982"
 dense_12/StatefulPartitionedCallџ
dropout_11/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_186312
dropout_11/PartitionedCallБ
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_13_19034dense_13_19036*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_186542"
 dense_13/StatefulPartitionedCallѓ
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџR
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџЕ
 
_user_specified_nameinputs


P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20054

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1ш
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
е
Б
'__inference_model_1_layer_call_fn_19836
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
"  !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_188662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*р
_input_shapesЮ
Ы:џџџџџџџџџR:џџџџџџџџџ:џџџџџџџџџЕ::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:џџџџџџџџџR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:џџџџџџџџџЕ
"
_user_specified_name
inputs/2
ч

P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20300

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ# 2
batchnorm/add_1п
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:џџџџџџџџџ# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':џџџџџџџџџ# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ# 
 
_user_specified_nameinputs


P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17486

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2
batchnorm/add_1ш
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:џџџџџџџџџџџџџџџџџџ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ї
serving_default
<
input_41
serving_default_input_4:0џџџџџџџџџR
;
input_50
serving_default_input_5:0џџџџџџџџџ
<
input_61
serving_default_input_6:0џџџџџџџџџЕ<
dense_130
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Н
МK
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer_with_weights-8
layer-19
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
В_default_save_signature
Г__call__
+Д&call_and_return_all_conditional_losses"іE
_tf_keras_networkкE{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10500]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "TokenAndPositionEmbedding", "config": {"layer was saved without config": true}, "name": "token_and_position_embedding_1", "inbound_nodes": [[["input_4", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [6]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_2", "inbound_nodes": [[["token_and_position_embedding_1", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_3", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [30]}, "pool_size": {"class_name": "__tuple__", "items": [30]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_3", "inbound_nodes": [[["conv1d_2", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [9]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_3", "inbound_nodes": [[["average_pooling1d_3", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [10]}, "pool_size": {"class_name": "__tuple__", "items": [10]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_4", "inbound_nodes": [[["conv1d_3", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_5", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [300]}, "pool_size": {"class_name": "__tuple__", "items": [300]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_5", "inbound_nodes": [[["token_and_position_embedding_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_2", "inbound_nodes": [[["average_pooling1d_4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_3", "inbound_nodes": [[["average_pooling1d_5", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add_1", "trainable": true, "dtype": "float32"}, "name": "add_1", "inbound_nodes": [[["batch_normalization_2", 0, 0, {}], ["batch_normalization_3", 0, 0, {}]]]}, {"class_name": "TransformerBlock", "config": {"layer was saved without config": true}, "name": "transformer_block_3", "inbound_nodes": [[["add_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["transformer_block_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 181]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["flatten_1", 0, 0, {}], ["input_5", 0, 0, {}], ["input_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_10", "inbound_nodes": [[["dense_11", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_12", "inbound_nodes": [[["dropout_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_11", "inbound_nodes": [[["dense_12", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_13", "inbound_nodes": [[["dropout_11", 0, 0, {}]]]}], "input_layers": [["input_4", 0, 0], ["input_5", 0, 0], ["input_6", 0, 0]], "output_layers": [["dense_13", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10500]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 8]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 181]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 10500]}, {"class_name": "TensorShape", "items": [null, 8]}, {"class_name": "TensorShape", "items": [null, 181]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.0010000000474974513, "decay": 0.0, "momentum": 0.8999999761581421, "nesterov": false}}}}
ё"ю
_tf_keras_input_layerЮ{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10500]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10500]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
ч
	token_emb
pos_emb
regularization_losses
	variables
trainable_variables
 	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"К
_tf_keras_layer {"class_name": "TokenAndPositionEmbedding", "name": "token_and_position_embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
щ	

!kernel
"bias
#regularization_losses
$	variables
%trainable_variables
&	keras_api
З__call__
+И&call_and_return_all_conditional_losses"Т
_tf_keras_layerЈ{"class_name": "Conv1D", "name": "conv1d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [6]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10500, 32]}}

'regularization_losses
(	variables
)trainable_variables
*	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"ј
_tf_keras_layerо{"class_name": "AveragePooling1D", "name": "average_pooling1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling1d_3", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [30]}, "pool_size": {"class_name": "__tuple__", "items": [30]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ч	

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"Р
_tf_keras_layerІ{"class_name": "Conv1D", "name": "conv1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [9]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 350, 32]}}

1regularization_losses
2	variables
3trainable_variables
4	keras_api
Н__call__
+О&call_and_return_all_conditional_losses"ј
_tf_keras_layerо{"class_name": "AveragePooling1D", "name": "average_pooling1d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling1d_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [10]}, "pool_size": {"class_name": "__tuple__", "items": [10]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}

5regularization_losses
6	variables
7trainable_variables
8	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"њ
_tf_keras_layerр{"class_name": "AveragePooling1D", "name": "average_pooling1d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling1d_5", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [300]}, "pool_size": {"class_name": "__tuple__", "items": [300]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
И	
9axis
	:gamma
;beta
<moving_mean
=moving_variance
>regularization_losses
?	variables
@trainable_variables
A	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"т
_tf_keras_layerШ{"class_name": "BatchNormalization", "name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
И	
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"т
_tf_keras_layerШ{"class_name": "BatchNormalization", "name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
Г
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"Ђ
_tf_keras_layer{"class_name": "Add", "name": "add_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_1", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 35, 32]}, {"class_name": "TensorShape", "items": [null, 35, 32]}]}

Oatt
Pffn
Q
layernorm1
R
layernorm2
Sdropout1
Tdropout2
Uregularization_losses
V	variables
Wtrainable_variables
X	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"Ѕ
_tf_keras_layer{"class_name": "TransformerBlock", "name": "transformer_block_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
ш
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"з
_tf_keras_layerН{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
щ"ц
_tf_keras_input_layerЦ{"class_name": "InputLayer", "name": "input_5", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}}
э"ъ
_tf_keras_input_layerЪ{"class_name": "InputLayer", "name": "input_6", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 181]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 181]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}}

]regularization_losses
^	variables
_trainable_variables
`	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"є
_tf_keras_layerк{"class_name": "Concatenate", "name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1120]}, {"class_name": "TensorShape", "items": [null, 8]}, {"class_name": "TensorShape", "items": [null, 181]}]}
ј

akernel
bbias
cregularization_losses
d	variables
etrainable_variables
f	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"б
_tf_keras_layerЗ{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1309}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1309]}}
щ
gregularization_losses
h	variables
itrainable_variables
j	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"и
_tf_keras_layerО{"class_name": "Dropout", "name": "dropout_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
є

kkernel
lbias
mregularization_losses
n	variables
otrainable_variables
p	keras_api
б__call__
+в&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
щ
qregularization_losses
r	variables
strainable_variables
t	keras_api
г__call__
+д&call_and_return_all_conditional_losses"и
_tf_keras_layerО{"class_name": "Dropout", "name": "dropout_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ѕ

ukernel
vbias
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"Ю
_tf_keras_layerД{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
њ
	{decay
|learning_rate
}momentum
~iter!momentum"momentum+momentum,momentum:momentum;momentumCmomentumDmomentumamomentumbmomentumkmomentumlmomentumumomentumvmomentummomentum momentumЁmomentumЂmomentumЃmomentumЄmomentumЅmomentumІmomentumЇmomentumЈmomentumЉmomentumЊmomentumЋmomentumЌmomentum­momentumЎmomentumЏmomentumАmomentumБ"
	optimizer
 "
trackable_list_wrapper
Ч
0
1
!2
"3
+4
,5
:6
;7
<8
=9
C10
D11
E12
F13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
a30
b31
k32
l33
u34
v35"
trackable_list_wrapper
Ї
0
1
!2
"3
+4
,5
:6
;7
C8
D9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
a26
b27
k28
l29
u30
v31"
trackable_list_wrapper
г
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
metrics
layer_metrics
Г__call__
В_default_save_signature
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
-
зserving_default"
signature_map
Д

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
и__call__
+й&call_and_return_all_conditional_losses"
_tf_keras_layerѕ{"class_name": "Embedding", "name": "embedding_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 5, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10500]}}
В

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
к__call__
+л&call_and_return_all_conditional_losses"
_tf_keras_layerђ{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10500, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
 "
trackable_list_wrapper
/
0
1"
trackable_list_wrapper
/
0
1"
trackable_list_wrapper
Е
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
 layers
trainable_variables
Ёmetrics
Ђlayer_metrics
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
%:#  2conv1d_2/kernel
: 2conv1d_2/bias
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
Е
Ѓnon_trainable_variables
#regularization_losses
$	variables
 Єlayer_regularization_losses
Ѕlayers
%trainable_variables
Іmetrics
Їlayer_metrics
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Јnon_trainable_variables
'regularization_losses
(	variables
 Љlayer_regularization_losses
Њlayers
)trainable_variables
Ћmetrics
Ќlayer_metrics
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
%:#	  2conv1d_3/kernel
: 2conv1d_3/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
Е
­non_trainable_variables
-regularization_losses
.	variables
 Ўlayer_regularization_losses
Џlayers
/trainable_variables
Аmetrics
Бlayer_metrics
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Вnon_trainable_variables
1regularization_losses
2	variables
 Гlayer_regularization_losses
Дlayers
3trainable_variables
Еmetrics
Жlayer_metrics
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Зnon_trainable_variables
5regularization_losses
6	variables
 Иlayer_regularization_losses
Йlayers
7trainable_variables
Кmetrics
Лlayer_metrics
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_2/gamma
(:& 2batch_normalization_2/beta
1:/  (2!batch_normalization_2/moving_mean
5:3  (2%batch_normalization_2/moving_variance
 "
trackable_list_wrapper
<
:0
;1
<2
=3"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
Е
Мnon_trainable_variables
>regularization_losses
?	variables
 Нlayer_regularization_losses
Оlayers
@trainable_variables
Пmetrics
Рlayer_metrics
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_3/gamma
(:& 2batch_normalization_3/beta
1:/  (2!batch_normalization_3/moving_mean
5:3  (2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
Е
Сnon_trainable_variables
Gregularization_losses
H	variables
 Тlayer_regularization_losses
Уlayers
Itrainable_variables
Фmetrics
Хlayer_metrics
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Цnon_trainable_variables
Kregularization_losses
L	variables
 Чlayer_regularization_losses
Шlayers
Mtrainable_variables
Щmetrics
Ъlayer_metrics
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object

Ы_query_dense
Ь
_key_dense
Э_value_dense
Ю_softmax
Я_dropout_layer
а_output_dense
бregularization_losses
в	variables
гtrainable_variables
д	keras_api
м__call__
+н&call_and_return_all_conditional_losses"
_tf_keras_layerъ{"class_name": "MultiHeadAttention", "name": "multi_head_attention_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multi_head_attention_3", "trainable": true, "dtype": "float32", "num_heads": 1, "key_dim": 32, "value_dim": 32, "dropout": 0.0, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}
Ћ
еlayer_with_weights-0
еlayer-0
жlayer_with_weights-1
жlayer-1
зregularization_losses
и	variables
йtrainable_variables
к	keras_api
о__call__
+п&call_and_return_all_conditional_losses"Ф
_tf_keras_sequentialЅ{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 35, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_9_input"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 35, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_9_input"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
ъ
	лaxis

gamma
	beta
мregularization_losses
н	variables
оtrainable_variables
п	keras_api
р__call__
+с&call_and_return_all_conditional_losses"Г
_tf_keras_layer{"class_name": "LayerNormalization", "name": "layer_normalization_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_6", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
ъ
	рaxis

gamma
	beta
сregularization_losses
т	variables
уtrainable_variables
ф	keras_api
т__call__
+у&call_and_return_all_conditional_losses"Г
_tf_keras_layer{"class_name": "LayerNormalization", "name": "layer_normalization_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_7", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
ы
хregularization_losses
ц	variables
чtrainable_variables
ш	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ы
щregularization_losses
ъ	variables
ыtrainable_variables
ь	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
І
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
І
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
Е
эnon_trainable_variables
Uregularization_losses
V	variables
 юlayer_regularization_losses
яlayers
Wtrainable_variables
№metrics
ёlayer_metrics
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
ђnon_trainable_variables
Yregularization_losses
Z	variables
 ѓlayer_regularization_losses
єlayers
[trainable_variables
ѕmetrics
іlayer_metrics
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
їnon_trainable_variables
]regularization_losses
^	variables
 јlayer_regularization_losses
љlayers
_trainable_variables
њmetrics
ћlayer_metrics
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
": 	
@2dense_11/kernel
:@2dense_11/bias
 "
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
Е
ќnon_trainable_variables
cregularization_losses
d	variables
 §layer_regularization_losses
ўlayers
etrainable_variables
џmetrics
layer_metrics
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
gregularization_losses
h	variables
 layer_regularization_losses
layers
itrainable_variables
metrics
layer_metrics
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
!:@@2dense_12/kernel
:@2dense_12/bias
 "
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
Е
non_trainable_variables
mregularization_losses
n	variables
 layer_regularization_losses
layers
otrainable_variables
metrics
layer_metrics
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
qregularization_losses
r	variables
 layer_regularization_losses
layers
strainable_variables
metrics
layer_metrics
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_13/kernel
:2dense_13/bias
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
Е
non_trainable_variables
wregularization_losses
x	variables
 layer_regularization_losses
layers
ytrainable_variables
metrics
layer_metrics
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
G:E 25token_and_position_embedding_1/embedding_2/embeddings
H:F	R 25token_and_position_embedding_1/embedding_3/embeddings
M:K  27transformer_block_3/multi_head_attention_3/query/kernel
G:E 25transformer_block_3/multi_head_attention_3/query/bias
K:I  25transformer_block_3/multi_head_attention_3/key/kernel
E:C 23transformer_block_3/multi_head_attention_3/key/bias
M:K  27transformer_block_3/multi_head_attention_3/value/kernel
G:E 25transformer_block_3/multi_head_attention_3/value/bias
X:V  2Btransformer_block_3/multi_head_attention_3/attention_output/kernel
N:L 2@transformer_block_3/multi_head_attention_3/attention_output/bias
 : @2dense_9/kernel
:@2dense_9/bias
!:@ 2dense_10/kernel
: 2dense_10/bias
=:; 2/transformer_block_3/layer_normalization_6/gamma
<:: 2.transformer_block_3/layer_normalization_6/beta
=:; 2/transformer_block_3/layer_normalization_7/gamma
<:: 2.transformer_block_3/layer_normalization_7/beta
<
<0
=1
E2
F3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
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
10
11
12
13
14
15
16
17
18
19"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
И
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
metrics
layer_metrics
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
И
non_trainable_variables
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
metrics
layer_metrics
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
E0
F1"
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
Ы
 partial_output_shape
Ёfull_output_shape
kernel
	bias
Ђregularization_losses
Ѓ	variables
Єtrainable_variables
Ѕ	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses"ы
_tf_keras_layerб{"class_name": "EinsumDense", "name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
Ч
Іpartial_output_shape
Їfull_output_shape
kernel
	bias
Јregularization_losses
Љ	variables
Њtrainable_variables
Ћ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"ч
_tf_keras_layerЭ{"class_name": "EinsumDense", "name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
Ы
Ќpartial_output_shape
­full_output_shape
kernel
	bias
Ўregularization_losses
Џ	variables
Аtrainable_variables
Б	keras_api
ь__call__
+э&call_and_return_all_conditional_losses"ы
_tf_keras_layerб{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
ы
Вregularization_losses
Г	variables
Дtrainable_variables
Е	keras_api
ю__call__
+я&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Softmax", "name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [3]}}}
ч
Жregularization_losses
З	variables
Иtrainable_variables
Й	keras_api
№__call__
+ё&call_and_return_all_conditional_losses"в
_tf_keras_layerИ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.0, "noise_shape": null, "seed": null}}
р
Кpartial_output_shape
Лfull_output_shape
kernel
	bias
Мregularization_losses
Н	variables
Оtrainable_variables
П	keras_api
ђ__call__
+ѓ&call_and_return_all_conditional_losses"
_tf_keras_layerц{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 32], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 1, 32]}}
 "
trackable_list_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
И
Рnon_trainable_variables
бregularization_losses
в	variables
 Сlayer_regularization_losses
Тlayers
гtrainable_variables
Уmetrics
Фlayer_metrics
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
ќ
kernel
	bias
Хregularization_losses
Ц	variables
Чtrainable_variables
Ш	keras_api
є__call__
+ѕ&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}

kernel
	bias
Щregularization_losses
Ъ	variables
Ыtrainable_variables
Ь	keras_api
і__call__
+ї&call_and_return_all_conditional_losses"г
_tf_keras_layerЙ{"class_name": "Dense", "name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 64]}}
 "
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
И
Эnon_trainable_variables
зregularization_losses
и	variables
 Юlayer_regularization_losses
Яlayers
йtrainable_variables
аmetrics
бlayer_metrics
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
вnon_trainable_variables
мregularization_losses
н	variables
 гlayer_regularization_losses
дlayers
оtrainable_variables
еmetrics
жlayer_metrics
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
зnon_trainable_variables
сregularization_losses
т	variables
 иlayer_regularization_losses
йlayers
уtrainable_variables
кmetrics
лlayer_metrics
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
мnon_trainable_variables
хregularization_losses
ц	variables
 нlayer_regularization_losses
оlayers
чtrainable_variables
пmetrics
рlayer_metrics
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
сnon_trainable_variables
щregularization_losses
ъ	variables
 тlayer_regularization_losses
уlayers
ыtrainable_variables
фmetrics
хlayer_metrics
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
O0
P1
Q2
R3
S4
T5"
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
П

цtotal

чcount
ш	variables
щ	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
ъnon_trainable_variables
Ђregularization_losses
Ѓ	variables
 ыlayer_regularization_losses
ьlayers
Єtrainable_variables
эmetrics
юlayer_metrics
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
яnon_trainable_variables
Јregularization_losses
Љ	variables
 №layer_regularization_losses
ёlayers
Њtrainable_variables
ђmetrics
ѓlayer_metrics
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
єnon_trainable_variables
Ўregularization_losses
Џ	variables
 ѕlayer_regularization_losses
іlayers
Аtrainable_variables
їmetrics
јlayer_metrics
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
љnon_trainable_variables
Вregularization_losses
Г	variables
 њlayer_regularization_losses
ћlayers
Дtrainable_variables
ќmetrics
§layer_metrics
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ўnon_trainable_variables
Жregularization_losses
З	variables
 џlayer_regularization_losses
layers
Иtrainable_variables
metrics
layer_metrics
№__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
non_trainable_variables
Мregularization_losses
Н	variables
 layer_regularization_losses
layers
Оtrainable_variables
metrics
layer_metrics
ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
P
Ы0
Ь1
Э2
Ю3
Я4
а5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
non_trainable_variables
Хregularization_losses
Ц	variables
 layer_regularization_losses
layers
Чtrainable_variables
metrics
layer_metrics
є__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
non_trainable_variables
Щregularization_losses
Ъ	variables
 layer_regularization_losses
layers
Ыtrainable_variables
metrics
layer_metrics
і__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
е0
ж1"
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
:  (2total
:  (2count
0
ц0
ч1"
trackable_list_wrapper
.
ш	variables"
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
0:.  2SGD/conv1d_2/kernel/momentum
&:$ 2SGD/conv1d_2/bias/momentum
0:.	  2SGD/conv1d_3/kernel/momentum
&:$ 2SGD/conv1d_3/bias/momentum
4:2 2(SGD/batch_normalization_2/gamma/momentum
3:1 2'SGD/batch_normalization_2/beta/momentum
4:2 2(SGD/batch_normalization_3/gamma/momentum
3:1 2'SGD/batch_normalization_3/beta/momentum
-:+	
@2SGD/dense_11/kernel/momentum
&:$@2SGD/dense_11/bias/momentum
,:*@@2SGD/dense_12/kernel/momentum
&:$@2SGD/dense_12/bias/momentum
,:*@2SGD/dense_13/kernel/momentum
&:$2SGD/dense_13/bias/momentum
R:P 2BSGD/token_and_position_embedding_1/embedding_2/embeddings/momentum
S:Q	R 2BSGD/token_and_position_embedding_1/embedding_3/embeddings/momentum
X:V  2DSGD/transformer_block_3/multi_head_attention_3/query/kernel/momentum
R:P 2BSGD/transformer_block_3/multi_head_attention_3/query/bias/momentum
V:T  2BSGD/transformer_block_3/multi_head_attention_3/key/kernel/momentum
P:N 2@SGD/transformer_block_3/multi_head_attention_3/key/bias/momentum
X:V  2DSGD/transformer_block_3/multi_head_attention_3/value/kernel/momentum
R:P 2BSGD/transformer_block_3/multi_head_attention_3/value/bias/momentum
c:a  2OSGD/transformer_block_3/multi_head_attention_3/attention_output/kernel/momentum
Y:W 2MSGD/transformer_block_3/multi_head_attention_3/attention_output/bias/momentum
+:) @2SGD/dense_9/kernel/momentum
%:#@2SGD/dense_9/bias/momentum
,:*@ 2SGD/dense_10/kernel/momentum
&:$ 2SGD/dense_10/bias/momentum
H:F 2<SGD/transformer_block_3/layer_normalization_6/gamma/momentum
G:E 2;SGD/transformer_block_3/layer_normalization_6/beta/momentum
H:F 2<SGD/transformer_block_3/layer_normalization_7/gamma/momentum
G:E 2;SGD/transformer_block_3/layer_normalization_7/beta/momentum
Ћ2Ј
 __inference__wrapped_model_17312
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *sЂp
nk
"
input_4џџџџџџџџџR
!
input_5џџџџџџџџџ
"
input_6џџџџџџџџџЕ
ъ2ч
'__inference_model_1_layer_call_fn_18941
'__inference_model_1_layer_call_fn_19915
'__inference_model_1_layer_call_fn_19115
'__inference_model_1_layer_call_fn_19836Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ж2г
B__inference_model_1_layer_call_and_return_conditional_losses_18766
B__inference_model_1_layer_call_and_return_conditional_losses_19513
B__inference_model_1_layer_call_and_return_conditional_losses_19757
B__inference_model_1_layer_call_and_return_conditional_losses_18671Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
у2р
>__inference_token_and_position_embedding_1_layer_call_fn_19948
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ў2ћ
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_19939
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_conv1d_2_layer_call_fn_19973Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_conv1d_2_layer_call_and_return_conditional_losses_19964Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
3__inference_average_pooling1d_3_layer_call_fn_17327г
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ2І
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_17321г
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
в2Я
(__inference_conv1d_3_layer_call_fn_19998Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_conv1d_3_layer_call_and_return_conditional_losses_19989Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
3__inference_average_pooling1d_4_layer_call_fn_17342г
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ2І
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_17336г
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
3__inference_average_pooling1d_5_layer_call_fn_17357г
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ2І
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_17351г
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
5__inference_batch_normalization_2_layer_call_fn_20067
5__inference_batch_normalization_2_layer_call_fn_20080
5__inference_batch_normalization_2_layer_call_fn_20149
5__inference_batch_normalization_2_layer_call_fn_20162Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20116
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20054
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20136
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20034Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
5__inference_batch_normalization_3_layer_call_fn_20244
5__inference_batch_normalization_3_layer_call_fn_20326
5__inference_batch_normalization_3_layer_call_fn_20231
5__inference_batch_normalization_3_layer_call_fn_20313Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20300
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20198
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20280
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20218Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Я2Ь
%__inference_add_1_layer_call_fn_20338Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_add_1_layer_call_and_return_conditional_losses_20332Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 2
3__inference_transformer_block_3_layer_call_fn_20650
3__inference_transformer_block_3_layer_call_fn_20687А
ЇВЃ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ж2г
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_20486
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_20613А
ЇВЃ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_flatten_1_layer_call_fn_20698Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_flatten_1_layer_call_and_return_conditional_losses_20693Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
з2д
-__inference_concatenate_1_layer_call_fn_20713Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђ2я
H__inference_concatenate_1_layer_call_and_return_conditional_losses_20706Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_11_layer_call_fn_20733Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_11_layer_call_and_return_conditional_losses_20724Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_dropout_10_layer_call_fn_20755
*__inference_dropout_10_layer_call_fn_20760Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_10_layer_call_and_return_conditional_losses_20750
E__inference_dropout_10_layer_call_and_return_conditional_losses_20745Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
(__inference_dense_12_layer_call_fn_20780Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_12_layer_call_and_return_conditional_losses_20771Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_dropout_11_layer_call_fn_20802
*__inference_dropout_11_layer_call_fn_20807Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_11_layer_call_and_return_conditional_losses_20792
E__inference_dropout_11_layer_call_and_return_conditional_losses_20797Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
(__inference_dense_13_layer_call_fn_20826Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_13_layer_call_and_return_conditional_losses_20817Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
кBз
#__inference_signature_wrapper_19202input_4input_5input_6"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2џќ
ѓВя
FullArgSpece
args]Z
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
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џќ
ѓВя
FullArgSpece
args]Z
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
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ў2ћ
,__inference_sequential_3_layer_call_fn_20966
,__inference_sequential_3_layer_call_fn_20953
,__inference_sequential_3_layer_call_fn_17777
,__inference_sequential_3_layer_call_fn_17804Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ъ2ч
G__inference_sequential_3_layer_call_and_return_conditional_losses_20883
G__inference_sequential_3_layer_call_and_return_conditional_losses_17735
G__inference_sequential_3_layer_call_and_return_conditional_losses_20940
G__inference_sequential_3_layer_call_and_return_conditional_losses_17749Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
К2ЗД
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Е2ВЏ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Е2ВЏ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
К2ЗД
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_dense_9_layer_call_fn_21006Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_dense_9_layer_call_and_return_conditional_losses_20997Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_10_layer_call_fn_21045Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_10_layer_call_and_return_conditional_losses_21036Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 __inference__wrapped_model_17312ы5!"+,=:<;FCEDabkluv}Ђz
sЂp
nk
"
input_4џџџџџџџџџR
!
input_5џџџџџџџџџ
"
input_6џџџџџџџџџЕ
Њ "3Њ0
.
dense_13"
dense_13џџџџџџџџџд
@__inference_add_1_layer_call_and_return_conditional_losses_20332bЂ_
XЂU
SP
&#
inputs/0џџџџџџџџџ# 
&#
inputs/1џџџџџџџџџ# 
Њ ")Ђ&

0џџџџџџџџџ# 
 Ќ
%__inference_add_1_layer_call_fn_20338bЂ_
XЂU
SP
&#
inputs/0џџџџџџџџџ# 
&#
inputs/1џџџџџџџџџ# 
Њ "џџџџџџџџџ# з
N__inference_average_pooling1d_3_layer_call_and_return_conditional_losses_17321EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ў
3__inference_average_pooling1d_3_layer_call_fn_17327wEЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџз
N__inference_average_pooling1d_4_layer_call_and_return_conditional_losses_17336EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ў
3__inference_average_pooling1d_4_layer_call_fn_17342wEЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџз
N__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_17351EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ў
3__inference_average_pooling1d_5_layer_call_fn_17357wEЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџа
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20034|<=:;@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ 
 а
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20054|=:<;@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ 
 О
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20116j<=:;7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p
Њ ")Ђ&

0џџџџџџџџџ# 
 О
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_20136j=:<;7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p 
Њ ")Ђ&

0џџџџџџџџџ# 
 Ј
5__inference_batch_normalization_2_layer_call_fn_20067o<=:;@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p
Њ "%"џџџџџџџџџџџџџџџџџџ Ј
5__inference_batch_normalization_2_layer_call_fn_20080o=:<;@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p 
Њ "%"џџџџџџџџџџџџџџџџџџ 
5__inference_batch_normalization_2_layer_call_fn_20149]<=:;7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p
Њ "џџџџџџџџџ# 
5__inference_batch_normalization_2_layer_call_fn_20162]=:<;7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p 
Њ "џџџџџџџџџ# а
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20198|EFCD@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ 
 а
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20218|FCED@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ 
 О
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20280jEFCD7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p
Њ ")Ђ&

0џџџџџџџџџ# 
 О
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_20300jFCED7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p 
Њ ")Ђ&

0џџџџџџџџџ# 
 Ј
5__inference_batch_normalization_3_layer_call_fn_20231oEFCD@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p
Њ "%"џџџџџџџџџџџџџџџџџџ Ј
5__inference_batch_normalization_3_layer_call_fn_20244oFCED@Ђ=
6Ђ3
-*
inputsџџџџџџџџџџџџџџџџџџ 
p 
Њ "%"џџџџџџџџџџџџџџџџџџ 
5__inference_batch_normalization_3_layer_call_fn_20313]EFCD7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p
Њ "џџџџџџџџџ# 
5__inference_batch_normalization_3_layer_call_fn_20326]FCED7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p 
Њ "џџџџџџџџџ# ј
H__inference_concatenate_1_layer_call_and_return_conditional_losses_20706ЋЂ}
vЂs
qn
# 
inputs/0џџџџџџџџџр
"
inputs/1џџџџџџџџџ
# 
inputs/2џџџџџџџџџЕ
Њ "&Ђ#

0џџџџџџџџџ

 а
-__inference_concatenate_1_layer_call_fn_20713Ђ}
vЂs
qn
# 
inputs/0џџџџџџџџџр
"
inputs/1џџџџџџџџџ
# 
inputs/2џџџџџџџџџЕ
Њ "џџџџџџџџџ
­
C__inference_conv1d_2_layer_call_and_return_conditional_losses_19964f!"4Ђ1
*Ђ'
%"
inputsџџџџџџџџџR 
Њ "*Ђ'
 
0џџџџџџџџџR 
 
(__inference_conv1d_2_layer_call_fn_19973Y!"4Ђ1
*Ђ'
%"
inputsџџџџџџџџџR 
Њ "џџџџџџџџџR ­
C__inference_conv1d_3_layer_call_and_return_conditional_losses_19989f+,4Ђ1
*Ђ'
%"
inputsџџџџџџџџџо 
Њ "*Ђ'
 
0џџџџџџџџџо 
 
(__inference_conv1d_3_layer_call_fn_19998Y+,4Ђ1
*Ђ'
%"
inputsџџџџџџџџџо 
Њ "џџџџџџџџџо ­
C__inference_dense_10_layer_call_and_return_conditional_losses_21036f3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ#@
Њ ")Ђ&

0џџџџџџџџџ# 
 
(__inference_dense_10_layer_call_fn_21045Y3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ#@
Њ "џџџџџџџџџ# Є
C__inference_dense_11_layer_call_and_return_conditional_losses_20724]ab0Ђ-
&Ђ#
!
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ@
 |
(__inference_dense_11_layer_call_fn_20733Pab0Ђ-
&Ђ#
!
inputsџџџџџџџџџ

Њ "џџџџџџџџџ@Ѓ
C__inference_dense_12_layer_call_and_return_conditional_losses_20771\kl/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 {
(__inference_dense_12_layer_call_fn_20780Okl/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@Ѓ
C__inference_dense_13_layer_call_and_return_conditional_losses_20817\uv/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_13_layer_call_fn_20826Ouv/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџЌ
B__inference_dense_9_layer_call_and_return_conditional_losses_20997f3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ# 
Њ ")Ђ&

0џџџџџџџџџ#@
 
'__inference_dense_9_layer_call_fn_21006Y3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ# 
Њ "џџџџџџџџџ#@Ѕ
E__inference_dropout_10_layer_call_and_return_conditional_losses_20745\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "%Ђ"

0џџџџџџџџџ@
 Ѕ
E__inference_dropout_10_layer_call_and_return_conditional_losses_20750\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "%Ђ"

0џџџџџџџџџ@
 }
*__inference_dropout_10_layer_call_fn_20755O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "џџџџџџџџџ@}
*__inference_dropout_10_layer_call_fn_20760O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "џџџџџџџџџ@Ѕ
E__inference_dropout_11_layer_call_and_return_conditional_losses_20792\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "%Ђ"

0џџџџџџџџџ@
 Ѕ
E__inference_dropout_11_layer_call_and_return_conditional_losses_20797\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "%Ђ"

0џџџџџџџџџ@
 }
*__inference_dropout_11_layer_call_fn_20802O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "џџџџџџџџџ@}
*__inference_dropout_11_layer_call_fn_20807O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "џџџџџџџџџ@Ѕ
D__inference_flatten_1_layer_call_and_return_conditional_losses_20693]3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ# 
Њ "&Ђ#

0џџџџџџџџџр
 }
)__inference_flatten_1_layer_call_fn_20698P3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ# 
Њ "џџџџџџџџџрЎ
B__inference_model_1_layer_call_and_return_conditional_losses_18671ч5!"+,<=:;EFCDabkluvЂ
{Ђx
nk
"
input_4џџџџџџџџџR
!
input_5џџџџџџџџџ
"
input_6џџџџџџџџџЕ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ў
B__inference_model_1_layer_call_and_return_conditional_losses_18766ч5!"+,=:<;FCEDabkluvЂ
{Ђx
nk
"
input_4џџџџџџџџџR
!
input_5џџџџџџџџџ
"
input_6џџџџџџџџџЕ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Б
B__inference_model_1_layer_call_and_return_conditional_losses_19513ъ5!"+,<=:;EFCDabkluvЂ
~Ђ{
qn
# 
inputs/0џџџџџџџџџR
"
inputs/1џџџџџџџџџ
# 
inputs/2џџџџџџџџџЕ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Б
B__inference_model_1_layer_call_and_return_conditional_losses_19757ъ5!"+,=:<;FCEDabkluvЂ
~Ђ{
qn
# 
inputs/0џџџџџџџџџR
"
inputs/1џџџџџџџџџ
# 
inputs/2џџџџџџџџџЕ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
'__inference_model_1_layer_call_fn_18941к5!"+,<=:;EFCDabkluvЂ
{Ђx
nk
"
input_4џџџџџџџџџR
!
input_5џџџџџџџџџ
"
input_6џџџџџџџџџЕ
p

 
Њ "џџџџџџџџџ
'__inference_model_1_layer_call_fn_19115к5!"+,=:<;FCEDabkluvЂ
{Ђx
nk
"
input_4џџџџџџџџџR
!
input_5џџџџџџџџџ
"
input_6џџџџџџџџџЕ
p 

 
Њ "џџџџџџџџџ
'__inference_model_1_layer_call_fn_19836н5!"+,<=:;EFCDabkluvЂ
~Ђ{
qn
# 
inputs/0џџџџџџџџџR
"
inputs/1џџџџџџџџџ
# 
inputs/2џџџџџџџџџЕ
p

 
Њ "џџџџџџџџџ
'__inference_model_1_layer_call_fn_19915н5!"+,=:<;FCEDabkluvЂ
~Ђ{
qn
# 
inputs/0џџџџџџџџџR
"
inputs/1џџџџџџџџџ
# 
inputs/2џџџџџџџџџЕ
p 

 
Њ "џџџџџџџџџФ
G__inference_sequential_3_layer_call_and_return_conditional_losses_17735yBЂ?
8Ђ5
+(
dense_9_inputџџџџџџџџџ# 
p

 
Њ ")Ђ&

0џџџџџџџџџ# 
 Ф
G__inference_sequential_3_layer_call_and_return_conditional_losses_17749yBЂ?
8Ђ5
+(
dense_9_inputџџџџџџџџџ# 
p 

 
Њ ")Ђ&

0џџџџџџџџџ# 
 Н
G__inference_sequential_3_layer_call_and_return_conditional_losses_20883r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ# 
p

 
Њ ")Ђ&

0џџџџџџџџџ# 
 Н
G__inference_sequential_3_layer_call_and_return_conditional_losses_20940r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ# 
p 

 
Њ ")Ђ&

0џџџџџџџџџ# 
 
,__inference_sequential_3_layer_call_fn_17777lBЂ?
8Ђ5
+(
dense_9_inputџџџџџџџџџ# 
p

 
Њ "џџџџџџџџџ# 
,__inference_sequential_3_layer_call_fn_17804lBЂ?
8Ђ5
+(
dense_9_inputџџџџџџџџџ# 
p 

 
Њ "џџџџџџџџџ# 
,__inference_sequential_3_layer_call_fn_20953e;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ# 
p

 
Њ "џџџџџџџџџ# 
,__inference_sequential_3_layer_call_fn_20966e;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ# 
p 

 
Њ "џџџџџџџџџ# Г
#__inference_signature_wrapper_192025!"+,=:<;FCEDabkluvЂ
Ђ 
Њ
-
input_4"
input_4џџџџџџџџџR
,
input_5!
input_5џџџџџџџџџ
-
input_6"
input_6џџџџџџџџџЕ"3Њ0
.
dense_13"
dense_13џџџџџџџџџЛ
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_19939^+Ђ(
!Ђ

xџџџџџџџџџR
Њ "*Ђ'
 
0џџџџџџџџџR 
 
>__inference_token_and_position_embedding_1_layer_call_fn_19948Q+Ђ(
!Ђ

xџџџџџџџџџR
Њ "џџџџџџџџџR й
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_20486 7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p
Њ ")Ђ&

0џџџџџџџџџ# 
 й
N__inference_transformer_block_3_layer_call_and_return_conditional_losses_20613 7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p 
Њ ")Ђ&

0џџџџџџџџџ# 
 А
3__inference_transformer_block_3_layer_call_fn_20650y 7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p
Њ "џџџџџџџџџ# А
3__inference_transformer_block_3_layer_call_fn_20687y 7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ# 
p 
Њ "џџџџџџџџџ# 