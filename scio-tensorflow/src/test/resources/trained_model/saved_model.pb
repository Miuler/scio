��
��
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
�
AsString

input"T

output"
Ttype:
	2	
"
	precisionint���������"

scientificbool( "
shortestbool( "
widthint���������"
fillstring 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.5.02v1.5.0-0-g37aa430d84��

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
�
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*
shape:���������*#
_output_shapes
:���������
l
'ParseExample/key_class_name_Iris-setosaConst*
dtype0*
valueB
 *    *
_output_shapes
: 
]
ParseExample/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 
�
ParseExample/ReshapeReshape'ParseExample/key_class_name_Iris-setosaParseExample/Reshape/shape*
_output_shapes
: *
Tshape0*
T0
p
+ParseExample/key_class_name_Iris-versicolorConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
ParseExample/Reshape_1/shapeConst*
dtype0*
valueB *
_output_shapes
: 
�
ParseExample/Reshape_1Reshape+ParseExample/key_class_name_Iris-versicolorParseExample/Reshape_1/shape*
_output_shapes
: *
Tshape0*
T0
o
*ParseExample/key_class_name_Iris-virginicaConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
ParseExample/Reshape_2/shapeConst*
dtype0*
valueB *
_output_shapes
: 
�
ParseExample/Reshape_2Reshape*ParseExample/key_class_name_Iris-virginicaParseExample/Reshape_2/shape*
_output_shapes
: *
Tshape0*
T0
b
ParseExample/key_petal_lengthConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
ParseExample/Reshape_3/shapeConst*
dtype0*
valueB *
_output_shapes
: 
�
ParseExample/Reshape_3ReshapeParseExample/key_petal_lengthParseExample/Reshape_3/shape*
_output_shapes
: *
Tshape0*
T0
a
ParseExample/key_petal_widthConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
ParseExample/Reshape_4/shapeConst*
dtype0*
valueB *
_output_shapes
: 
�
ParseExample/Reshape_4ReshapeParseExample/key_petal_widthParseExample/Reshape_4/shape*
_output_shapes
: *
Tshape0*
T0
b
ParseExample/key_sepal_lengthConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
ParseExample/Reshape_5/shapeConst*
dtype0*
valueB *
_output_shapes
: 
�
ParseExample/Reshape_5ReshapeParseExample/key_sepal_lengthParseExample/Reshape_5/shape*
_output_shapes
: *
Tshape0*
T0
a
ParseExample/key_sepal_widthConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
ParseExample/Reshape_6/shapeConst*
dtype0*
valueB *
_output_shapes
: 
�
ParseExample/Reshape_6ReshapeParseExample/key_sepal_widthParseExample/Reshape_6/shape*
_output_shapes
: *
Tshape0*
T0
b
ParseExample/ParseExample/namesConst*
dtype0*
valueB *
_output_shapes
: 
}
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*'
valueB Bclass_name_Iris-setosa*
_output_shapes
: 
�
&ParseExample/ParseExample/dense_keys_1Const*
dtype0*+
value"B  Bclass_name_Iris-versicolor*
_output_shapes
: 
�
&ParseExample/ParseExample/dense_keys_2Const*
dtype0**
value!B Bclass_name_Iris-virginica*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_3Const*
dtype0*
valueB Bpetal_length*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_4Const*
dtype0*
valueB Bpetal_width*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_5Const*
dtype0*
valueB Bsepal_length*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_6Const*
dtype0*
valueB Bsepal_width*
_output_shapes
: 
�
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6ParseExample/ReshapeParseExample/Reshape_1ParseExample/Reshape_2ParseExample/Reshape_3ParseExample/Reshape_4ParseExample/Reshape_5ParseExample/Reshape_6* 
dense_shapes
: : : : : : : *}
_output_shapesk
i:���������:���������:���������:���������:���������:���������:���������*
Ndense*
sparse_types
 *
Tdense
	2*
Nsparse 
z
/linear/linear_model/petal_length/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
+linear/linear_model/petal_length/ExpandDims
ExpandDimsParseExample/ParseExample:3/linear/linear_model/petal_length/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
&linear/linear_model/petal_length/ShapeShape+linear/linear_model/petal_length/ExpandDims*
out_type0*
T0*
_output_shapes
:
~
4linear/linear_model/petal_length/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
�
6linear/linear_model/petal_length/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
�
6linear/linear_model/petal_length/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
.linear/linear_model/petal_length/strided_sliceStridedSlice&linear/linear_model/petal_length/Shape4linear/linear_model/petal_length/strided_slice/stack6linear/linear_model/petal_length/strided_slice/stack_16linear/linear_model/petal_length/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
r
0linear/linear_model/petal_length/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
�
.linear/linear_model/petal_length/Reshape/shapePack.linear/linear_model/petal_length/strided_slice0linear/linear_model/petal_length/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
�
(linear/linear_model/petal_length/ReshapeReshape+linear/linear_model/petal_length/ExpandDims.linear/linear_model/petal_length/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
Alinear/linear_model/petal_length/weights/part_0/Initializer/zerosConst*
dtype0*B
_class8
64loc:@linear/linear_model/petal_length/weights/part_0*
valueB*    *
_output_shapes

:
�
/linear/linear_model/petal_length/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*B
_class8
64loc:@linear/linear_model/petal_length/weights/part_0*
shared_name 
�
6linear/linear_model/petal_length/weights/part_0/AssignAssign/linear/linear_model/petal_length/weights/part_0Alinear/linear_model/petal_length/weights/part_0/Initializer/zeros*
validate_shape(*B
_class8
64loc:@linear/linear_model/petal_length/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
4linear/linear_model/petal_length/weights/part_0/readIdentity/linear/linear_model/petal_length/weights/part_0*B
_class8
64loc:@linear/linear_model/petal_length/weights/part_0*
T0*
_output_shapes

:
�
(linear/linear_model/petal_length/weightsIdentity4linear/linear_model/petal_length/weights/part_0/read*
T0*
_output_shapes

:
�
-linear/linear_model/petal_length/weighted_sumMatMul(linear/linear_model/petal_length/Reshape(linear/linear_model/petal_length/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
y
.linear/linear_model/petal_width/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
*linear/linear_model/petal_width/ExpandDims
ExpandDimsParseExample/ParseExample:4.linear/linear_model/petal_width/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
%linear/linear_model/petal_width/ShapeShape*linear/linear_model/petal_width/ExpandDims*
out_type0*
T0*
_output_shapes
:
}
3linear/linear_model/petal_width/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

5linear/linear_model/petal_width/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

5linear/linear_model/petal_width/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
-linear/linear_model/petal_width/strided_sliceStridedSlice%linear/linear_model/petal_width/Shape3linear/linear_model/petal_width/strided_slice/stack5linear/linear_model/petal_width/strided_slice/stack_15linear/linear_model/petal_width/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
q
/linear/linear_model/petal_width/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
�
-linear/linear_model/petal_width/Reshape/shapePack-linear/linear_model/petal_width/strided_slice/linear/linear_model/petal_width/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
�
'linear/linear_model/petal_width/ReshapeReshape*linear/linear_model/petal_width/ExpandDims-linear/linear_model/petal_width/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
@linear/linear_model/petal_width/weights/part_0/Initializer/zerosConst*
dtype0*A
_class7
53loc:@linear/linear_model/petal_width/weights/part_0*
valueB*    *
_output_shapes

:
�
.linear/linear_model/petal_width/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*A
_class7
53loc:@linear/linear_model/petal_width/weights/part_0*
shared_name 
�
5linear/linear_model/petal_width/weights/part_0/AssignAssign.linear/linear_model/petal_width/weights/part_0@linear/linear_model/petal_width/weights/part_0/Initializer/zeros*
validate_shape(*A
_class7
53loc:@linear/linear_model/petal_width/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
3linear/linear_model/petal_width/weights/part_0/readIdentity.linear/linear_model/petal_width/weights/part_0*A
_class7
53loc:@linear/linear_model/petal_width/weights/part_0*
T0*
_output_shapes

:
�
'linear/linear_model/petal_width/weightsIdentity3linear/linear_model/petal_width/weights/part_0/read*
T0*
_output_shapes

:
�
,linear/linear_model/petal_width/weighted_sumMatMul'linear/linear_model/petal_width/Reshape'linear/linear_model/petal_width/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
z
/linear/linear_model/sepal_length/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
+linear/linear_model/sepal_length/ExpandDims
ExpandDimsParseExample/ParseExample:5/linear/linear_model/sepal_length/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
&linear/linear_model/sepal_length/ShapeShape+linear/linear_model/sepal_length/ExpandDims*
out_type0*
T0*
_output_shapes
:
~
4linear/linear_model/sepal_length/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
�
6linear/linear_model/sepal_length/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
�
6linear/linear_model/sepal_length/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
.linear/linear_model/sepal_length/strided_sliceStridedSlice&linear/linear_model/sepal_length/Shape4linear/linear_model/sepal_length/strided_slice/stack6linear/linear_model/sepal_length/strided_slice/stack_16linear/linear_model/sepal_length/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
r
0linear/linear_model/sepal_length/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
�
.linear/linear_model/sepal_length/Reshape/shapePack.linear/linear_model/sepal_length/strided_slice0linear/linear_model/sepal_length/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
�
(linear/linear_model/sepal_length/ReshapeReshape+linear/linear_model/sepal_length/ExpandDims.linear/linear_model/sepal_length/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
Alinear/linear_model/sepal_length/weights/part_0/Initializer/zerosConst*
dtype0*B
_class8
64loc:@linear/linear_model/sepal_length/weights/part_0*
valueB*    *
_output_shapes

:
�
/linear/linear_model/sepal_length/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*B
_class8
64loc:@linear/linear_model/sepal_length/weights/part_0*
shared_name 
�
6linear/linear_model/sepal_length/weights/part_0/AssignAssign/linear/linear_model/sepal_length/weights/part_0Alinear/linear_model/sepal_length/weights/part_0/Initializer/zeros*
validate_shape(*B
_class8
64loc:@linear/linear_model/sepal_length/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
4linear/linear_model/sepal_length/weights/part_0/readIdentity/linear/linear_model/sepal_length/weights/part_0*B
_class8
64loc:@linear/linear_model/sepal_length/weights/part_0*
T0*
_output_shapes

:
�
(linear/linear_model/sepal_length/weightsIdentity4linear/linear_model/sepal_length/weights/part_0/read*
T0*
_output_shapes

:
�
-linear/linear_model/sepal_length/weighted_sumMatMul(linear/linear_model/sepal_length/Reshape(linear/linear_model/sepal_length/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
y
.linear/linear_model/sepal_width/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
*linear/linear_model/sepal_width/ExpandDims
ExpandDimsParseExample/ParseExample:6.linear/linear_model/sepal_width/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
%linear/linear_model/sepal_width/ShapeShape*linear/linear_model/sepal_width/ExpandDims*
out_type0*
T0*
_output_shapes
:
}
3linear/linear_model/sepal_width/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

5linear/linear_model/sepal_width/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

5linear/linear_model/sepal_width/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
-linear/linear_model/sepal_width/strided_sliceStridedSlice%linear/linear_model/sepal_width/Shape3linear/linear_model/sepal_width/strided_slice/stack5linear/linear_model/sepal_width/strided_slice/stack_15linear/linear_model/sepal_width/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
q
/linear/linear_model/sepal_width/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
�
-linear/linear_model/sepal_width/Reshape/shapePack-linear/linear_model/sepal_width/strided_slice/linear/linear_model/sepal_width/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
�
'linear/linear_model/sepal_width/ReshapeReshape*linear/linear_model/sepal_width/ExpandDims-linear/linear_model/sepal_width/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
@linear/linear_model/sepal_width/weights/part_0/Initializer/zerosConst*
dtype0*A
_class7
53loc:@linear/linear_model/sepal_width/weights/part_0*
valueB*    *
_output_shapes

:
�
.linear/linear_model/sepal_width/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*A
_class7
53loc:@linear/linear_model/sepal_width/weights/part_0*
shared_name 
�
5linear/linear_model/sepal_width/weights/part_0/AssignAssign.linear/linear_model/sepal_width/weights/part_0@linear/linear_model/sepal_width/weights/part_0/Initializer/zeros*
validate_shape(*A
_class7
53loc:@linear/linear_model/sepal_width/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
3linear/linear_model/sepal_width/weights/part_0/readIdentity.linear/linear_model/sepal_width/weights/part_0*A
_class7
53loc:@linear/linear_model/sepal_width/weights/part_0*
T0*
_output_shapes

:
�
'linear/linear_model/sepal_width/weightsIdentity3linear/linear_model/sepal_width/weights/part_0/read*
T0*
_output_shapes

:
�
,linear/linear_model/sepal_width/weighted_sumMatMul'linear/linear_model/sepal_width/Reshape'linear/linear_model/sepal_width/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
�
(linear/linear_model/weighted_sum_no_biasAddN-linear/linear_model/petal_length/weighted_sum,linear/linear_model/petal_width/weighted_sum-linear/linear_model/sepal_length/weighted_sum,linear/linear_model/sepal_width/weighted_sum*'
_output_shapes
:���������*
T0*
N
�
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
_output_shapes
:
�
'linear/linear_model/bias_weights/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
shared_name 
�
.linear/linear_model/bias_weights/part_0/AssignAssign'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
T0*
_output_shapes
:
�
,linear/linear_model/bias_weights/part_0/readIdentity'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
T0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity,linear/linear_model/bias_weights/part_0/read*
T0*
_output_shapes
:
�
 linear/linear_model/weighted_sumBiasAdd(linear/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*'
_output_shapes
:���������*
data_formatNHWC*
T0
x
linear/head/logits/ShapeShape linear/linear_model/weighted_sum*
out_type0*
T0*
_output_shapes
:
n
,linear/head/logits/assert_rank_at_least/rankConst*
dtype0*
value	B :*
_output_shapes
: 
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
v
+linear/head/predictions/class_ids/dimensionConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
!linear/head/predictions/class_idsArgMax linear/linear_model/weighted_sum+linear/head/predictions/class_ids/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
q
&linear/head/predictions/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
"linear/head/predictions/ExpandDims
ExpandDims!linear/head/predictions/class_ids&linear/head/predictions/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:���������
�
#linear/head/predictions/str_classesAsString"linear/head/predictions/ExpandDims*

scientific( *'
_output_shapes
:���������*
	precision���������*
width���������*
T0	*
shortest( *

fill 
�
%linear/head/predictions/probabilitiesSoftmax linear/linear_model/weighted_sum*
T0*'
_output_shapes
:���������
v
linear/head/ShapeShape%linear/head/predictions/probabilities*
out_type0*
T0*
_output_shapes
:
i
linear/head/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
k
!linear/head/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
k
!linear/head/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
linear/head/strided_sliceStridedSlicelinear/head/Shapelinear/head/strided_slice/stack!linear/head/strided_slice/stack_1!linear/head/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
Y
linear/head/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Y
linear/head/range/limitConst*
dtype0*
value	B :*
_output_shapes
: 
Y
linear/head/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
linear/head/rangeRangelinear/head/range/startlinear/head/range/limitlinear/head/range/delta*

Tidx0*
_output_shapes
:
�
linear/head/AsStringAsStringlinear/head/range*

scientific( *
_output_shapes
:*
	precision���������*
width���������*
T0*
shortest( *

fill 
\
linear/head/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
linear/head/ExpandDims
ExpandDimslinear/head/AsStringlinear/head/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
^
linear/head/Tile/multiples/1Const*
dtype0*
value	B :*
_output_shapes
: 
�
linear/head/Tile/multiplesPacklinear/head/strided_slicelinear/head/Tile/multiples/1*
N*

axis *
T0*
_output_shapes
:
�
linear/head/TileTilelinear/head/ExpandDimslinear/head/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:���������
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_b33ec216041c40c2ba4399a72da1e5cf/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*�
value�B�Bglobal_stepB linear/linear_model/bias_weightsB(linear/linear_model/petal_length/weightsB'linear/linear_model/petal_width/weightsB(linear/linear_model/sepal_length/weightsB'linear/linear_model/sepal_width/weights*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*P
valueGBEB B3 0,3B1 3 0,1:0,3B1 3 0,1:0,3B1 3 0,1:0,3B1 3 0,1:0,3*
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step,linear/linear_model/bias_weights/part_0/read4linear/linear_model/petal_length/weights/part_0/read3linear/linear_model/petal_width/weights/part_0/read4linear/linear_model/sepal_length/weights/part_0/read3linear/linear_model/sepal_width/weights/part_0/read"/device:CPU:0*
dtypes

2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*

axis *
T0*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2	*
_output_shapes
:
�
save/AssignAssignglobal_stepsave/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
�
save/RestoreV2_1/tensor_namesConst*
dtype0*5
value,B*B linear/linear_model/bias_weights*
_output_shapes
:
o
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueBB3 0,3*
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1Assign'linear/linear_model/bias_weights/part_0save/RestoreV2_1*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_2/tensor_namesConst*
dtype0*=
value4B2B(linear/linear_model/petal_length/weights*
_output_shapes
:
u
!save/RestoreV2_2/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save/Assign_2Assign/linear/linear_model/petal_length/weights/part_0save/RestoreV2_2*
validate_shape(*B
_class8
64loc:@linear/linear_model/petal_length/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
save/RestoreV2_3/tensor_namesConst*
dtype0*<
value3B1B'linear/linear_model/petal_width/weights*
_output_shapes
:
u
!save/RestoreV2_3/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save/Assign_3Assign.linear/linear_model/petal_width/weights/part_0save/RestoreV2_3*
validate_shape(*A
_class7
53loc:@linear/linear_model/petal_width/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
save/RestoreV2_4/tensor_namesConst*
dtype0*=
value4B2B(linear/linear_model/sepal_length/weights*
_output_shapes
:
u
!save/RestoreV2_4/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save/Assign_4Assign/linear/linear_model/sepal_length/weights/part_0save/RestoreV2_4*
validate_shape(*B
_class8
64loc:@linear/linear_model/sepal_length/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
save/RestoreV2_5/tensor_namesConst*
dtype0*<
value3B1B'linear/linear_model/sepal_width/weights*
_output_shapes
:
u
!save/RestoreV2_5/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save/Assign_5Assign.linear/linear_model/sepal_width/weights/part_0save/RestoreV2_5*
validate_shape(*A
_class7
53loc:@linear/linear_model/sepal_width/weights/part_0*
use_locking(*
T0*
_output_shapes

:
x
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_all_tables^init_1
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_1bcecc9f92c6404894bda0b20da7d4b4/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*�
value�B�Bglobal_stepB linear/linear_model/bias_weightsB(linear/linear_model/petal_length/weightsB'linear/linear_model/petal_width/weightsB(linear/linear_model/sepal_length/weightsB'linear/linear_model/sepal_width/weights*
_output_shapes
:
�
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*P
valueGBEB B3 0,3B1 3 0,1:0,3B1 3 0,1:0,3B1 3 0,1:0,3B1 3 0,1:0,3*
_output_shapes
:
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_step,linear/linear_model/bias_weights/part_0/read4linear/linear_model/petal_length/weights/part_0/read3linear/linear_model/petal_width/weights/part_0/read4linear/linear_model/sepal_length/weights/part_0/read3linear/linear_model/sepal_width/weights/part_0/read"/device:CPU:0*
dtypes

2	
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*

axis *
T0*
_output_shapes
:
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
q
save_1/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2	*
_output_shapes
:
�
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
�
save_1/RestoreV2_1/tensor_namesConst*
dtype0*5
value,B*B linear/linear_model/bias_weights*
_output_shapes
:
q
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueBB3 0,3*
_output_shapes
:
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_1Assign'linear/linear_model/bias_weights/part_0save_1/RestoreV2_1*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_2/tensor_namesConst*
dtype0*=
value4B2B(linear/linear_model/petal_length/weights*
_output_shapes
:
w
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save_1/Assign_2Assign/linear/linear_model/petal_length/weights/part_0save_1/RestoreV2_2*
validate_shape(*B
_class8
64loc:@linear/linear_model/petal_length/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
save_1/RestoreV2_3/tensor_namesConst*
dtype0*<
value3B1B'linear/linear_model/petal_width/weights*
_output_shapes
:
w
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save_1/Assign_3Assign.linear/linear_model/petal_width/weights/part_0save_1/RestoreV2_3*
validate_shape(*A
_class7
53loc:@linear/linear_model/petal_width/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
save_1/RestoreV2_4/tensor_namesConst*
dtype0*=
value4B2B(linear/linear_model/sepal_length/weights*
_output_shapes
:
w
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save_1/Assign_4Assign/linear/linear_model/sepal_length/weights/part_0save_1/RestoreV2_4*
validate_shape(*B
_class8
64loc:@linear/linear_model/sepal_length/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
save_1/RestoreV2_5/tensor_namesConst*
dtype0*<
value3B1B'linear/linear_model/sepal_width/weights*
_output_shapes
:
w
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0* 
valueBB1 3 0,1:0,3*
_output_shapes
:
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:
�
save_1/Assign_5Assign.linear/linear_model/sepal_width/weights/part_0save_1/RestoreV2_5*
validate_shape(*A
_class7
53loc:@linear/linear_model/sepal_width/weights/part_0*
use_locking(*
T0*
_output_shapes

:
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"�
	variables��
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
1linear/linear_model/petal_length/weights/part_0:06linear/linear_model/petal_length/weights/part_0/Assign6linear/linear_model/petal_length/weights/part_0/read:0"6
(linear/linear_model/petal_length/weights  "2Clinear/linear_model/petal_length/weights/part_0/Initializer/zeros:0
�
0linear/linear_model/petal_width/weights/part_0:05linear/linear_model/petal_width/weights/part_0/Assign5linear/linear_model/petal_width/weights/part_0/read:0"5
'linear/linear_model/petal_width/weights  "2Blinear/linear_model/petal_width/weights/part_0/Initializer/zeros:0
�
1linear/linear_model/sepal_length/weights/part_0:06linear/linear_model/sepal_length/weights/part_0/Assign6linear/linear_model/sepal_length/weights/part_0/read:0"6
(linear/linear_model/sepal_length/weights  "2Clinear/linear_model/sepal_length/weights/part_0/Initializer/zeros:0
�
0linear/linear_model/sepal_width/weights/part_0:05linear/linear_model/sepal_width/weights/part_0/Assign5linear/linear_model/sepal_width/weights/part_0/read:0"5
'linear/linear_model/sepal_width/weights  "2Blinear/linear_model/sepal_width/weights/part_0/Initializer/zeros:0
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0" 
legacy_init_op


group_deps" 
global_step

global_step:0"�
model_variables�
�

�
1linear/linear_model/petal_length/weights/part_0:06linear/linear_model/petal_length/weights/part_0/Assign6linear/linear_model/petal_length/weights/part_0/read:0"6
(linear/linear_model/petal_length/weights  "2Clinear/linear_model/petal_length/weights/part_0/Initializer/zeros:0
�
0linear/linear_model/petal_width/weights/part_0:05linear/linear_model/petal_width/weights/part_0/Assign5linear/linear_model/petal_width/weights/part_0/read:0"5
'linear/linear_model/petal_width/weights  "2Blinear/linear_model/petal_width/weights/part_0/Initializer/zeros:0
�
1linear/linear_model/sepal_length/weights/part_0:06linear/linear_model/sepal_length/weights/part_0/Assign6linear/linear_model/sepal_length/weights/part_0/read:0"6
(linear/linear_model/sepal_length/weights  "2Clinear/linear_model/sepal_length/weights/part_0/Initializer/zeros:0
�
0linear/linear_model/sepal_width/weights/part_0:05linear/linear_model/sepal_width/weights/part_0/Assign5linear/linear_model/sepal_width/weights/part_0/read:0"5
'linear/linear_model/sepal_width/weights  "2Blinear/linear_model/sepal_width/weights/part_0/Initializer/zeros:0
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"�
trainable_variables�
�

�
1linear/linear_model/petal_length/weights/part_0:06linear/linear_model/petal_length/weights/part_0/Assign6linear/linear_model/petal_length/weights/part_0/read:0"6
(linear/linear_model/petal_length/weights  "2Clinear/linear_model/petal_length/weights/part_0/Initializer/zeros:0
�
0linear/linear_model/petal_width/weights/part_0:05linear/linear_model/petal_width/weights/part_0/Assign5linear/linear_model/petal_width/weights/part_0/read:0"5
'linear/linear_model/petal_width/weights  "2Blinear/linear_model/petal_width/weights/part_0/Initializer/zeros:0
�
1linear/linear_model/sepal_length/weights/part_0:06linear/linear_model/sepal_length/weights/part_0/Assign6linear/linear_model/sepal_length/weights/part_0/read:0"6
(linear/linear_model/sepal_length/weights  "2Clinear/linear_model/sepal_length/weights/part_0/Initializer/zeros:0
�
0linear/linear_model/sepal_width/weights/part_0:05linear/linear_model/sepal_width/weights/part_0/Assign5linear/linear_model/sepal_width/weights/part_0/read:0"5
'linear/linear_model/sepal_width/weights  "2Blinear/linear_model/sepal_width/weights/part_0/Initializer/zeros:0
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0*�
predict�
5
examples)
input_example_tensor:0���������O
probabilities>
'linear/head/predictions/probabilities:0���������C
logits9
"linear/linear_model/weighted_sum:0���������G
classes<
%linear/head/predictions/str_classes:0���������H
	class_ids;
$linear/head/predictions/ExpandDims:0	���������tensorflow/serving/predict*�
serving_default�
3
inputs)
input_example_tensor:0���������4
classes)
linear/head/Tile:0���������H
scores>
'linear/head/predictions/probabilities:0���������tensorflow/serving/classify*�
classification�
3
inputs)
input_example_tensor:0���������4
classes)
linear/head/Tile:0���������H
scores>
'linear/head/predictions/probabilities:0���������tensorflow/serving/classify