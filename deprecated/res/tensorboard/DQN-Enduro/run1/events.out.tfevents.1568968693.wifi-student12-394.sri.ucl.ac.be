       ŁK"	  @ý#a×Abrain.Event:2Ňd´Ľ     (-Ël	37Dý#a×A"§Ë
k
Frame/RawImagePlaceholder*
dtype0*$
_output_shapes
:Ň *
shape:Ň 

Frame/Gray/convert_image/CastCastFrame/RawImage*

SrcT0*
Truncate( *$
_output_shapes
:Ň *

DstT0
_
Frame/Gray/convert_image/yConst*
dtype0*
_output_shapes
: *
valueB
 *   0

Frame/Gray/convert_imageMulFrame/Gray/convert_image/CastFrame/Gray/convert_image/y*$
_output_shapes
:Ň *
T0
k
Frame/Gray/Tensordot/bConst*!
valueB"l	>˘E?Őxé=*
dtype0*
_output_shapes
:
x
#Frame/Gray/Tensordot/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
Ś
Frame/Gray/Tensordot/transpose	TransposeFrame/Gray/convert_image#Frame/Gray/Tensordot/transpose/perm*$
_output_shapes
:Ň *
Tperm0*
T0
s
"Frame/Gray/Tensordot/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"@     
¤
Frame/Gray/Tensordot/ReshapeReshapeFrame/Gray/Tensordot/transpose"Frame/Gray/Tensordot/Reshape/shape* 
_output_shapes
:
Ŕ*
T0*
Tshape0
o
%Frame/Gray/Tensordot/transpose_1/permConst*
dtype0*
_output_shapes
:*
valueB: 

 Frame/Gray/Tensordot/transpose_1	TransposeFrame/Gray/Tensordot/b%Frame/Gray/Tensordot/transpose_1/perm*
T0*
_output_shapes
:*
Tperm0
u
$Frame/Gray/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
¨
Frame/Gray/Tensordot/Reshape_1Reshape Frame/Gray/Tensordot/transpose_1$Frame/Gray/Tensordot/Reshape_1/shape*
_output_shapes

:*
T0*
Tshape0
´
Frame/Gray/Tensordot/MatMulMatMulFrame/Gray/Tensordot/ReshapeFrame/Gray/Tensordot/Reshape_1*
T0* 
_output_shapes
:
Ŕ*
transpose_a( *
transpose_b( 
k
Frame/Gray/Tensordot/shapeConst*
valueB"Ň       *
dtype0*
_output_shapes
:

Frame/Gray/TensordotReshapeFrame/Gray/Tensordot/MatMulFrame/Gray/Tensordot/shape* 
_output_shapes
:
Ň *
T0*
Tshape0
d
Frame/Gray/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

Frame/Gray/ExpandDims
ExpandDimsFrame/Gray/TensordotFrame/Gray/ExpandDims/dim*
T0*$
_output_shapes
:Ň *

Tdim0
U
Frame/Gray/Mul/yConst*
valueB
 *   O*
dtype0*
_output_shapes
: 
m
Frame/Gray/MulMulFrame/Gray/ExpandDimsFrame/Gray/Mul/y*
T0*$
_output_shapes
:Ň 
p

Frame/GrayCastFrame/Gray/Mul*
Truncate( *$
_output_shapes
:Ň *

DstT0*

SrcT0
k
)Frame/crop_to_bounding_box/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Š
%Frame/crop_to_bounding_box/ExpandDims
ExpandDims
Frame/Gray)Frame/crop_to_bounding_box/ExpandDims/dim*

Tdim0*
T0*(
_output_shapes
:Ň 
Í
-Frame/crop_to_bounding_box/control_dependencyIdentity%Frame/crop_to_bounding_box/ExpandDims*
T0*8
_class.
,*loc:@Frame/crop_to_bounding_box/ExpandDims*(
_output_shapes
:Ň 
y
 Frame/crop_to_bounding_box/stackConst*
dtype0*
_output_shapes
:*%
valueB"    3           
{
"Frame/crop_to_bounding_box/stack_1Const*%
valueB"˙˙˙˙i       ˙˙˙˙*
dtype0*
_output_shapes
:
Ý
 Frame/crop_to_bounding_box/SliceSlice-Frame/crop_to_bounding_box/control_dependency Frame/crop_to_bounding_box/stack"Frame/crop_to_bounding_box/stack_1*
Index0*
T0*'
_output_shapes
:i 

"Frame/crop_to_bounding_box/SqueezeSqueeze Frame/crop_to_bounding_box/Slice*
T0*#
_output_shapes
:i *
squeeze_dims
 
Q
Frame/Divide/yConst*
dtype0*
_output_shapes
: *
value
B :˙

Frame/Divide/CastCast"Frame/crop_to_bounding_box/Squeeze*

SrcT0*
Truncate( *#
_output_shapes
:i *

DstT0
k
Frame/Divide/Cast_1CastFrame/Divide/y*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
m
Frame/DivideRealDivFrame/Divide/CastFrame/Divide/Cast_1*
T0*#
_output_shapes
:i 
]
Frame/Resize/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Frame/Resize/ExpandDims
ExpandDimsFrame/DivideFrame/Resize/ExpandDims/dim*'
_output_shapes
:i *

Tdim0*
T0
b
Frame/Resize/sizeConst*
valueB"T   T   *
dtype0*
_output_shapes
:
Ç
"Frame/Resize/ResizeNearestNeighborResizeNearestNeighborFrame/Resize/ExpandDimsFrame/Resize/size*
align_corners( *
half_pixel_centers( *
T0*&
_output_shapes
:TT

Frame/Resize/SqueezeSqueeze"Frame/Resize/ResizeNearestNeighbor*"
_output_shapes
:TT*
squeeze_dims
 *
T0

DQN/Inputs/InputsPlaceholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT*$
shape:˙˙˙˙˙˙˙˙˙TT
q
DQN/Inputs/Reshape/shapeConst*%
valueB"˙˙˙˙T   T      *
dtype0*
_output_shapes
:

DQN/Inputs/ReshapeReshapeDQN/Inputs/InputsDQN/Inputs/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT
n
DQN/Inputs/TDTargetPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
DQN/Inputs/ActionsPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
a
DQN/Inputs/ShapeShapeDQN/Inputs/Inputs*
T0*
out_type0*
_output_shapes
:
h
DQN/Inputs/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
j
 DQN/Inputs/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
j
 DQN/Inputs/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
°
DQN/Inputs/strided_sliceStridedSliceDQN/Inputs/ShapeDQN/Inputs/strided_slice/stack DQN/Inputs/strided_slice/stack_1 DQN/Inputs/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
ˇ
6DQN/Convolution_1/W/Initializer/truncated_normal/shapeConst*%
valueB"             *&
_class
loc:@DQN/Convolution_1/W*
dtype0*
_output_shapes
:
˘
5DQN/Convolution_1/W/Initializer/truncated_normal/meanConst*
valueB
 *    *&
_class
loc:@DQN/Convolution_1/W*
dtype0*
_output_shapes
: 
¤
7DQN/Convolution_1/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ĘÍ=*&
_class
loc:@DQN/Convolution_1/W

@DQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_1/W/Initializer/truncated_normal/shape*
T0*&
_class
loc:@DQN/Convolution_1/W*
seed2 *
dtype0*&
_output_shapes
: *

seed 

4DQN/Convolution_1/W/Initializer/truncated_normal/mulMul@DQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_1/W/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
ý
0DQN/Convolution_1/W/Initializer/truncated_normalAdd4DQN/Convolution_1/W/Initializer/truncated_normal/mul5DQN/Convolution_1/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
ż
DQN/Convolution_1/W
VariableV2*&
_class
loc:@DQN/Convolution_1/W*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
í
DQN/Convolution_1/W/AssignAssignDQN/Convolution_1/W0DQN/Convolution_1/W/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 

DQN/Convolution_1/W/readIdentityDQN/Convolution_1/W*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 

%DQN/Convolution_1/B/Initializer/ConstConst*
dtype0*
_output_shapes
: *
valueB *ÍĚĚ=*&
_class
loc:@DQN/Convolution_1/B
§
DQN/Convolution_1/B
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_1/B*
	container *
shape: *
dtype0*
_output_shapes
: 
Ö
DQN/Convolution_1/B/AssignAssignDQN/Convolution_1/B%DQN/Convolution_1/B/Initializer/Const*
T0*&
_class
loc:@DQN/Convolution_1/B*
validate_shape(*
_output_shapes
: *
use_locking(

DQN/Convolution_1/B/readIdentityDQN/Convolution_1/B*
T0*&
_class
loc:@DQN/Convolution_1/B*
_output_shapes
: 

DQN/Convolution_1/Conv2DConv2DDQN/Inputs/ReshapeDQN/Convolution_1/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

DQN/Convolution_1/addAddDQN/Convolution_1/Conv2DDQN/Convolution_1/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
o
DQN/Convolution_1/ReluReluDQN/Convolution_1/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
DQN/Convolution_1/Weights/tagConst**
value!B BDQN/Convolution_1/Weights*
dtype0*
_output_shapes
: 

DQN/Convolution_1/WeightsHistogramSummaryDQN/Convolution_1/Weights/tagDQN/Convolution_1/W/read*
T0*
_output_shapes
: 
u
DQN/Convolution_1/Biases/tagConst*)
value B BDQN/Convolution_1/Biases*
dtype0*
_output_shapes
: 

DQN/Convolution_1/BiasesHistogramSummaryDQN/Convolution_1/Biases/tagDQN/Convolution_1/B/read*
T0*
_output_shapes
: 

!DQN/Convolution_1/Activations/tagConst*
dtype0*
_output_shapes
: *.
value%B# BDQN/Convolution_1/Activations

DQN/Convolution_1/ActivationsHistogramSummary!DQN/Convolution_1/Activations/tagDQN/Convolution_1/Relu*
_output_shapes
: *
T0
ˇ
6DQN/Convolution_2/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"          @   *&
_class
loc:@DQN/Convolution_2/W
˘
5DQN/Convolution_2/W/Initializer/truncated_normal/meanConst*
valueB
 *    *&
_class
loc:@DQN/Convolution_2/W*
dtype0*
_output_shapes
: 
¤
7DQN/Convolution_2/W/Initializer/truncated_normal/stddevConst*
valueB
 *6=*&
_class
loc:@DQN/Convolution_2/W*
dtype0*
_output_shapes
: 

@DQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_2/W/Initializer/truncated_normal/shape*
T0*&
_class
loc:@DQN/Convolution_2/W*
seed2 *
dtype0*&
_output_shapes
: @*

seed 

4DQN/Convolution_2/W/Initializer/truncated_normal/mulMul@DQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_2/W/Initializer/truncated_normal/stddev*&
_output_shapes
: @*
T0*&
_class
loc:@DQN/Convolution_2/W
ý
0DQN/Convolution_2/W/Initializer/truncated_normalAdd4DQN/Convolution_2/W/Initializer/truncated_normal/mul5DQN/Convolution_2/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
ż
DQN/Convolution_2/W
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *&
_class
loc:@DQN/Convolution_2/W*
	container *
shape: @
í
DQN/Convolution_2/W/AssignAssignDQN/Convolution_2/W0DQN/Convolution_2/W/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_2/W*
validate_shape(*&
_output_shapes
: @

DQN/Convolution_2/W/readIdentityDQN/Convolution_2/W*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @

%DQN/Convolution_2/B/Initializer/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*ÍĚĚ=*&
_class
loc:@DQN/Convolution_2/B
§
DQN/Convolution_2/B
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *&
_class
loc:@DQN/Convolution_2/B*
	container *
shape:@
Ö
DQN/Convolution_2/B/AssignAssignDQN/Convolution_2/B%DQN/Convolution_2/B/Initializer/Const*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_2/B*
validate_shape(*
_output_shapes
:@

DQN/Convolution_2/B/readIdentityDQN/Convolution_2/B*
T0*&
_class
loc:@DQN/Convolution_2/B*
_output_shapes
:@

DQN/Convolution_2/Conv2DConv2DDQN/Convolution_1/Conv2DDQN/Convolution_2/W/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
	dilations
*
T0

DQN/Convolution_2/addAddDQN/Convolution_2/Conv2DDQN/Convolution_2/B/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
T0
o
DQN/Convolution_2/ReluReluDQN/Convolution_2/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@
w
DQN/Convolution_2/Weights/tagConst*
dtype0*
_output_shapes
: **
value!B BDQN/Convolution_2/Weights

DQN/Convolution_2/WeightsHistogramSummaryDQN/Convolution_2/Weights/tagDQN/Convolution_2/W/read*
T0*
_output_shapes
: 
u
DQN/Convolution_2/Biases/tagConst*
dtype0*
_output_shapes
: *)
value B BDQN/Convolution_2/Biases

DQN/Convolution_2/BiasesHistogramSummaryDQN/Convolution_2/Biases/tagDQN/Convolution_2/B/read*
_output_shapes
: *
T0

!DQN/Convolution_2/Activations/tagConst*
dtype0*
_output_shapes
: *.
value%B# BDQN/Convolution_2/Activations

DQN/Convolution_2/ActivationsHistogramSummary!DQN/Convolution_2/Activations/tagDQN/Convolution_2/Relu*
_output_shapes
: *
T0
ˇ
6DQN/Convolution_3/W/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *&
_class
loc:@DQN/Convolution_3/W*
dtype0*
_output_shapes
:
˘
5DQN/Convolution_3/W/Initializer/truncated_normal/meanConst*
valueB
 *    *&
_class
loc:@DQN/Convolution_3/W*
dtype0*
_output_shapes
: 
¤
7DQN/Convolution_3/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *¸1=*&
_class
loc:@DQN/Convolution_3/W

@DQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_3/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*&
_class
loc:@DQN/Convolution_3/W*
seed2 

4DQN/Convolution_3/W/Initializer/truncated_normal/mulMul@DQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_3/W/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
ý
0DQN/Convolution_3/W/Initializer/truncated_normalAdd4DQN/Convolution_3/W/Initializer/truncated_normal/mul5DQN/Convolution_3/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
ż
DQN/Convolution_3/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *&
_class
loc:@DQN/Convolution_3/W*
	container *
shape:@@
í
DQN/Convolution_3/W/AssignAssignDQN/Convolution_3/W0DQN/Convolution_3/W/Initializer/truncated_normal*
T0*&
_class
loc:@DQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(

DQN/Convolution_3/W/readIdentityDQN/Convolution_3/W*&
_output_shapes
:@@*
T0*&
_class
loc:@DQN/Convolution_3/W

%DQN/Convolution_3/B/Initializer/ConstConst*
valueB@*ÍĚĚ=*&
_class
loc:@DQN/Convolution_3/B*
dtype0*
_output_shapes
:@
§
DQN/Convolution_3/B
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *&
_class
loc:@DQN/Convolution_3/B
Ö
DQN/Convolution_3/B/AssignAssignDQN/Convolution_3/B%DQN/Convolution_3/B/Initializer/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_3/B

DQN/Convolution_3/B/readIdentityDQN/Convolution_3/B*
T0*&
_class
loc:@DQN/Convolution_3/B*
_output_shapes
:@

DQN/Convolution_3/Conv2DConv2DDQN/Convolution_2/Conv2DDQN/Convolution_3/W/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID

DQN/Convolution_3/addAddDQN/Convolution_3/Conv2DDQN/Convolution_3/B/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
o
DQN/Convolution_3/ReluReluDQN/Convolution_3/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
w
DQN/Convolution_3/Weights/tagConst**
value!B BDQN/Convolution_3/Weights*
dtype0*
_output_shapes
: 

DQN/Convolution_3/WeightsHistogramSummaryDQN/Convolution_3/Weights/tagDQN/Convolution_3/W/read*
T0*
_output_shapes
: 
u
DQN/Convolution_3/Biases/tagConst*)
value B BDQN/Convolution_3/Biases*
dtype0*
_output_shapes
: 

DQN/Convolution_3/BiasesHistogramSummaryDQN/Convolution_3/Biases/tagDQN/Convolution_3/B/read*
T0*
_output_shapes
: 

!DQN/Convolution_3/Activations/tagConst*.
value%B# BDQN/Convolution_3/Activations*
dtype0*
_output_shapes
: 

DQN/Convolution_3/ActivationsHistogramSummary!DQN/Convolution_3/Activations/tagDQN/Convolution_3/Relu*
T0*
_output_shapes
: 
ˇ
6DQN/Convolution_4/W/Initializer/truncated_normal/shapeConst*%
valueB"      @      *&
_class
loc:@DQN/Convolution_4/W*
dtype0*
_output_shapes
:
˘
5DQN/Convolution_4/W/Initializer/truncated_normal/meanConst*
valueB
 *    *&
_class
loc:@DQN/Convolution_4/W*
dtype0*
_output_shapes
: 
¤
7DQN/Convolution_4/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *Ş0ë<*&
_class
loc:@DQN/Convolution_4/W

@DQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_4/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*'
_output_shapes
:@*

seed *
T0*&
_class
loc:@DQN/Convolution_4/W

4DQN/Convolution_4/W/Initializer/truncated_normal/mulMul@DQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_4/W/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
ţ
0DQN/Convolution_4/W/Initializer/truncated_normalAdd4DQN/Convolution_4/W/Initializer/truncated_normal/mul5DQN/Convolution_4/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
Á
DQN/Convolution_4/W
VariableV2*
dtype0*'
_output_shapes
:@*
shared_name *&
_class
loc:@DQN/Convolution_4/W*
	container *
shape:@
î
DQN/Convolution_4/W/AssignAssignDQN/Convolution_4/W0DQN/Convolution_4/W/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@

DQN/Convolution_4/W/readIdentityDQN/Convolution_4/W*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@

%DQN/Convolution_4/B/Initializer/ConstConst*
dtype0*
_output_shapes	
:*
valueB*ÍĚĚ=*&
_class
loc:@DQN/Convolution_4/B
Š
DQN/Convolution_4/B
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@DQN/Convolution_4/B*
	container *
shape:
×
DQN/Convolution_4/B/AssignAssignDQN/Convolution_4/B%DQN/Convolution_4/B/Initializer/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_4/B

DQN/Convolution_4/B/readIdentityDQN/Convolution_4/B*
T0*&
_class
loc:@DQN/Convolution_4/B*
_output_shapes	
:

DQN/Convolution_4/Conv2DConv2DDQN/Convolution_3/Conv2DDQN/Convolution_4/W/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID

DQN/Convolution_4/addAddDQN/Convolution_4/Conv2DDQN/Convolution_4/B/read*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
DQN/Convolution_4/ReluReluDQN/Convolution_4/add*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
w
DQN/Convolution_4/Weights/tagConst**
value!B BDQN/Convolution_4/Weights*
dtype0*
_output_shapes
: 

DQN/Convolution_4/WeightsHistogramSummaryDQN/Convolution_4/Weights/tagDQN/Convolution_4/W/read*
_output_shapes
: *
T0
u
DQN/Convolution_4/Biases/tagConst*)
value B BDQN/Convolution_4/Biases*
dtype0*
_output_shapes
: 

DQN/Convolution_4/BiasesHistogramSummaryDQN/Convolution_4/Biases/tagDQN/Convolution_4/B/read*
T0*
_output_shapes
: 

!DQN/Convolution_4/Activations/tagConst*.
value%B# BDQN/Convolution_4/Activations*
dtype0*
_output_shapes
: 

DQN/Convolution_4/ActivationsHistogramSummary!DQN/Convolution_4/Activations/tagDQN/Convolution_4/Relu*
T0*
_output_shapes
: 
i
DQN/Flatten/ShapeShapeDQN/Convolution_4/Conv2D*
T0*
out_type0*
_output_shapes
:
i
DQN/Flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!DQN/Flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!DQN/Flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ľ
DQN/Flatten/strided_sliceStridedSliceDQN/Flatten/ShapeDQN/Flatten/strided_slice/stack!DQN/Flatten/strided_slice/stack_1!DQN/Flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
f
DQN/Flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

DQN/Flatten/Reshape/shapePackDQN/Flatten/strided_sliceDQN/Flatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 

DQN/Flatten/ReshapeReshapeDQN/Convolution_4/Conv2DDQN/Flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
9DQN/FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
valueB"      *)
_class
loc:@DQN/FullyConnected_1/W*
dtype0*
_output_shapes
:
¨
8DQN/FullyConnected_1/W/Initializer/truncated_normal/meanConst*
valueB
 *    *)
_class
loc:@DQN/FullyConnected_1/W*
dtype0*
_output_shapes
: 
Ş
:DQN/FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*)
_class
loc:@DQN/FullyConnected_1/W*
dtype0*
_output_shapes
: 

CDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9DQN/FullyConnected_1/W/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*)
_class
loc:@DQN/FullyConnected_1/W

7DQN/FullyConnected_1/W/Initializer/truncated_normal/mulMulCDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal:DQN/FullyConnected_1/W/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*)
_class
loc:@DQN/FullyConnected_1/W

3DQN/FullyConnected_1/W/Initializer/truncated_normalAdd7DQN/FullyConnected_1/W/Initializer/truncated_normal/mul8DQN/FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

š
DQN/FullyConnected_1/W
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@DQN/FullyConnected_1/W*
	container *
shape:

ó
DQN/FullyConnected_1/W/AssignAssignDQN/FullyConnected_1/W3DQN/FullyConnected_1/W/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/W

DQN/FullyConnected_1/W/readIdentityDQN/FullyConnected_1/W*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

˘
(DQN/FullyConnected_1/B/Initializer/ConstConst*
valueB*ÍĚĚ=*)
_class
loc:@DQN/FullyConnected_1/B*
dtype0*
_output_shapes	
:
Ż
DQN/FullyConnected_1/B
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *)
_class
loc:@DQN/FullyConnected_1/B*
	container *
shape:
ă
DQN/FullyConnected_1/B/AssignAssignDQN/FullyConnected_1/B(DQN/FullyConnected_1/B/Initializer/Const*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:

DQN/FullyConnected_1/B/readIdentityDQN/FullyConnected_1/B*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
_output_shapes	
:
°
DQN/FullyConnected_1/MatMulMatMulDQN/Flatten/ReshapeDQN/FullyConnected_1/W/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

DQN/FullyConnected_1/addAddDQN/FullyConnected_1/MatMulDQN/FullyConnected_1/B/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
DQN/FullyConnected_1/ReluReluDQN/FullyConnected_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
 DQN/FullyConnected_1/Weights/tagConst*
dtype0*
_output_shapes
: *-
value$B" BDQN/FullyConnected_1/Weights

DQN/FullyConnected_1/WeightsHistogramSummary DQN/FullyConnected_1/Weights/tagDQN/FullyConnected_1/W/read*
T0*
_output_shapes
: 
{
DQN/FullyConnected_1/Biases/tagConst*,
value#B! BDQN/FullyConnected_1/Biases*
dtype0*
_output_shapes
: 

DQN/FullyConnected_1/BiasesHistogramSummaryDQN/FullyConnected_1/Biases/tagDQN/FullyConnected_1/B/read*
_output_shapes
: *
T0

$DQN/FullyConnected_1/Activations/tagConst*1
value(B& B DQN/FullyConnected_1/Activations*
dtype0*
_output_shapes
: 

 DQN/FullyConnected_1/ActivationsHistogramSummary$DQN/FullyConnected_1/Activations/tagDQN/FullyConnected_1/Relu*
T0*
_output_shapes
: 
ľ
9DQN/FullyConnected_2/W/Initializer/truncated_normal/shapeConst*
valueB"   	   *)
_class
loc:@DQN/FullyConnected_2/W*
dtype0*
_output_shapes
:
¨
8DQN/FullyConnected_2/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *)
_class
loc:@DQN/FullyConnected_2/W
Ş
:DQN/FullyConnected_2/W/Initializer/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*)
_class
loc:@DQN/FullyConnected_2/W*
dtype0*
_output_shapes
: 

CDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9DQN/FullyConnected_2/W/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:		*

seed *
T0*)
_class
loc:@DQN/FullyConnected_2/W*
seed2 

7DQN/FullyConnected_2/W/Initializer/truncated_normal/mulMulCDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal:DQN/FullyConnected_2/W/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		

3DQN/FullyConnected_2/W/Initializer/truncated_normalAdd7DQN/FullyConnected_2/W/Initializer/truncated_normal/mul8DQN/FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		
ˇ
DQN/FullyConnected_2/W
VariableV2*
shape:		*
dtype0*
_output_shapes
:		*
shared_name *)
_class
loc:@DQN/FullyConnected_2/W*
	container 
ň
DQN/FullyConnected_2/W/AssignAssignDQN/FullyConnected_2/W3DQN/FullyConnected_2/W/Initializer/truncated_normal*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		

DQN/FullyConnected_2/W/readIdentityDQN/FullyConnected_2/W*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		
 
(DQN/FullyConnected_2/B/Initializer/ConstConst*
valueB	*ÍĚĚ=*)
_class
loc:@DQN/FullyConnected_2/B*
dtype0*
_output_shapes
:	
­
DQN/FullyConnected_2/B
VariableV2*
shared_name *)
_class
loc:@DQN/FullyConnected_2/B*
	container *
shape:	*
dtype0*
_output_shapes
:	
â
DQN/FullyConnected_2/B/AssignAssignDQN/FullyConnected_2/B(DQN/FullyConnected_2/B/Initializer/Const*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/B

DQN/FullyConnected_2/B/readIdentityDQN/FullyConnected_2/B*
T0*)
_class
loc:@DQN/FullyConnected_2/B*
_output_shapes
:	
ľ
DQN/FullyConnected_2/MatMulMatMulDQN/FullyConnected_1/ReluDQN/FullyConnected_2/W/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
transpose_a( 

DQN/FullyConnected_2/addAddDQN/FullyConnected_2/MatMulDQN/FullyConnected_2/B/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
}
 DQN/FullyConnected_2/Weights/tagConst*-
value$B" BDQN/FullyConnected_2/Weights*
dtype0*
_output_shapes
: 

DQN/FullyConnected_2/WeightsHistogramSummary DQN/FullyConnected_2/Weights/tagDQN/FullyConnected_2/W/read*
_output_shapes
: *
T0
{
DQN/FullyConnected_2/Biases/tagConst*
dtype0*
_output_shapes
: *,
value#B! BDQN/FullyConnected_2/Biases

DQN/FullyConnected_2/BiasesHistogramSummaryDQN/FullyConnected_2/Biases/tagDQN/FullyConnected_2/B/read*
T0*
_output_shapes
: 

$DQN/FullyConnected_2/Activations/tagConst*1
value(B& B DQN/FullyConnected_2/Activations*
dtype0*
_output_shapes
: 

 DQN/FullyConnected_2/ActivationsHistogramSummary$DQN/FullyConnected_2/Activations/tagDQN/FullyConnected_2/add*
_output_shapes
: *
T0
V
DQN/Loss/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
V
DQN/Loss/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

DQN/Loss/rangeRangeDQN/Loss/range/startDQN/Inputs/strided_sliceDQN/Loss/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
f
DQN/Loss/ShapeShapeDQN/FullyConnected_2/add*
T0*
out_type0*
_output_shapes
:
f
DQN/Loss/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
h
DQN/Loss/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
h
DQN/Loss/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ś
DQN/Loss/strided_sliceStridedSliceDQN/Loss/ShapeDQN/Loss/strided_slice/stackDQN/Loss/strided_slice/stack_1DQN/Loss/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
i
DQN/Loss/mulMulDQN/Loss/rangeDQN/Loss/strided_slice*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
DQN/Loss/addAddDQN/Loss/mulDQN/Inputs/Actions*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
DQN/Loss/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

DQN/Loss/ReshapeReshapeDQN/FullyConnected_2/addDQN/Loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
DQN/Loss/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¸
DQN/Loss/GatherV2GatherV2DQN/Loss/ReshapeDQN/Loss/addDQN/Loss/GatherV2/axis*
Tparams0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*

batch_dims *
Tindices0
t
DQN/Loss/huber_loss/SubSubDQN/Loss/GatherV2DQN/Inputs/TDTarget*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
DQN/Loss/huber_loss/AbsAbsDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
DQN/Loss/huber_loss/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

DQN/Loss/huber_loss/MinimumMinimumDQN/Loss/huber_loss/AbsDQN/Loss/huber_loss/Minimum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

DQN/Loss/huber_loss/Sub_1SubDQN/Loss/huber_loss/AbsDQN/Loss/huber_loss/Minimum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
^
DQN/Loss/huber_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *   ?

DQN/Loss/huber_loss/MulMulDQN/Loss/huber_loss/MinimumDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

DQN/Loss/huber_loss/Mul_1MulDQN/Loss/huber_loss/ConstDQN/Loss/huber_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
`
DQN/Loss/huber_loss/Mul_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

DQN/Loss/huber_loss/Mul_2MulDQN/Loss/huber_loss/Mul_2/xDQN/Loss/huber_loss/Sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

DQN/Loss/huber_loss/AddAddDQN/Loss/huber_loss/Mul_1DQN/Loss/huber_loss/Mul_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
0DQN/Loss/huber_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
6DQN/Loss/huber_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5DQN/Loss/huber_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

5DQN/Loss/huber_loss/assert_broadcastable/values/shapeShapeDQN/Loss/huber_loss/Add*
T0*
out_type0*
_output_shapes
:
v
4DQN/Loss/huber_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
DDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successNoOp
Ś
DQN/Loss/huber_loss/Cast/xConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

DQN/Loss/huber_loss/Mul_3MulDQN/Loss/huber_loss/AddDQN/Loss/huber_loss/Cast/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
DQN/Loss/huber_loss/Const_1ConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:

DQN/Loss/huber_loss/SumSumDQN/Loss/huber_loss/Mul_3DQN/Loss/huber_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ł
'DQN/Loss/huber_loss/num_present/Equal/yConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

%DQN/Loss/huber_loss/num_present/EqualEqualDQN/Loss/huber_loss/Cast/x'DQN/Loss/huber_loss/num_present/Equal/y*
_output_shapes
: *
T0
ś
*DQN/Loss/huber_loss/num_present/zeros_likeConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
š
/DQN/Loss/huber_loss/num_present/ones_like/ShapeConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ť
/DQN/Loss/huber_loss/num_present/ones_like/ConstConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ć
)DQN/Loss/huber_loss/num_present/ones_likeFill/DQN/Loss/huber_loss/num_present/ones_like/Shape/DQN/Loss/huber_loss/num_present/ones_like/Const*
_output_shapes
: *
T0*

index_type0
Ď
&DQN/Loss/huber_loss/num_present/SelectSelect%DQN/Loss/huber_loss/num_present/Equal*DQN/Loss/huber_loss/num_present/zeros_like)DQN/Loss/huber_loss/num_present/ones_like*
_output_shapes
: *
T0
Ţ
TDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
Ü
SDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ń
SDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeDQN/Loss/huber_loss/AddE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
Ű
RDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
ą
bDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success
Ä
ADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeShapeDQN/Loss/huber_loss/AddE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successc^DQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
˛
ADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ConstConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successc^DQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

;DQN/Loss/huber_loss/num_present/broadcast_weights/ones_likeFillADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
1DQN/Loss/huber_loss/num_present/broadcast_weightsMul&DQN/Loss/huber_loss/num_present/Select;DQN/Loss/huber_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
%DQN/Loss/huber_loss/num_present/ConstConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ž
DQN/Loss/huber_loss/num_presentSum1DQN/Loss/huber_loss/num_present/broadcast_weights%DQN/Loss/huber_loss/num_present/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Ľ
DQN/Loss/huber_loss/Const_2ConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

DQN/Loss/huber_loss/Sum_1SumDQN/Loss/huber_loss/SumDQN/Loss/huber_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

DQN/Loss/huber_loss/valueDivNoNanDQN/Loss/huber_loss/Sum_1DQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
Q
DQN/Loss/ConstConst*
valueB *
dtype0*
_output_shapes
: 
~
DQN/Loss/MeanMeanDQN/Loss/huber_loss/valueDQN/Loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
`
DQN/Loss/Loss/tagsConst*
valueB BDQN/Loss/Loss*
dtype0*
_output_shapes
: 
b
DQN/Loss/LossScalarSummaryDQN/Loss/Loss/tagsDQN/Loss/Mean*
_output_shapes
: *
T0
`
DQN/Optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
f
!DQN/Optimizer/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?

DQN/Optimizer/gradients/FillFillDQN/Optimizer/gradients/Shape!DQN/Optimizer/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
{
8DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
Ä
2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/ReshapeReshapeDQN/Optimizer/gradients/Fill8DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0
s
0DQN/Optimizer/gradients/DQN/Loss/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Đ
/DQN/Optimizer/gradients/DQN/Loss/Mean_grad/TileTile2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Reshape0DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
w
2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/truedivRealDiv/DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Tile2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Const_1*
T0*
_output_shapes
: 

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ă
ADQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nanDivNoNan2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/truedivDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/SumSumADQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nanLDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ň
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
}
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/NegNegDQN/Loss/huber_loss/Sum_1*
T0*
_output_shapes
: 
Í
CDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_1DivNoNan:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/NegDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
Ö
CDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_2DivNoNanCDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_1DQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
Ű
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/mulMul2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/truedivCDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Sum_1Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/mulNDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
ř
@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1
Ů
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape*
_output_shapes
: 
ß
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/group_deps*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1*
_output_shapes
: 

DDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/ReshapeReshapeODQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/control_dependencyDDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 
ô
;DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/TileTile>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 

BDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ű
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/ReshapeReshape;DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/TileBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/ShapeShapeDQN/Loss/huber_loss/Mul_3*
T0*
out_type0*
_output_shapes
:
ű
9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/TileTile<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ShapeShapeDQN/Loss/huber_loss/Add*
T0*
out_type0*
_output_shapes
:

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ć
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/MulMul9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/TileDQN/Loss/huber_loss/Cast/x*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/SumSum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/MulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Mul_1MulDQN/Loss/huber_loss/Add9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Sum_1Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Mul_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ř
@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1
ć
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/ShapeShapeDQN/Loss/huber_loss/Mul_1*
_output_shapes
:*
T0*
out_type0

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape_1ShapeDQN/Loss/huber_loss/Mul_2*
_output_shapes
:*
T0*
out_type0

JDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/BroadcastGradientArgsBroadcastGradientArgs:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/SumSumODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyJDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ů
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/ReshapeReshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Sum_1SumODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Sum_1<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
EDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/group_depsNoOp=^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1
Ţ
MDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependencyIdentity<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/ReshapeF^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/group_deps*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1Identity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1F^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape_1ShapeDQN/Loss/huber_loss/Mul*
T0*
out_type0*
_output_shapes
:
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
×
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/MulMulMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependencyDQN/Loss/huber_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/SumSum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/MulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ň
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ű
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Mul_1MulDQN/Loss/huber_loss/ConstMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Sum_1Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Mul_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1
Ů
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape*
_output_shapes
: 
ě
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape_1ShapeDQN/Loss/huber_loss/Sub_1*
T0*
out_type0*
_output_shapes
:
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ű
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/MulMulODQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1DQN/Loss/huber_loss/Sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/SumSum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/MulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ň
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Mul_1MulDQN/Loss/huber_loss/Mul_2/xODQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Sum_1Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Mul_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1
Ů
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape
ě
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/ShapeShapeDQN/Loss/huber_loss/Minimum*
_output_shapes
:*
T0*
out_type0

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape_1ShapeDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:

JDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ý
8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/MulMulQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1DQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/SumSum8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/MulJDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ů
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/ReshapeReshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Mul_1MulDQN/Loss/huber_loss/MinimumQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Sum_1Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Mul_1LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Sum_1<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
EDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/group_depsNoOp=^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1
Ţ
MDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependencyIdentity<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/ReshapeF^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape
ä
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1Identity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1F^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ShapeShapeDQN/Loss/huber_loss/Abs*
T0*
out_type0*
_output_shapes
:

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape_1ShapeDQN/Loss/huber_loss/Minimum*
_output_shapes
:*
T0*
out_type0
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˘
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/SumSumQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Sum_1SumQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
˘
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/NegNeg<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Sum_1*
T0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Neg>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1
ć
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1

DQN/Optimizer/gradients/AddNAddNMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependencyODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ShapeShapeDQN/Loss/huber_loss/Abs*
T0*
out_type0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_2ShapeDQN/Optimizer/gradients/AddN*
T0*
out_type0*
_output_shapes
:

DDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zerosFill@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_2DDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zeros/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
BDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/LessEqual	LessEqualDQN/Loss/huber_loss/AbsDQN/Loss/huber_loss/Minimum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

?DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/SelectSelectBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/LessEqualDQN/Optimizer/gradients/AddN>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zeros*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/SumSum?DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/SelectNDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ReshapeReshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Sum>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

ADQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Select_1SelectBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/LessEqual>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zerosDQN/Optimizer/gradients/AddN*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Sum_1SumADQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Select_1PDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ţ
BDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1Reshape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Sum_1@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ů
IDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/group_depsNoOpA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ReshapeC^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1
î
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/control_dependencyIdentity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ReshapeJ^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
SDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency_1IdentityBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1J^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*U
_classK
IGloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1*
_output_shapes
: 
Ô
DQN/Optimizer/gradients/AddN_1AddNODQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependencyQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/SignSignDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/mulMulDQN/Optimizer/gradients/AddN_19DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/Sign*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/ShapeShapeDQN/Loss/GatherV2*
T0*
out_type0*
_output_shapes
:

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape_1ShapeDQN/Inputs/TDTarget*
T0*
out_type0*
_output_shapes
:

JDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/SumSum8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/mulJDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ů
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/ReshapeReshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Sum_1Sum8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/mulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/NegNeg:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Sum_1*
T0*
_output_shapes
:
ý
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1Reshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Neg<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
EDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/group_depsNoOp=^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1
Ţ
MDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/control_dependencyIdentity<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/ReshapeF^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/group_deps*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/control_dependency_1Identity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1F^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
4DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ShapeShapeDQN/Loss/Reshape*
T0*
out_type0	*#
_class
loc:@DQN/Loss/Reshape*
_output_shapes
:
Ú
3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/CastCast4DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Shape*

SrcT0	*#
_class
loc:@DQN/Loss/Reshape*
Truncate( *
_output_shapes
:*

DstT0
z
3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/SizeSizeDQN/Loss/add*
_output_shapes
: *
T0*
out_type0

=DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
ě
9DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims
ExpandDims3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Size=DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:

BDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

DDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

DDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ĺ
<DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_sliceStridedSlice3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/CastBDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stackDDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_1DDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0
|
:DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
°
5DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concatConcatV29DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims<DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice:DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

6DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ReshapeReshapeMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/control_dependency5DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concat*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
8DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Reshape_1ReshapeDQN/Loss/add9DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

3DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ShapeShapeDQN/FullyConnected_2/add*
T0*
out_type0*
_output_shapes
:

IDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
˙
CDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_sliceStridedSlice3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/CastIDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stackKDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1KDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ű
<DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/tensorUnsortedSegmentSum6DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Reshape8DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Reshape_1CDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
5DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ReshapeReshape<DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/tensor3DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	

;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/ShapeShapeDQN/FullyConnected_2/MatMul*
T0*
out_type0*
_output_shapes
:

=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape_1Const*
valueB:	*
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

9DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/SumSum5DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ReshapeKDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/ReshapeReshape9DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Sum;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	

;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Sum_1Sum5DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ReshapeMDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ů
?DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1Reshape;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Sum_1=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	
Đ
FDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/group_depsNoOp>^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape@^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1
ć
NDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependencyIdentity=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/ReshapeG^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*P
_classF
DBloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
ß
PDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependency_1Identity?DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1G^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1*
_output_shapes
:	

?DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMulMatMulNDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependencyDQN/FullyConnected_2/W/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0

ADQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1MatMulDQN/FullyConnected_1/ReluNDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependency*
_output_shapes
:		*
transpose_a(*
transpose_b( *
T0
×
IDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/group_depsNoOp@^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMulB^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1
ń
QDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyIdentity?DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMulJ^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
SDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1IdentityADQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1J^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes
:		
ě
?DQN/Optimizer/gradients/DQN/FullyConnected_1/Relu_grad/ReluGradReluGradQDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyDQN/FullyConnected_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/ShapeShapeDQN/FullyConnected_1/MatMul*
T0*
out_type0*
_output_shapes
:

=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

9DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/SumSum?DQN/Optimizer/gradients/DQN/FullyConnected_1/Relu_grad/ReluGradKDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/ReshapeReshape9DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Sum;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Sum_1Sum?DQN/Optimizer/gradients/DQN/FullyConnected_1/Relu_grad/ReluGradMDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ú
?DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1Reshape;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Sum_1=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
Đ
FDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/group_depsNoOp>^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape@^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1
ç
NDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependencyIdentity=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/ReshapeG^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*P
_classF
DBloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape
ŕ
PDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependency_1Identity?DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1G^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/group_deps*
_output_shapes	
:*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1

?DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMulMatMulNDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependencyDQN/FullyConnected_1/W/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0

ADQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1MatMulDQN/Flatten/ReshapeNDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_a(*
transpose_b( *
T0
×
IDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/group_depsNoOp@^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMulB^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1
ń
QDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependencyIdentity?DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMulJ^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
SDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1IdentityADQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1J^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1* 
_output_shapes
:


6DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/ShapeShapeDQN/Convolution_4/Conv2D*
T0*
out_type0*
_output_shapes
:

8DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/ReshapeReshapeQDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependency6DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/Shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ž
<DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/ShapeNShapeNDQN/Convolution_3/Conv2DDQN/Convolution_4/W/read*
T0*
out_type0*
N* 
_output_shapes
::
´
IDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/ShapeNDQN/Convolution_4/W/read8DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID
°
JDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Convolution_3/Conv2D>DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/ShapeN:18DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/Reshape*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
ç
FDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/group_deps*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

PDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/group_deps*
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@
ž
<DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/ShapeNShapeNDQN/Convolution_2/Conv2DDQN/Convolution_3/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
IDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/ShapeNDQN/Convolution_3/W/readNDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
Ĺ
JDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Convolution_2/Conv2D>DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/ShapeN:1NDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:@@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
ç
FDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/group_deps*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@

PDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/group_deps*
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@@
ž
<DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/ShapeNShapeNDQN/Convolution_1/Conv2DDQN/Convolution_2/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
IDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/ShapeNDQN/Convolution_2/W/readNDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ĺ
JDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Convolution_1/Conv2D>DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/ShapeN:1NDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID
ç
FDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/group_deps*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

PDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/group_deps*
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
¸
<DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/ShapeNShapeNDQN/Inputs/ReshapeDQN/Convolution_1/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
IDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/ShapeNDQN/Convolution_1/W/readNDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT*
	dilations

ż
JDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Inputs/Reshape>DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/ShapeN:1NDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*&
_output_shapes
: 
ç
FDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/group_deps*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT

PDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilter
Á
@DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*&
_class
loc:@DQN/Convolution_1/W*%
valueB"             *
dtype0*
_output_shapes
:
Ł
6DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *&
_class
loc:@DQN/Convolution_1/W*
valueB
 *  ?

0DQN/DQN/Convolution_1/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/Const*
T0*&
_class
loc:@DQN/Convolution_1/W*

index_type0*&
_output_shapes
: 
Ë
DQN/DQN/Convolution_1/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *&
_class
loc:@DQN/Convolution_1/W*
	container *
shape: 

&DQN/DQN/Convolution_1/W/RMSProp/AssignAssignDQN/DQN/Convolution_1/W/RMSProp0DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*&
_class
loc:@DQN/Convolution_1/W
Ş
$DQN/DQN/Convolution_1/W/RMSProp/readIdentityDQN/DQN/Convolution_1/W/RMSProp*&
_output_shapes
: *
T0*&
_class
loc:@DQN/Convolution_1/W
Ä
CDQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@DQN/Convolution_1/W*%
valueB"             *
dtype0*
_output_shapes
:
Ś
9DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *&
_class
loc:@DQN/Convolution_1/W*
valueB
 *    
Ś
3DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/Const*&
_output_shapes
: *
T0*&
_class
loc:@DQN/Convolution_1/W*

index_type0
Í
!DQN/DQN/Convolution_1/W/RMSProp_1
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_1/W*
	container *
shape: *
dtype0*&
_output_shapes
: 

(DQN/DQN/Convolution_1/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_1/W/RMSProp_13DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 
Ž
&DQN/DQN/Convolution_1/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_1/W/RMSProp_1*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
Á
@DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*&
_class
loc:@DQN/Convolution_2/W*%
valueB"          @   *
dtype0*
_output_shapes
:
Ł
6DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/ConstConst*&
_class
loc:@DQN/Convolution_2/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 

0DQN/DQN/Convolution_2/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/Const*
T0*&
_class
loc:@DQN/Convolution_2/W*

index_type0*&
_output_shapes
: @
Ë
DQN/DQN/Convolution_2/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *&
_class
loc:@DQN/Convolution_2/W*
	container *
shape: @

&DQN/DQN/Convolution_2/W/RMSProp/AssignAssignDQN/DQN/Convolution_2/W/RMSProp0DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_2/W
Ş
$DQN/DQN/Convolution_2/W/RMSProp/readIdentityDQN/DQN/Convolution_2/W/RMSProp*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
Ä
CDQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@DQN/Convolution_2/W*%
valueB"          @   *
dtype0*
_output_shapes
:
Ś
9DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *&
_class
loc:@DQN/Convolution_2/W*
valueB
 *    
Ś
3DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/Const*
T0*&
_class
loc:@DQN/Convolution_2/W*

index_type0*&
_output_shapes
: @
Í
!DQN/DQN/Convolution_2/W/RMSProp_1
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_2/W*
	container *
shape: @*
dtype0*&
_output_shapes
: @

(DQN/DQN/Convolution_2/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_2/W/RMSProp_13DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_2/W*
validate_shape(*&
_output_shapes
: @
Ž
&DQN/DQN/Convolution_2/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_2/W/RMSProp_1*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
Á
@DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*&
_class
loc:@DQN/Convolution_3/W*%
valueB"      @   @   
Ł
6DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/ConstConst*&
_class
loc:@DQN/Convolution_3/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 

0DQN/DQN/Convolution_3/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/Const*
T0*&
_class
loc:@DQN/Convolution_3/W*

index_type0*&
_output_shapes
:@@
Ë
DQN/DQN/Convolution_3/W/RMSProp
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *&
_class
loc:@DQN/Convolution_3/W

&DQN/DQN/Convolution_3/W/RMSProp/AssignAssignDQN/DQN/Convolution_3/W/RMSProp0DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@
Ş
$DQN/DQN/Convolution_3/W/RMSProp/readIdentityDQN/DQN/Convolution_3/W/RMSProp*
T0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
Ä
CDQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@DQN/Convolution_3/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
Ś
9DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/ConstConst*&
_class
loc:@DQN/Convolution_3/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
3DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/Const*
T0*&
_class
loc:@DQN/Convolution_3/W*

index_type0*&
_output_shapes
:@@
Í
!DQN/DQN/Convolution_3/W/RMSProp_1
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_3/W*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@

(DQN/DQN/Convolution_3/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_3/W/RMSProp_13DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros*
T0*&
_class
loc:@DQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Ž
&DQN/DQN/Convolution_3/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_3/W/RMSProp_1*&
_output_shapes
:@@*
T0*&
_class
loc:@DQN/Convolution_3/W
Á
@DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*&
_class
loc:@DQN/Convolution_4/W*%
valueB"      @      
Ł
6DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *&
_class
loc:@DQN/Convolution_4/W*
valueB
 *  ?

0DQN/DQN/Convolution_4/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/Const*
T0*&
_class
loc:@DQN/Convolution_4/W*

index_type0*'
_output_shapes
:@
Í
DQN/DQN/Convolution_4/W/RMSProp
VariableV2*&
_class
loc:@DQN/Convolution_4/W*
	container *
shape:@*
dtype0*'
_output_shapes
:@*
shared_name 

&DQN/DQN/Convolution_4/W/RMSProp/AssignAssignDQN/DQN/Convolution_4/W/RMSProp0DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_4/W
Ť
$DQN/DQN/Convolution_4/W/RMSProp/readIdentityDQN/DQN/Convolution_4/W/RMSProp*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
Ä
CDQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@DQN/Convolution_4/W*%
valueB"      @      *
dtype0*
_output_shapes
:
Ś
9DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/ConstConst*&
_class
loc:@DQN/Convolution_4/W*
valueB
 *    *
dtype0*
_output_shapes
: 
§
3DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/Const*
T0*&
_class
loc:@DQN/Convolution_4/W*

index_type0*'
_output_shapes
:@
Ď
!DQN/DQN/Convolution_4/W/RMSProp_1
VariableV2*&
_class
loc:@DQN/Convolution_4/W*
	container *
shape:@*
dtype0*'
_output_shapes
:@*
shared_name 

(DQN/DQN/Convolution_4/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_4/W/RMSProp_13DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_4/W
Ż
&DQN/DQN/Convolution_4/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_4/W/RMSProp_1*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
ż
CDQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*)
_class
loc:@DQN/FullyConnected_1/W*
valueB"      *
dtype0*
_output_shapes
:
Š
9DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/ConstConst*)
_class
loc:@DQN/FullyConnected_1/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ł
3DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/onesFillCDQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensor9DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/Const*
T0*)
_class
loc:@DQN/FullyConnected_1/W*

index_type0* 
_output_shapes
:

Ĺ
"DQN/DQN/FullyConnected_1/W/RMSProp
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@DQN/FullyConnected_1/W*
	container 

)DQN/DQN/FullyConnected_1/W/RMSProp/AssignAssign"DQN/DQN/FullyConnected_1/W/RMSProp3DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/W*
validate_shape(* 
_output_shapes
:

­
'DQN/DQN/FullyConnected_1/W/RMSProp/readIdentity"DQN/DQN/FullyConnected_1/W/RMSProp*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

Â
FDQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*)
_class
loc:@DQN/FullyConnected_1/W*
valueB"      
Ź
<DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *)
_class
loc:@DQN/FullyConnected_1/W*
valueB
 *    
Ź
6DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zerosFillFDQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensor<DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/Const*
T0*)
_class
loc:@DQN/FullyConnected_1/W*

index_type0* 
_output_shapes
:

Ç
$DQN/DQN/FullyConnected_1/W/RMSProp_1
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@DQN/FullyConnected_1/W*
	container 

+DQN/DQN/FullyConnected_1/W/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_1/W/RMSProp_16DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/W
ą
)DQN/DQN/FullyConnected_1/W/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_1/W/RMSProp_1*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

š
CDQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*)
_class
loc:@DQN/FullyConnected_1/B*
valueB:
Š
9DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *)
_class
loc:@DQN/FullyConnected_1/B*
valueB
 *  ?

3DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/onesFillCDQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensor9DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/Const*
T0*)
_class
loc:@DQN/FullyConnected_1/B*

index_type0*
_output_shapes	
:
ť
"DQN/DQN/FullyConnected_1/B/RMSProp
VariableV2*
shared_name *)
_class
loc:@DQN/FullyConnected_1/B*
	container *
shape:*
dtype0*
_output_shapes	
:

)DQN/DQN/FullyConnected_1/B/RMSProp/AssignAssign"DQN/DQN/FullyConnected_1/B/RMSProp3DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:
¨
'DQN/DQN/FullyConnected_1/B/RMSProp/readIdentity"DQN/DQN/FullyConnected_1/B/RMSProp*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
_output_shapes	
:
ź
FDQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@DQN/FullyConnected_1/B*
valueB:*
dtype0*
_output_shapes
:
Ź
<DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/ConstConst*)
_class
loc:@DQN/FullyConnected_1/B*
valueB
 *    *
dtype0*
_output_shapes
: 
§
6DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zerosFillFDQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensor<DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/Const*
_output_shapes	
:*
T0*)
_class
loc:@DQN/FullyConnected_1/B*

index_type0
˝
$DQN/DQN/FullyConnected_1/B/RMSProp_1
VariableV2*
shared_name *)
_class
loc:@DQN/FullyConnected_1/B*
	container *
shape:*
dtype0*
_output_shapes	
:

+DQN/DQN/FullyConnected_1/B/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_1/B/RMSProp_16DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:
Ź
)DQN/DQN/FullyConnected_1/B/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_1/B/RMSProp_1*
_output_shapes	
:*
T0*)
_class
loc:@DQN/FullyConnected_1/B
ż
CDQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*)
_class
loc:@DQN/FullyConnected_2/W*
valueB"   	   
Š
9DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *)
_class
loc:@DQN/FullyConnected_2/W*
valueB
 *  ?
˘
3DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/onesFillCDQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensor9DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/Const*
T0*)
_class
loc:@DQN/FullyConnected_2/W*

index_type0*
_output_shapes
:		
Ă
"DQN/DQN/FullyConnected_2/W/RMSProp
VariableV2*
dtype0*
_output_shapes
:		*
shared_name *)
_class
loc:@DQN/FullyConnected_2/W*
	container *
shape:		

)DQN/DQN/FullyConnected_2/W/RMSProp/AssignAssign"DQN/DQN/FullyConnected_2/W/RMSProp3DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones*
validate_shape(*
_output_shapes
:		*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/W
Ź
'DQN/DQN/FullyConnected_2/W/RMSProp/readIdentity"DQN/DQN/FullyConnected_2/W/RMSProp*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		
Â
FDQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@DQN/FullyConnected_2/W*
valueB"   	   *
dtype0*
_output_shapes
:
Ź
<DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/ConstConst*)
_class
loc:@DQN/FullyConnected_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ť
6DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zerosFillFDQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensor<DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/Const*
T0*)
_class
loc:@DQN/FullyConnected_2/W*

index_type0*
_output_shapes
:		
Ĺ
$DQN/DQN/FullyConnected_2/W/RMSProp_1
VariableV2*
	container *
shape:		*
dtype0*
_output_shapes
:		*
shared_name *)
_class
loc:@DQN/FullyConnected_2/W

+DQN/DQN/FullyConnected_2/W/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_2/W/RMSProp_16DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		
°
)DQN/DQN/FullyConnected_2/W/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_2/W/RMSProp_1*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		
Ť
3DQN/DQN/FullyConnected_2/B/RMSProp/Initializer/onesConst*)
_class
loc:@DQN/FullyConnected_2/B*
valueB	*  ?*
dtype0*
_output_shapes
:	
š
"DQN/DQN/FullyConnected_2/B/RMSProp
VariableV2*
shared_name *)
_class
loc:@DQN/FullyConnected_2/B*
	container *
shape:	*
dtype0*
_output_shapes
:	

)DQN/DQN/FullyConnected_2/B/RMSProp/AssignAssign"DQN/DQN/FullyConnected_2/B/RMSProp3DQN/DQN/FullyConnected_2/B/RMSProp/Initializer/ones*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	
§
'DQN/DQN/FullyConnected_2/B/RMSProp/readIdentity"DQN/DQN/FullyConnected_2/B/RMSProp*
_output_shapes
:	*
T0*)
_class
loc:@DQN/FullyConnected_2/B
Ž
6DQN/DQN/FullyConnected_2/B/RMSProp_1/Initializer/zerosConst*)
_class
loc:@DQN/FullyConnected_2/B*
valueB	*    *
dtype0*
_output_shapes
:	
ť
$DQN/DQN/FullyConnected_2/B/RMSProp_1
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *)
_class
loc:@DQN/FullyConnected_2/B*
	container *
shape:	

+DQN/DQN/FullyConnected_2/B/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_2/B/RMSProp_16DQN/DQN/FullyConnected_2/B/RMSProp_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	
Ť
)DQN/DQN/FullyConnected_2/B/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_2/B/RMSProp_1*
T0*)
_class
loc:@DQN/FullyConnected_2/B*
_output_shapes
:	
h
#DQN/Optimizer/RMSProp/learning_rateConst*
valueB
 *o9*
dtype0*
_output_shapes
: 
`
DQN/Optimizer/RMSProp/decayConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
c
DQN/Optimizer/RMSProp/momentumConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
DQN/Optimizer/RMSProp/epsilonConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
ĺ
=DQN/Optimizer/RMSProp/update_DQN/Convolution_1/W/ApplyRMSPropApplyRMSPropDQN/Convolution_1/WDQN/DQN/Convolution_1/W/RMSProp!DQN/DQN/Convolution_1/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
ĺ
=DQN/Optimizer/RMSProp/update_DQN/Convolution_2/W/ApplyRMSPropApplyRMSPropDQN/Convolution_2/WDQN/DQN/Convolution_2/W/RMSProp!DQN/DQN/Convolution_2/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
ĺ
=DQN/Optimizer/RMSProp/update_DQN/Convolution_3/W/ApplyRMSPropApplyRMSPropDQN/Convolution_3/WDQN/DQN/Convolution_3/W/RMSProp!DQN/DQN/Convolution_3/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
ć
=DQN/Optimizer/RMSProp/update_DQN/Convolution_4/W/ApplyRMSPropApplyRMSPropDQN/Convolution_4/WDQN/DQN/Convolution_4/W/RMSProp!DQN/DQN/Convolution_4/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
ń
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/W/ApplyRMSPropApplyRMSPropDQN/FullyConnected_1/W"DQN/DQN/FullyConnected_1/W/RMSProp$DQN/DQN/FullyConnected_1/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonSDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

é
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/B/ApplyRMSPropApplyRMSPropDQN/FullyConnected_1/B"DQN/DQN/FullyConnected_1/B/RMSProp$DQN/DQN/FullyConnected_1/B/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependency_1*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
_output_shapes	
:*
use_locking( 
đ
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/W/ApplyRMSPropApplyRMSPropDQN/FullyConnected_2/W"DQN/DQN/FullyConnected_2/W/RMSProp$DQN/DQN/FullyConnected_2/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonSDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:		*
use_locking( *
T0*)
_class
loc:@DQN/FullyConnected_2/W
č
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/B/ApplyRMSPropApplyRMSPropDQN/FullyConnected_2/B"DQN/DQN/FullyConnected_2/B/RMSProp$DQN/DQN/FullyConnected_2/B/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@DQN/FullyConnected_2/B*
_output_shapes
:	
Š
DQN/Optimizer/RMSPropNoOp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_1/W/ApplyRMSProp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_2/W/ApplyRMSProp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_3/W/ApplyRMSProp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_4/W/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/B/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/W/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/B/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/W/ApplyRMSProp

TargetDQN/Inputs/InputsPlaceholder*$
shape:˙˙˙˙˙˙˙˙˙TT*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT
w
TargetDQN/Inputs/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙T   T      
¤
TargetDQN/Inputs/ReshapeReshapeTargetDQN/Inputs/InputsTargetDQN/Inputs/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT
t
TargetDQN/Inputs/TDTargetPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
s
TargetDQN/Inputs/ActionsPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
m
TargetDQN/Inputs/ShapeShapeTargetDQN/Inputs/Inputs*
_output_shapes
:*
T0*
out_type0
n
$TargetDQN/Inputs/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
p
&TargetDQN/Inputs/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
p
&TargetDQN/Inputs/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Î
TargetDQN/Inputs/strided_sliceStridedSliceTargetDQN/Inputs/Shape$TargetDQN/Inputs/strided_slice/stack&TargetDQN/Inputs/strided_slice/stack_1&TargetDQN/Inputs/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ă
<TargetDQN/Convolution_1/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"             *,
_class"
 loc:@TargetDQN/Convolution_1/W
Ž
;TargetDQN/Convolution_1/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_1/W
°
=TargetDQN/Convolution_1/W/Initializer/truncated_normal/stddevConst*
valueB
 *ĘÍ=*,
_class"
 loc:@TargetDQN/Convolution_1/W*
dtype0*
_output_shapes
: 

FTargetDQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_1/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: *

seed *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*
seed2 
§
:TargetDQN/Convolution_1/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_1/W/Initializer/truncated_normal/stddev*&
_output_shapes
: *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W

6TargetDQN/Convolution_1/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_1/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_1/W/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: 
Ë
TargetDQN/Convolution_1/W
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/W*
	container 

 TargetDQN/Convolution_1/W/AssignAssignTargetDQN/Convolution_1/W6TargetDQN/Convolution_1/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W
¤
TargetDQN/Convolution_1/W/readIdentityTargetDQN/Convolution_1/W*&
_output_shapes
: *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W
Ś
+TargetDQN/Convolution_1/B/Initializer/ConstConst*
valueB *ÍĚĚ=*,
_class"
 loc:@TargetDQN/Convolution_1/B*
dtype0*
_output_shapes
: 
ł
TargetDQN/Convolution_1/B
VariableV2*
dtype0*
_output_shapes
: *
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/B*
	container *
shape: 
î
 TargetDQN/Convolution_1/B/AssignAssignTargetDQN/Convolution_1/B+TargetDQN/Convolution_1/B/Initializer/Const*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/B*
validate_shape(*
_output_shapes
: 

TargetDQN/Convolution_1/B/readIdentityTargetDQN/Convolution_1/B*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/B*
_output_shapes
: 
¤
TargetDQN/Convolution_1/Conv2DConv2DTargetDQN/Inputs/ReshapeTargetDQN/Convolution_1/W/read*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(

TargetDQN/Convolution_1/addAddTargetDQN/Convolution_1/Conv2DTargetDQN/Convolution_1/B/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
{
TargetDQN/Convolution_1/ReluReluTargetDQN/Convolution_1/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ă
<TargetDQN/Convolution_2/W/Initializer/truncated_normal/shapeConst*%
valueB"          @   *,
_class"
 loc:@TargetDQN/Convolution_2/W*
dtype0*
_output_shapes
:
Ž
;TargetDQN/Convolution_2/W/Initializer/truncated_normal/meanConst*
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_2/W*
dtype0*
_output_shapes
: 
°
=TargetDQN/Convolution_2/W/Initializer/truncated_normal/stddevConst*
valueB
 *6=*,
_class"
 loc:@TargetDQN/Convolution_2/W*
dtype0*
_output_shapes
: 

FTargetDQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_2/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
: @*

seed *
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W
§
:TargetDQN/Convolution_2/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_2/W/Initializer/truncated_normal/stddev*&
_output_shapes
: @*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W

6TargetDQN/Convolution_2/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_2/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_2/W/Initializer/truncated_normal/mean*&
_output_shapes
: @*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W
Ë
TargetDQN/Convolution_2/W
VariableV2*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_2/W

 TargetDQN/Convolution_2/W/AssignAssignTargetDQN/Convolution_2/W6TargetDQN/Convolution_2/W/Initializer/truncated_normal*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*
validate_shape(*&
_output_shapes
: @*
use_locking(
¤
TargetDQN/Convolution_2/W/readIdentityTargetDQN/Convolution_2/W*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
Ś
+TargetDQN/Convolution_2/B/Initializer/ConstConst*
valueB@*ÍĚĚ=*,
_class"
 loc:@TargetDQN/Convolution_2/B*
dtype0*
_output_shapes
:@
ł
TargetDQN/Convolution_2/B
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_2/B*
	container *
shape:@*
dtype0*
_output_shapes
:@
î
 TargetDQN/Convolution_2/B/AssignAssignTargetDQN/Convolution_2/B+TargetDQN/Convolution_2/B/Initializer/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/B

TargetDQN/Convolution_2/B/readIdentityTargetDQN/Convolution_2/B*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/B*
_output_shapes
:@
Ş
TargetDQN/Convolution_2/Conv2DConv2DTargetDQN/Convolution_1/Conv2DTargetDQN/Convolution_2/W/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID

TargetDQN/Convolution_2/addAddTargetDQN/Convolution_2/Conv2DTargetDQN/Convolution_2/B/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
T0
{
TargetDQN/Convolution_2/ReluReluTargetDQN/Convolution_2/add*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
T0
Ă
<TargetDQN/Convolution_3/W/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *,
_class"
 loc:@TargetDQN/Convolution_3/W*
dtype0*
_output_shapes
:
Ž
;TargetDQN/Convolution_3/W/Initializer/truncated_normal/meanConst*
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_3/W*
dtype0*
_output_shapes
: 
°
=TargetDQN/Convolution_3/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *¸1=*,
_class"
 loc:@TargetDQN/Convolution_3/W

FTargetDQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_3/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:@@*

seed *
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W
§
:TargetDQN/Convolution_3/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_3/W/Initializer/truncated_normal/stddev*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@

6TargetDQN/Convolution_3/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_3/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_3/W/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ë
TargetDQN/Convolution_3/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_3/W*
	container *
shape:@@

 TargetDQN/Convolution_3/W/AssignAssignTargetDQN/Convolution_3/W6TargetDQN/Convolution_3/W/Initializer/truncated_normal*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@
¤
TargetDQN/Convolution_3/W/readIdentityTargetDQN/Convolution_3/W*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ś
+TargetDQN/Convolution_3/B/Initializer/ConstConst*
valueB@*ÍĚĚ=*,
_class"
 loc:@TargetDQN/Convolution_3/B*
dtype0*
_output_shapes
:@
ł
TargetDQN/Convolution_3/B
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_3/B*
	container *
shape:@*
dtype0*
_output_shapes
:@
î
 TargetDQN/Convolution_3/B/AssignAssignTargetDQN/Convolution_3/B+TargetDQN/Convolution_3/B/Initializer/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/B

TargetDQN/Convolution_3/B/readIdentityTargetDQN/Convolution_3/B*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/B*
_output_shapes
:@
Ş
TargetDQN/Convolution_3/Conv2DConv2DTargetDQN/Convolution_2/Conv2DTargetDQN/Convolution_3/W/read*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations


TargetDQN/Convolution_3/addAddTargetDQN/Convolution_3/Conv2DTargetDQN/Convolution_3/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
{
TargetDQN/Convolution_3/ReluReluTargetDQN/Convolution_3/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ă
<TargetDQN/Convolution_4/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @      *,
_class"
 loc:@TargetDQN/Convolution_4/W
Ž
;TargetDQN/Convolution_4/W/Initializer/truncated_normal/meanConst*
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_4/W*
dtype0*
_output_shapes
: 
°
=TargetDQN/Convolution_4/W/Initializer/truncated_normal/stddevConst*
valueB
 *Ş0ë<*,
_class"
 loc:@TargetDQN/Convolution_4/W*
dtype0*
_output_shapes
: 

FTargetDQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_4/W/Initializer/truncated_normal/shape*
dtype0*'
_output_shapes
:@*

seed *
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*
seed2 
¨
:TargetDQN/Convolution_4/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_4/W/Initializer/truncated_normal/stddev*'
_output_shapes
:@*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W

6TargetDQN/Convolution_4/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_4/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_4/W/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
Í
TargetDQN/Convolution_4/W
VariableV2*
	container *
shape:@*
dtype0*'
_output_shapes
:@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_4/W

 TargetDQN/Convolution_4/W/AssignAssignTargetDQN/Convolution_4/W6TargetDQN/Convolution_4/W/Initializer/truncated_normal*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@*
use_locking(
Ľ
TargetDQN/Convolution_4/W/readIdentityTargetDQN/Convolution_4/W*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
¨
+TargetDQN/Convolution_4/B/Initializer/ConstConst*
valueB*ÍĚĚ=*,
_class"
 loc:@TargetDQN/Convolution_4/B*
dtype0*
_output_shapes	
:
ľ
TargetDQN/Convolution_4/B
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_4/B*
	container *
shape:*
dtype0*
_output_shapes	
:
ď
 TargetDQN/Convolution_4/B/AssignAssignTargetDQN/Convolution_4/B+TargetDQN/Convolution_4/B/Initializer/Const*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/B*
validate_shape(*
_output_shapes	
:

TargetDQN/Convolution_4/B/readIdentityTargetDQN/Convolution_4/B*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/B*
_output_shapes	
:
Ť
TargetDQN/Convolution_4/Conv2DConv2DTargetDQN/Convolution_3/Conv2DTargetDQN/Convolution_4/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Convolution_4/addAddTargetDQN/Convolution_4/Conv2DTargetDQN/Convolution_4/B/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
|
TargetDQN/Convolution_4/ReluReluTargetDQN/Convolution_4/add*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
TargetDQN/Flatten/ShapeShapeTargetDQN/Convolution_4/Conv2D*
T0*
out_type0*
_output_shapes
:
o
%TargetDQN/Flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'TargetDQN/Flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'TargetDQN/Flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ó
TargetDQN/Flatten/strided_sliceStridedSliceTargetDQN/Flatten/Shape%TargetDQN/Flatten/strided_slice/stack'TargetDQN/Flatten/strided_slice/stack_1'TargetDQN/Flatten/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
l
!TargetDQN/Flatten/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
Ľ
TargetDQN/Flatten/Reshape/shapePackTargetDQN/Flatten/strided_slice!TargetDQN/Flatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
Ś
TargetDQN/Flatten/ReshapeReshapeTargetDQN/Convolution_4/Conv2DTargetDQN/Flatten/Reshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Á
?TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
valueB"      */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
dtype0*
_output_shapes
:
´
>TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@TargetDQN/FullyConnected_1/W
ś
@TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
dtype0*
_output_shapes
: 

ITargetDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
seed2 
­
=TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/mulMulITargetDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal@TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W

9TargetDQN/FullyConnected_1/W/Initializer/truncated_normalAdd=TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/mul>TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W
Ĺ
TargetDQN/FullyConnected_1/W
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
	container *
shape:


#TargetDQN/FullyConnected_1/W/AssignAssignTargetDQN/FullyConnected_1/W9TargetDQN/FullyConnected_1/W/Initializer/truncated_normal*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
validate_shape(* 
_output_shapes
:
*
use_locking(
§
!TargetDQN/FullyConnected_1/W/readIdentityTargetDQN/FullyConnected_1/W*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

Ž
.TargetDQN/FullyConnected_1/B/Initializer/ConstConst*
dtype0*
_output_shapes	
:*
valueB*ÍĚĚ=*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B
ť
TargetDQN/FullyConnected_1/B
VariableV2*
dtype0*
_output_shapes	
:*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
	container *
shape:
ű
#TargetDQN/FullyConnected_1/B/AssignAssignTargetDQN/FullyConnected_1/B.TargetDQN/FullyConnected_1/B/Initializer/Const*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:*
use_locking(
˘
!TargetDQN/FullyConnected_1/B/readIdentityTargetDQN/FullyConnected_1/B*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
_output_shapes	
:
Â
!TargetDQN/FullyConnected_1/MatMulMatMulTargetDQN/Flatten/Reshape!TargetDQN/FullyConnected_1/W/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

TargetDQN/FullyConnected_1/addAdd!TargetDQN/FullyConnected_1/MatMul!TargetDQN/FullyConnected_1/B/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
z
TargetDQN/FullyConnected_1/ReluReluTargetDQN/FullyConnected_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
?TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/shapeConst*
valueB"   	   */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
dtype0*
_output_shapes
:
´
>TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/meanConst*
valueB
 *    */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
dtype0*
_output_shapes
: 
ś
@TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
dtype0*
_output_shapes
: 

ITargetDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:		*

seed *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
seed2 
Ź
=TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/mulMulITargetDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal@TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/stddev*
_output_shapes
:		*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W

9TargetDQN/FullyConnected_2/W/Initializer/truncated_normalAdd=TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/mul>TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
Ă
TargetDQN/FullyConnected_2/W
VariableV2*
	container *
shape:		*
dtype0*
_output_shapes
:		*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/W

#TargetDQN/FullyConnected_2/W/AssignAssignTargetDQN/FullyConnected_2/W9TargetDQN/FullyConnected_2/W/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		
Ś
!TargetDQN/FullyConnected_2/W/readIdentityTargetDQN/FullyConnected_2/W*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
Ź
.TargetDQN/FullyConnected_2/B/Initializer/ConstConst*
valueB	*ÍĚĚ=*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
dtype0*
_output_shapes
:	
š
TargetDQN/FullyConnected_2/B
VariableV2*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
	container *
shape:	*
dtype0*
_output_shapes
:	
ú
#TargetDQN/FullyConnected_2/B/AssignAssignTargetDQN/FullyConnected_2/B.TargetDQN/FullyConnected_2/B/Initializer/Const*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	*
use_locking(
Ą
!TargetDQN/FullyConnected_2/B/readIdentityTargetDQN/FullyConnected_2/B*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
_output_shapes
:	
Ç
!TargetDQN/FullyConnected_2/MatMulMatMulTargetDQN/FullyConnected_1/Relu!TargetDQN/FullyConnected_2/W/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
transpose_a( *
transpose_b( *
T0

TargetDQN/FullyConnected_2/addAdd!TargetDQN/FullyConnected_2/MatMul!TargetDQN/FullyConnected_2/B/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
\
TargetDQN/Loss/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
\
TargetDQN/Loss/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ś
TargetDQN/Loss/rangeRangeTargetDQN/Loss/range/startTargetDQN/Inputs/strided_sliceTargetDQN/Loss/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
r
TargetDQN/Loss/ShapeShapeTargetDQN/FullyConnected_2/add*
_output_shapes
:*
T0*
out_type0
l
"TargetDQN/Loss/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$TargetDQN/Loss/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
n
$TargetDQN/Loss/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
TargetDQN/Loss/strided_sliceStridedSliceTargetDQN/Loss/Shape"TargetDQN/Loss/strided_slice/stack$TargetDQN/Loss/strided_slice/stack_1$TargetDQN/Loss/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
{
TargetDQN/Loss/mulMulTargetDQN/Loss/rangeTargetDQN/Loss/strided_slice*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
TargetDQN/Loss/addAddTargetDQN/Loss/mulTargetDQN/Inputs/Actions*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
TargetDQN/Loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

TargetDQN/Loss/ReshapeReshapeTargetDQN/FullyConnected_2/addTargetDQN/Loss/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
^
TargetDQN/Loss/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Đ
TargetDQN/Loss/GatherV2GatherV2TargetDQN/Loss/ReshapeTargetDQN/Loss/addTargetDQN/Loss/GatherV2/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Loss/huber_loss/SubSubTargetDQN/Loss/GatherV2TargetDQN/Inputs/TDTarget*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
q
TargetDQN/Loss/huber_loss/AbsAbsTargetDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
#TargetDQN/Loss/huber_loss/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!TargetDQN/Loss/huber_loss/MinimumMinimumTargetDQN/Loss/huber_loss/Abs#TargetDQN/Loss/huber_loss/Minimum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Loss/huber_loss/Sub_1SubTargetDQN/Loss/huber_loss/Abs!TargetDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
TargetDQN/Loss/huber_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *   ?

TargetDQN/Loss/huber_loss/MulMul!TargetDQN/Loss/huber_loss/Minimum!TargetDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Loss/huber_loss/Mul_1MulTargetDQN/Loss/huber_loss/ConstTargetDQN/Loss/huber_loss/Mul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
!TargetDQN/Loss/huber_loss/Mul_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

TargetDQN/Loss/huber_loss/Mul_2Mul!TargetDQN/Loss/huber_loss/Mul_2/xTargetDQN/Loss/huber_loss/Sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Loss/huber_loss/AddAddTargetDQN/Loss/huber_loss/Mul_1TargetDQN/Loss/huber_loss/Mul_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
6TargetDQN/Loss/huber_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

<TargetDQN/Loss/huber_loss/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
}
;TargetDQN/Loss/huber_loss/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 

;TargetDQN/Loss/huber_loss/assert_broadcastable/values/shapeShapeTargetDQN/Loss/huber_loss/Add*
_output_shapes
:*
T0*
out_type0
|
:TargetDQN/Loss/huber_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
JTargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successNoOp
˛
 TargetDQN/Loss/huber_loss/Cast/xConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

TargetDQN/Loss/huber_loss/Mul_3MulTargetDQN/Loss/huber_loss/Add TargetDQN/Loss/huber_loss/Cast/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
!TargetDQN/Loss/huber_loss/Const_1ConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB: 
Ś
TargetDQN/Loss/huber_loss/SumSumTargetDQN/Loss/huber_loss/Mul_3!TargetDQN/Loss/huber_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ż
-TargetDQN/Loss/huber_loss/num_present/Equal/yConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
+TargetDQN/Loss/huber_loss/num_present/EqualEqual TargetDQN/Loss/huber_loss/Cast/x-TargetDQN/Loss/huber_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Â
0TargetDQN/Loss/huber_loss/num_present/zeros_likeConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ĺ
5TargetDQN/Loss/huber_loss/num_present/ones_like/ShapeConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ç
5TargetDQN/Loss/huber_loss/num_present/ones_like/ConstConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ř
/TargetDQN/Loss/huber_loss/num_present/ones_likeFill5TargetDQN/Loss/huber_loss/num_present/ones_like/Shape5TargetDQN/Loss/huber_loss/num_present/ones_like/Const*
_output_shapes
: *
T0*

index_type0
ç
,TargetDQN/Loss/huber_loss/num_present/SelectSelect+TargetDQN/Loss/huber_loss/num_present/Equal0TargetDQN/Loss/huber_loss/num_present/zeros_like/TargetDQN/Loss/huber_loss/num_present/ones_like*
T0*
_output_shapes
: 
ę
ZTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
č
YTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 

YTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeTargetDQN/Loss/huber_loss/AddK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
ç
XTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
˝
hTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success
Ü
GTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeShapeTargetDQN/Loss/huber_loss/AddK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successi^TargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ä
GTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ConstConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successi^TargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

ATargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_likeFillGTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeGTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
7TargetDQN/Loss/huber_loss/num_present/broadcast_weightsMul,TargetDQN/Loss/huber_loss/num_present/SelectATargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
+TargetDQN/Loss/huber_loss/num_present/ConstConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Đ
%TargetDQN/Loss/huber_loss/num_presentSum7TargetDQN/Loss/huber_loss/num_present/broadcast_weights+TargetDQN/Loss/huber_loss/num_present/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ą
!TargetDQN/Loss/huber_loss/Const_2ConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ś
TargetDQN/Loss/huber_loss/Sum_1SumTargetDQN/Loss/huber_loss/Sum!TargetDQN/Loss/huber_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

TargetDQN/Loss/huber_loss/valueDivNoNanTargetDQN/Loss/huber_loss/Sum_1%TargetDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
W
TargetDQN/Loss/ConstConst*
valueB *
dtype0*
_output_shapes
: 

TargetDQN/Loss/MeanMeanTargetDQN/Loss/huber_loss/valueTargetDQN/Loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
l
TargetDQN/Loss/Loss/tagsConst*$
valueB BTargetDQN/Loss/Loss*
dtype0*
_output_shapes
: 
t
TargetDQN/Loss/LossScalarSummaryTargetDQN/Loss/Loss/tagsTargetDQN/Loss/Mean*
T0*
_output_shapes
: 
f
#TargetDQN/Optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
l
'TargetDQN/Optimizer/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ť
"TargetDQN/Optimizer/gradients/FillFill#TargetDQN/Optimizer/gradients/Shape'TargetDQN/Optimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

DTargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
â
>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/ReshapeReshape"TargetDQN/Optimizer/gradients/FillDTargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

<TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 
ô
;TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/TileTile>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Reshape<TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0

>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ç
>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/truedivRealDiv;TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Tile>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Const_1*
T0*
_output_shapes
: 

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
á
MTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nanDivNoNan>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/truediv%TargetDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
´
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/SumSumMTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nanXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/NegNegTargetDQN/Loss/huber_loss/Sum_1*
T0*
_output_shapes
: 
ë
OTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_1DivNoNanFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Neg%TargetDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
ô
OTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_2DivNoNanOTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_1%TargetDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
˙
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/mulMul>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/truedivOTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
ą
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Sum_1SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/mulZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/group_deps*
_output_shapes
: *
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1*
_output_shapes
: 

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/ReshapeReshape[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/control_dependencyPTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 

GTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/TileTileJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 

NTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/ReshapeReshapeGTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/TileNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Ľ
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/ShapeShapeTargetDQN/Loss/huber_loss/Mul_3*
T0*
out_type0*
_output_shapes
:

ETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/TileTileHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
Ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ShapeShapeTargetDQN/Loss/huber_loss/Add*
T0*
out_type0*
_output_shapes
:

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ä
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/MulMulETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Tile TargetDQN/Loss/huber_loss/Cast/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/SumSumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/MulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Mul_1MulTargetDQN/Loss/huber_loss/AddETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Sum_1SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Mul_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1*
_output_shapes
: 
Ľ
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ShapeShapeTargetDQN/Loss/huber_loss/Mul_1*
_output_shapes
:*
T0*
out_type0
§
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape_1ShapeTargetDQN/Loss/huber_loss/Mul_2*
T0*
out_type0*
_output_shapes
:
ž
VTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/BroadcastGradientArgsBroadcastGradientArgsFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ShapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ŕ
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/SumSum[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyVTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ReshapeReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Sum_1Sum[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Sum_1HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ń
QTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/group_depsNoOpI^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ReshapeK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1

YTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependencyIdentityHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ReshapeR^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1IdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1R^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
§
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape_1ShapeTargetDQN/Loss/huber_loss/Mul*
T0*
out_type0*
_output_shapes
:
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ő
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/MulMulYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependencyTargetDQN/Loss/huber_loss/Mul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/SumSumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/MulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ů
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Mul_1MulTargetDQN/Loss/huber_loss/ConstYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Sum_1SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Mul_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Š
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape*
_output_shapes
: 

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Š
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape_1ShapeTargetDQN/Loss/huber_loss/Sub_1*
_output_shapes
:*
T0*
out_type0
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ů
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/MulMul[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1TargetDQN/Loss/huber_loss/Sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/SumSumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/MulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ý
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Mul_1Mul!TargetDQN/Loss/huber_loss/Mul_2/x[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Sum_1SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Mul_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Š
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape*
_output_shapes
: 

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1
§
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ShapeShape!TargetDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:
Š
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape_1Shape!TargetDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:
ž
VTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ShapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ű
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/MulMul]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1!TargetDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/SumSumDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/MulVTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ReshapeReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ý
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Mul_1Mul!TargetDQN/Loss/huber_loss/Minimum]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Sum_1SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Mul_1XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Sum_1HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
QTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/group_depsNoOpI^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ReshapeK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1

YTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependencyIdentityHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ReshapeR^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1IdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1R^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ShapeShapeTargetDQN/Loss/huber_loss/Abs*
T0*
out_type0*
_output_shapes
:
Ť
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape_1Shape!TargetDQN/Loss/huber_loss/Minimum*
_output_shapes
:*
T0*
out_type0
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ć
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/SumSum]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Sum_1Sum]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ş
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/NegNegHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Sum_1*
T0*
_output_shapes
:
§
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/NegJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1
Ő
"TargetDQN/Optimizer/gradients/AddNAddNYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependency[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ShapeShapeTargetDQN/Loss/huber_loss/Abs*
_output_shapes
:*
T0*
out_type0

LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ž
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_2Shape"TargetDQN/Optimizer/gradients/AddN*
_output_shapes
:*
T0*
out_type0

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
˛
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zerosFillLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_2PTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0
Í
NTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/LessEqual	LessEqualTargetDQN/Loss/huber_loss/Abs#TargetDQN/Loss/huber_loss/Minimum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ShapeLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ă
KTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SelectSelectNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/LessEqual"TargetDQN/Optimizer/gradients/AddNJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SumSumKTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SelectZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Š
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ReshapeReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SumJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ĺ
MTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Select_1SelectNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/LessEqualJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros"TargetDQN/Optimizer/gradients/AddN*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Sum_1SumMTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Select_1\TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
˘
NTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1ReshapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Sum_1LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ý
UTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/group_depsNoOpM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ReshapeO^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/control_dependencyIdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ReshapeV^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

_TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency_1IdentityNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1V^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*a
_classW
USloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1*
_output_shapes
: 
ţ
$TargetDQN/Optimizer/gradients/AddN_1AddN[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape

ETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/SignSignTargetDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/mulMul$TargetDQN/Optimizer/gradients/AddN_1ETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/Sign*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ShapeShapeTargetDQN/Loss/GatherV2*
_output_shapes
:*
T0*
out_type0
Ą
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape_1ShapeTargetDQN/Inputs/TDTarget*
T0*
out_type0*
_output_shapes
:
ž
VTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ShapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Š
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/SumSumDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/mulVTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ReshapeReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
­
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Sum_1SumDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/mulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ś
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/NegNegFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Sum_1*
_output_shapes
:*
T0
Ą
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1ReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/NegHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ń
QTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/group_depsNoOpI^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ReshapeK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1

YTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/control_dependencyIdentityHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ReshapeR^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/control_dependency_1IdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1R^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
@TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ShapeShapeTargetDQN/Loss/Reshape*
T0*
out_type0	*)
_class
loc:@TargetDQN/Loss/Reshape*
_output_shapes
:
ř
?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/CastCast@TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/Shape*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	*)
_class
loc:@TargetDQN/Loss/Reshape

?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/SizeSizeTargetDQN/Loss/add*
T0*
out_type0*
_output_shapes
: 

ITargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

ETargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims
ExpandDims?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/SizeITargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:

NTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_sliceStridedSlice?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/CastNTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stackPTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_1PTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0

FTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ŕ
ATargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concatConcatV2ETargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDimsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_sliceFTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
§
BTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ReshapeReshapeYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/control_dependencyATargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concat*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/Reshape_1ReshapeTargetDQN/Loss/addETargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

?TargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ShapeShapeTargetDQN/FullyConnected_2/add*
T0*
out_type0*
_output_shapes
:

UTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ą
WTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ą
WTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ť
OTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_sliceStridedSlice?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/CastUTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stackWTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1WTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/tensorUnsortedSegmentSumBTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/Reshape_1OTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tnumsegments0*
Tindices0*
T0

ATargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ReshapeReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/tensor?TargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
¨
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ShapeShape!TargetDQN/FullyConnected_2/MatMul*
T0*
out_type0*
_output_shapes
:

ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:	
Á
WTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ShapeITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
¨
ETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/SumSumATargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ReshapeWTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¤
ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ReshapeReshapeETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/SumGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0*
Tshape0
Ź
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Sum_1SumATargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ReshapeYTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1ReshapeGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Sum_1ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	
ô
RTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/group_depsNoOpJ^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ReshapeL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1

ZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependencyIdentityITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ReshapeS^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*\
_classR
PNloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	

\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency_1IdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1S^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1*
_output_shapes
:	
­
KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMulMatMulZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency!TargetDQN/FullyConnected_2/W/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
¤
MTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1MatMulTargetDQN/FullyConnected_1/ReluZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency*
T0*
_output_shapes
:		*
transpose_a(*
transpose_b( 
ű
UTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/group_depsNoOpL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMulN^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1
Ą
]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyIdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMulV^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1IdentityMTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1V^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes
:		

KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/Relu_grad/ReluGradReluGrad]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyTargetDQN/FullyConnected_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ShapeShape!TargetDQN/FullyConnected_1/MatMul*
_output_shapes
:*
T0*
out_type0

ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
Á
WTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ShapeITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˛
ETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/SumSumKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/Relu_grad/ReluGradWTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ľ
ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ReshapeReshapeETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/SumGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Sum_1SumKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/Relu_grad/ReluGradYTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1ReshapeGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Sum_1ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
ô
RTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/group_depsNoOpJ^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ReshapeL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1

ZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependencyIdentityITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ReshapeS^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/group_deps*
T0*\
_classR
PNloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency_1IdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1S^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/group_deps*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1*
_output_shapes	
:
­
KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMulMatMulZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency!TargetDQN/FullyConnected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 

MTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1MatMulTargetDQN/Flatten/ReshapeZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
ű
UTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/group_depsNoOpL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMulN^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1
Ą
]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependencyIdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMulV^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul

_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1IdentityMTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1V^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1* 
_output_shapes
:

 
BTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/ShapeShapeTargetDQN/Convolution_4/Conv2D*
T0*
out_type0*
_output_shapes
:
ť
DTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/ReshapeReshape]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependencyBTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/ShapeNShapeNTargetDQN/Convolution_3/Conv2DTargetDQN/Convolution_4/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ţ
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/ShapeNTargetDQN/Convolution_4/W/readDTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/Reshape*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
Ú
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Convolution_3/Conv2DJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/ShapeN:1DTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/Reshape*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
˛
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/group_deps*
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@
Ö
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/ShapeNShapeNTargetDQN/Convolution_2/Conv2DTargetDQN/Convolution_3/W/read*
N* 
_output_shapes
::*
T0*
out_type0
ô
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/ShapeNTargetDQN/Convolution_3/W/readZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
ď
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Convolution_2/Conv2DJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/ShapeN:1ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:@@

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@
ą
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/group_deps*&
_output_shapes
:@@*
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilter
Ö
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/ShapeNShapeNTargetDQN/Convolution_1/Conv2DTargetDQN/Convolution_2/W/read*
T0*
out_type0*
N* 
_output_shapes
::
ô
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/ShapeNTargetDQN/Convolution_2/W/readZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
ď
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Convolution_1/Conv2DJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/ShapeN:1ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
: @

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput
ą
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/group_deps*
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
Đ
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/ShapeNShapeNTargetDQN/Inputs/ReshapeTargetDQN/Convolution_1/W/read*
T0*
out_type0*
N* 
_output_shapes
::
ô
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/ShapeNTargetDQN/Convolution_1/W/readZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
é
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Inputs/ReshapeJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/ShapeN:1ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT
ą
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilter
Ó
LTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*,
_class"
 loc:@TargetDQN/Convolution_1/W*%
valueB"             *
dtype0*
_output_shapes
:
ľ
BTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_1/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
<TargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/Const*&
_output_shapes
: *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*

index_type0
Ý
+TargetDQN/TargetDQN/Convolution_1/W/RMSProp
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/W
Ż
2TargetDQN/TargetDQN/Convolution_1/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_1/W/RMSProp<TargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: *
use_locking(
Č
0TargetDQN/TargetDQN/Convolution_1/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_1/W/RMSProp*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: 
Ö
OTargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@TargetDQN/Convolution_1/W*%
valueB"             *
dtype0*
_output_shapes
:
¸
ETargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Đ
?TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/Const*&
_output_shapes
: *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*

index_type0
ß
-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/W*
	container *
shape: *
dtype0*&
_output_shapes
: 
ś
4TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 
Ě
2TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: 
Ó
LTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*,
_class"
 loc:@TargetDQN/Convolution_2/W*%
valueB"          @   *
dtype0*
_output_shapes
:
ľ
BTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_2/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
<TargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/Const*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*

index_type0*&
_output_shapes
: @
Ý
+TargetDQN/TargetDQN/Convolution_2/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_2/W*
	container *
shape: @
Ż
2TargetDQN/TargetDQN/Convolution_2/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_2/W/RMSProp<TargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W
Č
0TargetDQN/TargetDQN/Convolution_2/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_2/W/RMSProp*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
Ö
OTargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@TargetDQN/Convolution_2/W*%
valueB"          @   *
dtype0*
_output_shapes
:
¸
ETargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Đ
?TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*

index_type0*&
_output_shapes
: @
ß
-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_2/W*
	container 
ś
4TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ě
2TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
Ó
LTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@TargetDQN/Convolution_3/W*%
valueB"      @   @   
ľ
BTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_3/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
<TargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/Const*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*

index_type0*&
_output_shapes
:@@
Ý
+TargetDQN/TargetDQN/Convolution_3/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_3/W*
	container *
shape:@@
Ż
2TargetDQN/TargetDQN/Convolution_3/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_3/W/RMSProp<TargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Č
0TargetDQN/TargetDQN/Convolution_3/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_3/W/RMSProp*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ö
OTargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@TargetDQN/Convolution_3/W*%
valueB"      @   @   
¸
ETargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@TargetDQN/Convolution_3/W*
valueB
 *    
Đ
?TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*

index_type0*&
_output_shapes
:@@
ß
-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_3/W*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
ś
4TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W
Ě
2TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ó
LTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@TargetDQN/Convolution_4/W*%
valueB"      @      
ľ
BTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_4/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Č
<TargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/Const*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*

index_type0*'
_output_shapes
:@
ß
+TargetDQN/TargetDQN/Convolution_4/W/RMSProp
VariableV2*
	container *
shape:@*
dtype0*'
_output_shapes
:@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_4/W
°
2TargetDQN/TargetDQN/Convolution_4/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_4/W/RMSProp<TargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@*
use_locking(
É
0TargetDQN/TargetDQN/Convolution_4/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_4/W/RMSProp*'
_output_shapes
:@*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W
Ö
OTargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@TargetDQN/Convolution_4/W*%
valueB"      @      *
dtype0*
_output_shapes
:
¸
ETargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_4/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ń
?TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/Const*'
_output_shapes
:@*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*

index_type0
á
-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_4/W*
	container *
shape:@*
dtype0*'
_output_shapes
:@
ˇ
4TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@*
use_locking(
Í
2TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
Ń
OTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
valueB"      *
dtype0*
_output_shapes
:
ť
ETargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/ConstConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Í
?TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/onesFillOTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensorETargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/Const* 
_output_shapes
:
*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*

index_type0
×
.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
	container *
shape:

ľ
5TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp?TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
validate_shape(* 
_output_shapes
:

Ë
3TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

Ô
RTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
valueB"      *
dtype0*
_output_shapes
:
ž
HTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/ConstConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ö
BTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zerosFillRTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorHTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/Const* 
_output_shapes
:
*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*

index_type0
Ů
0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
	container *
shape:

ź
7TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W
Ď
5TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

Ë
OTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensorConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
valueB:*
dtype0*
_output_shapes
:
ť
ETargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/ConstConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Č
?TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/onesFillOTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensorETargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/Const*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*

index_type0*
_output_shapes	
:
Í
.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp
VariableV2*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
	container *
shape:*
dtype0*
_output_shapes	
:
°
5TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp?TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:*
use_locking(
Ć
3TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
_output_shapes	
:
Î
RTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
valueB:*
dtype0*
_output_shapes
:
ž
HTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/ConstConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
valueB
 *    *
dtype0*
_output_shapes
: 
Ń
BTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zerosFillRTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensorHTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/Const*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*

index_type0*
_output_shapes	
:
Ď
0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1
VariableV2*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
	container *
shape:*
dtype0*
_output_shapes	
:
ˇ
7TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:
Ę
5TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1*
_output_shapes	
:*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B
Ń
OTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
valueB"   	   *
dtype0*
_output_shapes
:
ť
ETargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/ConstConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ě
?TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/onesFillOTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensorETargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/Const*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*

index_type0*
_output_shapes
:		
Ő
.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp
VariableV2*
dtype0*
_output_shapes
:		*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
	container *
shape:		
´
5TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp?TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		
Ę
3TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
Ô
RTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
valueB"   	   *
dtype0*
_output_shapes
:
ž
HTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
valueB
 *    
Ő
BTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zerosFillRTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorHTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/Const*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*

index_type0*
_output_shapes
:		
×
0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1
VariableV2*
	container *
shape:		*
dtype0*
_output_shapes
:		*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/W
ť
7TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		
Î
5TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
˝
?TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/Initializer/onesConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
valueB	*  ?*
dtype0*
_output_shapes
:	
Ë
.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp
VariableV2*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/B
Ż
5TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp?TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/Initializer/ones*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	*
use_locking(
Ĺ
3TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp*
_output_shapes
:	*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B
Ŕ
BTargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/Initializer/zerosConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
valueB	*    *
dtype0*
_output_shapes
:	
Í
0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1
VariableV2*
shape:	*
dtype0*
_output_shapes
:	*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
	container 
ś
7TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/Initializer/zeros*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	*
use_locking(
É
5TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
_output_shapes
:	
n
)TargetDQN/Optimizer/RMSProp/learning_rateConst*
valueB
 *o9*
dtype0*
_output_shapes
: 
f
!TargetDQN/Optimizer/RMSProp/decayConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
i
$TargetDQN/Optimizer/RMSProp/momentumConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#TargetDQN/Optimizer/RMSProp/epsilonConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
š
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_1/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_1/W+TargetDQN/TargetDQN/Convolution_1/W/RMSProp-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: 
š
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_2/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_2/W+TargetDQN/TargetDQN/Convolution_2/W/RMSProp-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
š
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_3/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_3/W+TargetDQN/TargetDQN/Convolution_3/W/RMSProp-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@*
use_locking( 
ş
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_4/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_4/W+TargetDQN/TargetDQN/Convolution_4/W/RMSProp-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
Ĺ
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/W/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_1/W.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

˝
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/B/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_1/B.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency_1*
_output_shapes	
:*
use_locking( *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B
Ä
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/W/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_2/W.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		*
use_locking( 
ź
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/B/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_2/B.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
_output_shapes
:	*
use_locking( 

TargetDQN/Optimizer/RMSPropNoOpJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_1/W/ApplyRMSPropJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_2/W/ApplyRMSPropJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_3/W/ApplyRMSPropJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_4/W/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/B/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/W/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/B/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/W/ApplyRMSProp"&f@ćŰň     _Ő°	AĐGý#a×AJÎĺ
ň)Ë)
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
ˇ
ApplyRMSProp
var"T

ms"T
mom"T
lr"T
rho"T
momentum"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
Ŕ
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
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
ż
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
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
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
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
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2		"
align_cornersbool( "
half_pixel_centersbool( 
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
Á
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.14.02v1.14.0-rc1-22-gaf24dc91b5§Ë
k
Frame/RawImagePlaceholder*
dtype0*$
_output_shapes
:Ň *
shape:Ň 

Frame/Gray/convert_image/CastCastFrame/RawImage*

SrcT0*
Truncate( *

DstT0*$
_output_shapes
:Ň 
_
Frame/Gray/convert_image/yConst*
valueB
 *   0*
dtype0*
_output_shapes
: 

Frame/Gray/convert_imageMulFrame/Gray/convert_image/CastFrame/Gray/convert_image/y*
T0*$
_output_shapes
:Ň 
k
Frame/Gray/Tensordot/bConst*!
valueB"l	>˘E?Őxé=*
dtype0*
_output_shapes
:
x
#Frame/Gray/Tensordot/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
Ś
Frame/Gray/Tensordot/transpose	TransposeFrame/Gray/convert_image#Frame/Gray/Tensordot/transpose/perm*$
_output_shapes
:Ň *
Tperm0*
T0
s
"Frame/Gray/Tensordot/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"@     
¤
Frame/Gray/Tensordot/ReshapeReshapeFrame/Gray/Tensordot/transpose"Frame/Gray/Tensordot/Reshape/shape* 
_output_shapes
:
Ŕ*
T0*
Tshape0
o
%Frame/Gray/Tensordot/transpose_1/permConst*
valueB: *
dtype0*
_output_shapes
:

 Frame/Gray/Tensordot/transpose_1	TransposeFrame/Gray/Tensordot/b%Frame/Gray/Tensordot/transpose_1/perm*
_output_shapes
:*
Tperm0*
T0
u
$Frame/Gray/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
¨
Frame/Gray/Tensordot/Reshape_1Reshape Frame/Gray/Tensordot/transpose_1$Frame/Gray/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
´
Frame/Gray/Tensordot/MatMulMatMulFrame/Gray/Tensordot/ReshapeFrame/Gray/Tensordot/Reshape_1*
T0*
transpose_a( * 
_output_shapes
:
Ŕ*
transpose_b( 
k
Frame/Gray/Tensordot/shapeConst*
valueB"Ň       *
dtype0*
_output_shapes
:

Frame/Gray/TensordotReshapeFrame/Gray/Tensordot/MatMulFrame/Gray/Tensordot/shape*
T0*
Tshape0* 
_output_shapes
:
Ň 
d
Frame/Gray/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

Frame/Gray/ExpandDims
ExpandDimsFrame/Gray/TensordotFrame/Gray/ExpandDims/dim*$
_output_shapes
:Ň *

Tdim0*
T0
U
Frame/Gray/Mul/yConst*
valueB
 *   O*
dtype0*
_output_shapes
: 
m
Frame/Gray/MulMulFrame/Gray/ExpandDimsFrame/Gray/Mul/y*
T0*$
_output_shapes
:Ň 
p

Frame/GrayCastFrame/Gray/Mul*
Truncate( *

DstT0*$
_output_shapes
:Ň *

SrcT0
k
)Frame/crop_to_bounding_box/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Š
%Frame/crop_to_bounding_box/ExpandDims
ExpandDims
Frame/Gray)Frame/crop_to_bounding_box/ExpandDims/dim*
T0*(
_output_shapes
:Ň *

Tdim0
Í
-Frame/crop_to_bounding_box/control_dependencyIdentity%Frame/crop_to_bounding_box/ExpandDims*
T0*8
_class.
,*loc:@Frame/crop_to_bounding_box/ExpandDims*(
_output_shapes
:Ň 
y
 Frame/crop_to_bounding_box/stackConst*%
valueB"    3           *
dtype0*
_output_shapes
:
{
"Frame/crop_to_bounding_box/stack_1Const*%
valueB"˙˙˙˙i       ˙˙˙˙*
dtype0*
_output_shapes
:
Ý
 Frame/crop_to_bounding_box/SliceSlice-Frame/crop_to_bounding_box/control_dependency Frame/crop_to_bounding_box/stack"Frame/crop_to_bounding_box/stack_1*
T0*
Index0*'
_output_shapes
:i 

"Frame/crop_to_bounding_box/SqueezeSqueeze Frame/crop_to_bounding_box/Slice*
squeeze_dims
 *
T0*#
_output_shapes
:i 
Q
Frame/Divide/yConst*
value
B :˙*
dtype0*
_output_shapes
: 

Frame/Divide/CastCast"Frame/crop_to_bounding_box/Squeeze*

SrcT0*
Truncate( *

DstT0*#
_output_shapes
:i 
k
Frame/Divide/Cast_1CastFrame/Divide/y*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
m
Frame/DivideRealDivFrame/Divide/CastFrame/Divide/Cast_1*
T0*#
_output_shapes
:i 
]
Frame/Resize/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 

Frame/Resize/ExpandDims
ExpandDimsFrame/DivideFrame/Resize/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:i 
b
Frame/Resize/sizeConst*
dtype0*
_output_shapes
:*
valueB"T   T   
Ç
"Frame/Resize/ResizeNearestNeighborResizeNearestNeighborFrame/Resize/ExpandDimsFrame/Resize/size*&
_output_shapes
:TT*
align_corners( *
half_pixel_centers( *
T0

Frame/Resize/SqueezeSqueeze"Frame/Resize/ResizeNearestNeighbor*
squeeze_dims
 *
T0*"
_output_shapes
:TT

DQN/Inputs/InputsPlaceholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT*$
shape:˙˙˙˙˙˙˙˙˙TT
q
DQN/Inputs/Reshape/shapeConst*%
valueB"˙˙˙˙T   T      *
dtype0*
_output_shapes
:

DQN/Inputs/ReshapeReshapeDQN/Inputs/InputsDQN/Inputs/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT
n
DQN/Inputs/TDTargetPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
m
DQN/Inputs/ActionsPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
DQN/Inputs/ShapeShapeDQN/Inputs/Inputs*
T0*
out_type0*
_output_shapes
:
h
DQN/Inputs/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
j
 DQN/Inputs/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
j
 DQN/Inputs/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
°
DQN/Inputs/strided_sliceStridedSliceDQN/Inputs/ShapeDQN/Inputs/strided_slice/stack DQN/Inputs/strided_slice/stack_1 DQN/Inputs/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
ˇ
6DQN/Convolution_1/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*&
_class
loc:@DQN/Convolution_1/W*%
valueB"             
˘
5DQN/Convolution_1/W/Initializer/truncated_normal/meanConst*&
_class
loc:@DQN/Convolution_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
7DQN/Convolution_1/W/Initializer/truncated_normal/stddevConst*&
_class
loc:@DQN/Convolution_1/W*
valueB
 *ĘÍ=*
dtype0*
_output_shapes
: 

@DQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_1/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
: *

seed *
T0*&
_class
loc:@DQN/Convolution_1/W

4DQN/Convolution_1/W/Initializer/truncated_normal/mulMul@DQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_1/W/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
ý
0DQN/Convolution_1/W/Initializer/truncated_normalAdd4DQN/Convolution_1/W/Initializer/truncated_normal/mul5DQN/Convolution_1/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
ż
DQN/Convolution_1/W
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *&
_class
loc:@DQN/Convolution_1/W*
	container *
shape: 
í
DQN/Convolution_1/W/AssignAssignDQN/Convolution_1/W0DQN/Convolution_1/W/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 

DQN/Convolution_1/W/readIdentityDQN/Convolution_1/W*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 

%DQN/Convolution_1/B/Initializer/ConstConst*&
_class
loc:@DQN/Convolution_1/B*
valueB *ÍĚĚ=*
dtype0*
_output_shapes
: 
§
DQN/Convolution_1/B
VariableV2*
dtype0*
_output_shapes
: *
shared_name *&
_class
loc:@DQN/Convolution_1/B*
	container *
shape: 
Ö
DQN/Convolution_1/B/AssignAssignDQN/Convolution_1/B%DQN/Convolution_1/B/Initializer/Const*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_1/B*
validate_shape(*
_output_shapes
: 

DQN/Convolution_1/B/readIdentityDQN/Convolution_1/B*
T0*&
_class
loc:@DQN/Convolution_1/B*
_output_shapes
: 

DQN/Convolution_1/Conv2DConv2DDQN/Inputs/ReshapeDQN/Convolution_1/W/read*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations


DQN/Convolution_1/addAddDQN/Convolution_1/Conv2DDQN/Convolution_1/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
o
DQN/Convolution_1/ReluReluDQN/Convolution_1/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
DQN/Convolution_1/Weights/tagConst**
value!B BDQN/Convolution_1/Weights*
dtype0*
_output_shapes
: 

DQN/Convolution_1/WeightsHistogramSummaryDQN/Convolution_1/Weights/tagDQN/Convolution_1/W/read*
T0*
_output_shapes
: 
u
DQN/Convolution_1/Biases/tagConst*)
value B BDQN/Convolution_1/Biases*
dtype0*
_output_shapes
: 

DQN/Convolution_1/BiasesHistogramSummaryDQN/Convolution_1/Biases/tagDQN/Convolution_1/B/read*
_output_shapes
: *
T0

!DQN/Convolution_1/Activations/tagConst*
dtype0*
_output_shapes
: *.
value%B# BDQN/Convolution_1/Activations

DQN/Convolution_1/ActivationsHistogramSummary!DQN/Convolution_1/Activations/tagDQN/Convolution_1/Relu*
T0*
_output_shapes
: 
ˇ
6DQN/Convolution_2/W/Initializer/truncated_normal/shapeConst*&
_class
loc:@DQN/Convolution_2/W*%
valueB"          @   *
dtype0*
_output_shapes
:
˘
5DQN/Convolution_2/W/Initializer/truncated_normal/meanConst*&
_class
loc:@DQN/Convolution_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
7DQN/Convolution_2/W/Initializer/truncated_normal/stddevConst*&
_class
loc:@DQN/Convolution_2/W*
valueB
 *6=*
dtype0*
_output_shapes
: 

@DQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_2/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*&
_class
loc:@DQN/Convolution_2/W*
seed2 

4DQN/Convolution_2/W/Initializer/truncated_normal/mulMul@DQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_2/W/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
ý
0DQN/Convolution_2/W/Initializer/truncated_normalAdd4DQN/Convolution_2/W/Initializer/truncated_normal/mul5DQN/Convolution_2/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
ż
DQN/Convolution_2/W
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_2/W*
	container *
shape: @*
dtype0*&
_output_shapes
: @
í
DQN/Convolution_2/W/AssignAssignDQN/Convolution_2/W0DQN/Convolution_2/W/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_2/W*
validate_shape(*&
_output_shapes
: @

DQN/Convolution_2/W/readIdentityDQN/Convolution_2/W*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @

%DQN/Convolution_2/B/Initializer/ConstConst*&
_class
loc:@DQN/Convolution_2/B*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
§
DQN/Convolution_2/B
VariableV2*&
_class
loc:@DQN/Convolution_2/B*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
Ö
DQN/Convolution_2/B/AssignAssignDQN/Convolution_2/B%DQN/Convolution_2/B/Initializer/Const*
T0*&
_class
loc:@DQN/Convolution_2/B*
validate_shape(*
_output_shapes
:@*
use_locking(

DQN/Convolution_2/B/readIdentityDQN/Convolution_2/B*
T0*&
_class
loc:@DQN/Convolution_2/B*
_output_shapes
:@

DQN/Convolution_2/Conv2DConv2DDQN/Convolution_1/Conv2DDQN/Convolution_2/W/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
	dilations


DQN/Convolution_2/addAddDQN/Convolution_2/Conv2DDQN/Convolution_2/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@
o
DQN/Convolution_2/ReluReluDQN/Convolution_2/add*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
T0
w
DQN/Convolution_2/Weights/tagConst**
value!B BDQN/Convolution_2/Weights*
dtype0*
_output_shapes
: 

DQN/Convolution_2/WeightsHistogramSummaryDQN/Convolution_2/Weights/tagDQN/Convolution_2/W/read*
_output_shapes
: *
T0
u
DQN/Convolution_2/Biases/tagConst*)
value B BDQN/Convolution_2/Biases*
dtype0*
_output_shapes
: 

DQN/Convolution_2/BiasesHistogramSummaryDQN/Convolution_2/Biases/tagDQN/Convolution_2/B/read*
T0*
_output_shapes
: 

!DQN/Convolution_2/Activations/tagConst*.
value%B# BDQN/Convolution_2/Activations*
dtype0*
_output_shapes
: 

DQN/Convolution_2/ActivationsHistogramSummary!DQN/Convolution_2/Activations/tagDQN/Convolution_2/Relu*
T0*
_output_shapes
: 
ˇ
6DQN/Convolution_3/W/Initializer/truncated_normal/shapeConst*&
_class
loc:@DQN/Convolution_3/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
˘
5DQN/Convolution_3/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *&
_class
loc:@DQN/Convolution_3/W*
valueB
 *    
¤
7DQN/Convolution_3/W/Initializer/truncated_normal/stddevConst*&
_class
loc:@DQN/Convolution_3/W*
valueB
 *¸1=*
dtype0*
_output_shapes
: 

@DQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_3/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
:@@*

seed *
T0*&
_class
loc:@DQN/Convolution_3/W

4DQN/Convolution_3/W/Initializer/truncated_normal/mulMul@DQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_3/W/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
ý
0DQN/Convolution_3/W/Initializer/truncated_normalAdd4DQN/Convolution_3/W/Initializer/truncated_normal/mul5DQN/Convolution_3/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
ż
DQN/Convolution_3/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *&
_class
loc:@DQN/Convolution_3/W*
	container *
shape:@@
í
DQN/Convolution_3/W/AssignAssignDQN/Convolution_3/W0DQN/Convolution_3/W/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@

DQN/Convolution_3/W/readIdentityDQN/Convolution_3/W*&
_output_shapes
:@@*
T0*&
_class
loc:@DQN/Convolution_3/W

%DQN/Convolution_3/B/Initializer/ConstConst*&
_class
loc:@DQN/Convolution_3/B*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
§
DQN/Convolution_3/B
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_3/B*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ö
DQN/Convolution_3/B/AssignAssignDQN/Convolution_3/B%DQN/Convolution_3/B/Initializer/Const*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_3/B*
validate_shape(*
_output_shapes
:@

DQN/Convolution_3/B/readIdentityDQN/Convolution_3/B*
T0*&
_class
loc:@DQN/Convolution_3/B*
_output_shapes
:@

DQN/Convolution_3/Conv2DConv2DDQN/Convolution_2/Conv2DDQN/Convolution_3/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

DQN/Convolution_3/addAddDQN/Convolution_3/Conv2DDQN/Convolution_3/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
o
DQN/Convolution_3/ReluReluDQN/Convolution_3/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
w
DQN/Convolution_3/Weights/tagConst**
value!B BDQN/Convolution_3/Weights*
dtype0*
_output_shapes
: 

DQN/Convolution_3/WeightsHistogramSummaryDQN/Convolution_3/Weights/tagDQN/Convolution_3/W/read*
T0*
_output_shapes
: 
u
DQN/Convolution_3/Biases/tagConst*)
value B BDQN/Convolution_3/Biases*
dtype0*
_output_shapes
: 

DQN/Convolution_3/BiasesHistogramSummaryDQN/Convolution_3/Biases/tagDQN/Convolution_3/B/read*
T0*
_output_shapes
: 

!DQN/Convolution_3/Activations/tagConst*
dtype0*
_output_shapes
: *.
value%B# BDQN/Convolution_3/Activations

DQN/Convolution_3/ActivationsHistogramSummary!DQN/Convolution_3/Activations/tagDQN/Convolution_3/Relu*
T0*
_output_shapes
: 
ˇ
6DQN/Convolution_4/W/Initializer/truncated_normal/shapeConst*&
_class
loc:@DQN/Convolution_4/W*%
valueB"      @      *
dtype0*
_output_shapes
:
˘
5DQN/Convolution_4/W/Initializer/truncated_normal/meanConst*&
_class
loc:@DQN/Convolution_4/W*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
7DQN/Convolution_4/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *&
_class
loc:@DQN/Convolution_4/W*
valueB
 *Ş0ë<

@DQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6DQN/Convolution_4/W/Initializer/truncated_normal/shape*
dtype0*'
_output_shapes
:@*

seed *
T0*&
_class
loc:@DQN/Convolution_4/W*
seed2 

4DQN/Convolution_4/W/Initializer/truncated_normal/mulMul@DQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormal7DQN/Convolution_4/W/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
ţ
0DQN/Convolution_4/W/Initializer/truncated_normalAdd4DQN/Convolution_4/W/Initializer/truncated_normal/mul5DQN/Convolution_4/W/Initializer/truncated_normal/mean*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
Á
DQN/Convolution_4/W
VariableV2*
dtype0*'
_output_shapes
:@*
shared_name *&
_class
loc:@DQN/Convolution_4/W*
	container *
shape:@
î
DQN/Convolution_4/W/AssignAssignDQN/Convolution_4/W0DQN/Convolution_4/W/Initializer/truncated_normal*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_4/W

DQN/Convolution_4/W/readIdentityDQN/Convolution_4/W*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@

%DQN/Convolution_4/B/Initializer/ConstConst*&
_class
loc:@DQN/Convolution_4/B*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:
Š
DQN/Convolution_4/B
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@DQN/Convolution_4/B
×
DQN/Convolution_4/B/AssignAssignDQN/Convolution_4/B%DQN/Convolution_4/B/Initializer/Const*
T0*&
_class
loc:@DQN/Convolution_4/B*
validate_shape(*
_output_shapes	
:*
use_locking(

DQN/Convolution_4/B/readIdentityDQN/Convolution_4/B*
_output_shapes	
:*
T0*&
_class
loc:@DQN/Convolution_4/B

DQN/Convolution_4/Conv2DConv2DDQN/Convolution_3/Conv2DDQN/Convolution_4/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

DQN/Convolution_4/addAddDQN/Convolution_4/Conv2DDQN/Convolution_4/B/read*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
DQN/Convolution_4/ReluReluDQN/Convolution_4/add*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
DQN/Convolution_4/Weights/tagConst**
value!B BDQN/Convolution_4/Weights*
dtype0*
_output_shapes
: 

DQN/Convolution_4/WeightsHistogramSummaryDQN/Convolution_4/Weights/tagDQN/Convolution_4/W/read*
T0*
_output_shapes
: 
u
DQN/Convolution_4/Biases/tagConst*)
value B BDQN/Convolution_4/Biases*
dtype0*
_output_shapes
: 

DQN/Convolution_4/BiasesHistogramSummaryDQN/Convolution_4/Biases/tagDQN/Convolution_4/B/read*
T0*
_output_shapes
: 

!DQN/Convolution_4/Activations/tagConst*
dtype0*
_output_shapes
: *.
value%B# BDQN/Convolution_4/Activations

DQN/Convolution_4/ActivationsHistogramSummary!DQN/Convolution_4/Activations/tagDQN/Convolution_4/Relu*
T0*
_output_shapes
: 
i
DQN/Flatten/ShapeShapeDQN/Convolution_4/Conv2D*
T0*
out_type0*
_output_shapes
:
i
DQN/Flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!DQN/Flatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
k
!DQN/Flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ľ
DQN/Flatten/strided_sliceStridedSliceDQN/Flatten/ShapeDQN/Flatten/strided_slice/stack!DQN/Flatten/strided_slice/stack_1!DQN/Flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
f
DQN/Flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

DQN/Flatten/Reshape/shapePackDQN/Flatten/strided_sliceDQN/Flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

DQN/Flatten/ReshapeReshapeDQN/Convolution_4/Conv2DDQN/Flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
9DQN/FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
_class
loc:@DQN/FullyConnected_1/W*
valueB"      
¨
8DQN/FullyConnected_1/W/Initializer/truncated_normal/meanConst*)
_class
loc:@DQN/FullyConnected_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ş
:DQN/FullyConnected_1/W/Initializer/truncated_normal/stddevConst*)
_class
loc:@DQN/FullyConnected_1/W*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

CDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9DQN/FullyConnected_1/W/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*)
_class
loc:@DQN/FullyConnected_1/W*
seed2 

7DQN/FullyConnected_1/W/Initializer/truncated_normal/mulMulCDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal:DQN/FullyConnected_1/W/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*)
_class
loc:@DQN/FullyConnected_1/W

3DQN/FullyConnected_1/W/Initializer/truncated_normalAdd7DQN/FullyConnected_1/W/Initializer/truncated_normal/mul8DQN/FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

š
DQN/FullyConnected_1/W
VariableV2*
shared_name *)
_class
loc:@DQN/FullyConnected_1/W*
	container *
shape:
*
dtype0* 
_output_shapes
:

ó
DQN/FullyConnected_1/W/AssignAssignDQN/FullyConnected_1/W3DQN/FullyConnected_1/W/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/W

DQN/FullyConnected_1/W/readIdentityDQN/FullyConnected_1/W*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

˘
(DQN/FullyConnected_1/B/Initializer/ConstConst*)
_class
loc:@DQN/FullyConnected_1/B*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:
Ż
DQN/FullyConnected_1/B
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *)
_class
loc:@DQN/FullyConnected_1/B*
	container *
shape:
ă
DQN/FullyConnected_1/B/AssignAssignDQN/FullyConnected_1/B(DQN/FullyConnected_1/B/Initializer/Const*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:

DQN/FullyConnected_1/B/readIdentityDQN/FullyConnected_1/B*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
_output_shapes	
:
°
DQN/FullyConnected_1/MatMulMatMulDQN/Flatten/ReshapeDQN/FullyConnected_1/W/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 

DQN/FullyConnected_1/addAddDQN/FullyConnected_1/MatMulDQN/FullyConnected_1/B/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
DQN/FullyConnected_1/ReluReluDQN/FullyConnected_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
 DQN/FullyConnected_1/Weights/tagConst*-
value$B" BDQN/FullyConnected_1/Weights*
dtype0*
_output_shapes
: 

DQN/FullyConnected_1/WeightsHistogramSummary DQN/FullyConnected_1/Weights/tagDQN/FullyConnected_1/W/read*
T0*
_output_shapes
: 
{
DQN/FullyConnected_1/Biases/tagConst*,
value#B! BDQN/FullyConnected_1/Biases*
dtype0*
_output_shapes
: 

DQN/FullyConnected_1/BiasesHistogramSummaryDQN/FullyConnected_1/Biases/tagDQN/FullyConnected_1/B/read*
T0*
_output_shapes
: 

$DQN/FullyConnected_1/Activations/tagConst*1
value(B& B DQN/FullyConnected_1/Activations*
dtype0*
_output_shapes
: 

 DQN/FullyConnected_1/ActivationsHistogramSummary$DQN/FullyConnected_1/Activations/tagDQN/FullyConnected_1/Relu*
T0*
_output_shapes
: 
ľ
9DQN/FullyConnected_2/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
_class
loc:@DQN/FullyConnected_2/W*
valueB"   	   
¨
8DQN/FullyConnected_2/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *)
_class
loc:@DQN/FullyConnected_2/W*
valueB
 *    
Ş
:DQN/FullyConnected_2/W/Initializer/truncated_normal/stddevConst*)
_class
loc:@DQN/FullyConnected_2/W*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

CDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9DQN/FullyConnected_2/W/Initializer/truncated_normal/shape*

seed *
T0*)
_class
loc:@DQN/FullyConnected_2/W*
seed2 *
dtype0*
_output_shapes
:		

7DQN/FullyConnected_2/W/Initializer/truncated_normal/mulMulCDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal:DQN/FullyConnected_2/W/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		

3DQN/FullyConnected_2/W/Initializer/truncated_normalAdd7DQN/FullyConnected_2/W/Initializer/truncated_normal/mul8DQN/FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		
ˇ
DQN/FullyConnected_2/W
VariableV2*
	container *
shape:		*
dtype0*
_output_shapes
:		*
shared_name *)
_class
loc:@DQN/FullyConnected_2/W
ň
DQN/FullyConnected_2/W/AssignAssignDQN/FullyConnected_2/W3DQN/FullyConnected_2/W/Initializer/truncated_normal*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		

DQN/FullyConnected_2/W/readIdentityDQN/FullyConnected_2/W*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
_output_shapes
:		
 
(DQN/FullyConnected_2/B/Initializer/ConstConst*)
_class
loc:@DQN/FullyConnected_2/B*
valueB	*ÍĚĚ=*
dtype0*
_output_shapes
:	
­
DQN/FullyConnected_2/B
VariableV2*
shared_name *)
_class
loc:@DQN/FullyConnected_2/B*
	container *
shape:	*
dtype0*
_output_shapes
:	
â
DQN/FullyConnected_2/B/AssignAssignDQN/FullyConnected_2/B(DQN/FullyConnected_2/B/Initializer/Const*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/B

DQN/FullyConnected_2/B/readIdentityDQN/FullyConnected_2/B*
T0*)
_class
loc:@DQN/FullyConnected_2/B*
_output_shapes
:	
ľ
DQN/FullyConnected_2/MatMulMatMulDQN/FullyConnected_1/ReluDQN/FullyConnected_2/W/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙	

DQN/FullyConnected_2/addAddDQN/FullyConnected_2/MatMulDQN/FullyConnected_2/B/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
}
 DQN/FullyConnected_2/Weights/tagConst*-
value$B" BDQN/FullyConnected_2/Weights*
dtype0*
_output_shapes
: 

DQN/FullyConnected_2/WeightsHistogramSummary DQN/FullyConnected_2/Weights/tagDQN/FullyConnected_2/W/read*
T0*
_output_shapes
: 
{
DQN/FullyConnected_2/Biases/tagConst*,
value#B! BDQN/FullyConnected_2/Biases*
dtype0*
_output_shapes
: 

DQN/FullyConnected_2/BiasesHistogramSummaryDQN/FullyConnected_2/Biases/tagDQN/FullyConnected_2/B/read*
T0*
_output_shapes
: 

$DQN/FullyConnected_2/Activations/tagConst*1
value(B& B DQN/FullyConnected_2/Activations*
dtype0*
_output_shapes
: 

 DQN/FullyConnected_2/ActivationsHistogramSummary$DQN/FullyConnected_2/Activations/tagDQN/FullyConnected_2/add*
_output_shapes
: *
T0
V
DQN/Loss/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
V
DQN/Loss/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

DQN/Loss/rangeRangeDQN/Loss/range/startDQN/Inputs/strided_sliceDQN/Loss/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
f
DQN/Loss/ShapeShapeDQN/FullyConnected_2/add*
T0*
out_type0*
_output_shapes
:
f
DQN/Loss/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
h
DQN/Loss/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
DQN/Loss/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ś
DQN/Loss/strided_sliceStridedSliceDQN/Loss/ShapeDQN/Loss/strided_slice/stackDQN/Loss/strided_slice/stack_1DQN/Loss/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
i
DQN/Loss/mulMulDQN/Loss/rangeDQN/Loss/strided_slice*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
DQN/Loss/addAddDQN/Loss/mulDQN/Inputs/Actions*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
DQN/Loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

DQN/Loss/ReshapeReshapeDQN/FullyConnected_2/addDQN/Loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
DQN/Loss/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¸
DQN/Loss/GatherV2GatherV2DQN/Loss/ReshapeDQN/Loss/addDQN/Loss/GatherV2/axis*
Tparams0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*

batch_dims *
Tindices0
t
DQN/Loss/huber_loss/SubSubDQN/Loss/GatherV2DQN/Inputs/TDTarget*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
DQN/Loss/huber_loss/AbsAbsDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
DQN/Loss/huber_loss/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

DQN/Loss/huber_loss/MinimumMinimumDQN/Loss/huber_loss/AbsDQN/Loss/huber_loss/Minimum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

DQN/Loss/huber_loss/Sub_1SubDQN/Loss/huber_loss/AbsDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
DQN/Loss/huber_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *   ?

DQN/Loss/huber_loss/MulMulDQN/Loss/huber_loss/MinimumDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

DQN/Loss/huber_loss/Mul_1MulDQN/Loss/huber_loss/ConstDQN/Loss/huber_loss/Mul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
DQN/Loss/huber_loss/Mul_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

DQN/Loss/huber_loss/Mul_2MulDQN/Loss/huber_loss/Mul_2/xDQN/Loss/huber_loss/Sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

DQN/Loss/huber_loss/AddAddDQN/Loss/huber_loss/Mul_1DQN/Loss/huber_loss/Mul_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
0DQN/Loss/huber_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
6DQN/Loss/huber_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
w
5DQN/Loss/huber_loss/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 

5DQN/Loss/huber_loss/assert_broadcastable/values/shapeShapeDQN/Loss/huber_loss/Add*
T0*
out_type0*
_output_shapes
:
v
4DQN/Loss/huber_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
L
DDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successNoOp
Ś
DQN/Loss/huber_loss/Cast/xConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

DQN/Loss/huber_loss/Mul_3MulDQN/Loss/huber_loss/AddDQN/Loss/huber_loss/Cast/x*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ź
DQN/Loss/huber_loss/Const_1ConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB: 

DQN/Loss/huber_loss/SumSumDQN/Loss/huber_loss/Mul_3DQN/Loss/huber_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ł
'DQN/Loss/huber_loss/num_present/Equal/yConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

%DQN/Loss/huber_loss/num_present/EqualEqualDQN/Loss/huber_loss/Cast/x'DQN/Loss/huber_loss/num_present/Equal/y*
_output_shapes
: *
T0
ś
*DQN/Loss/huber_loss/num_present/zeros_likeConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
š
/DQN/Loss/huber_loss/num_present/ones_like/ShapeConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
ť
/DQN/Loss/huber_loss/num_present/ones_like/ConstConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ć
)DQN/Loss/huber_loss/num_present/ones_likeFill/DQN/Loss/huber_loss/num_present/ones_like/Shape/DQN/Loss/huber_loss/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Ď
&DQN/Loss/huber_loss/num_present/SelectSelect%DQN/Loss/huber_loss/num_present/Equal*DQN/Loss/huber_loss/num_present/zeros_like)DQN/Loss/huber_loss/num_present/ones_like*
T0*
_output_shapes
: 
Ţ
TDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
Ü
SDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ń
SDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeDQN/Loss/huber_loss/AddE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ű
RDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
value	B :
ą
bDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success
Ä
ADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeShapeDQN/Loss/huber_loss/AddE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successc^DQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
˛
ADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ConstConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successc^DQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

;DQN/Loss/huber_loss/num_present/broadcast_weights/ones_likeFillADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeADQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0
Ë
1DQN/Loss/huber_loss/num_present/broadcast_weightsMul&DQN/Loss/huber_loss/num_present/Select;DQN/Loss/huber_loss/num_present/broadcast_weights/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ś
%DQN/Loss/huber_loss/num_present/ConstConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ž
DQN/Loss/huber_loss/num_presentSum1DQN/Loss/huber_loss/num_present/broadcast_weights%DQN/Loss/huber_loss/num_present/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Ľ
DQN/Loss/huber_loss/Const_2ConstE^DQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 

DQN/Loss/huber_loss/Sum_1SumDQN/Loss/huber_loss/SumDQN/Loss/huber_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 

DQN/Loss/huber_loss/valueDivNoNanDQN/Loss/huber_loss/Sum_1DQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
Q
DQN/Loss/ConstConst*
valueB *
dtype0*
_output_shapes
: 
~
DQN/Loss/MeanMeanDQN/Loss/huber_loss/valueDQN/Loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
`
DQN/Loss/Loss/tagsConst*
valueB BDQN/Loss/Loss*
dtype0*
_output_shapes
: 
b
DQN/Loss/LossScalarSummaryDQN/Loss/Loss/tagsDQN/Loss/Mean*
T0*
_output_shapes
: 
`
DQN/Optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
f
!DQN/Optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 

DQN/Optimizer/gradients/FillFillDQN/Optimizer/gradients/Shape!DQN/Optimizer/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
{
8DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Ä
2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/ReshapeReshapeDQN/Optimizer/gradients/Fill8DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0
s
0DQN/Optimizer/gradients/DQN/Loss/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Đ
/DQN/Optimizer/gradients/DQN/Loss/Mean_grad/TileTile2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Reshape0DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
w
2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/truedivRealDiv/DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Tile2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/Const_1*
T0*
_output_shapes
: 

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ă
ADQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nanDivNoNan2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/truedivDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/SumSumADQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nanLDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ň
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
}
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/NegNegDQN/Loss/huber_loss/Sum_1*
T0*
_output_shapes
: 
Í
CDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_1DivNoNan:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/NegDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
Ö
CDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_2DivNoNanCDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_1DQN/Loss/huber_loss/num_present*
_output_shapes
: *
T0
Ű
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/mulMul2DQN/Optimizer/gradients/DQN/Loss/Mean_grad/truedivCDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/div_no_nan_2*
_output_shapes
: *
T0

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Sum_1Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/mulNDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ř
@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1
Ů
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape*
_output_shapes
: 
ß
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/Reshape_1

DDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/ReshapeReshapeODQN/Optimizer/gradients/DQN/Loss/huber_loss/value_grad/tuple/control_dependencyDDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ô
;DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/TileTile>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 

BDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
ű
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/ReshapeReshape;DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_1_grad/TileBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/ShapeShapeDQN/Loss/huber_loss/Mul_3*
T0*
out_type0*
_output_shapes
:
ű
9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/TileTile<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ShapeShapeDQN/Loss/huber_loss/Add*
T0*
out_type0*
_output_shapes
:

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ć
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/MulMul9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/TileDQN/Loss/huber_loss/Cast/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/SumSum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/MulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ĺ
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Mul_1MulDQN/Loss/huber_loss/Add9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sum_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Sum_1Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Mul_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ř
@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1
ć
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/Reshape_1*
_output_shapes
: 

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/ShapeShapeDQN/Loss/huber_loss/Mul_1*
T0*
out_type0*
_output_shapes
:

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape_1ShapeDQN/Loss/huber_loss/Mul_2*
T0*
out_type0*
_output_shapes
:

JDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/BroadcastGradientArgsBroadcastGradientArgs:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/SumSumODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyJDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ů
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/ReshapeReshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Sum_1SumODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Sum_1<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Í
EDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/group_depsNoOp=^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1
Ţ
MDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependencyIdentity<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/ReshapeF^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/group_deps*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1Identity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1F^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape_1ShapeDQN/Loss/huber_loss/Mul*
T0*
out_type0*
_output_shapes
:
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
×
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/MulMulMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependencyDQN/Loss/huber_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/SumSum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/MulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ň
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ű
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Mul_1MulDQN/Loss/huber_loss/ConstMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Sum_1Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Mul_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1
Ů
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape*
_output_shapes
: 
ě
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/Reshape_1

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape_1ShapeDQN/Loss/huber_loss/Sub_1*
T0*
out_type0*
_output_shapes
:
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ű
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/MulMulODQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1DQN/Loss/huber_loss/Sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/SumSum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/MulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ň
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Mul_1MulDQN/Loss/huber_loss/Mul_2/xODQN/Optimizer/gradients/DQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Sum_1Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Mul_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1Reshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Sum_1>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1
Ů
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape*
_output_shapes
: 
ě
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/ShapeShapeDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape_1ShapeDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:

JDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ý
8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/MulMulQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1DQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/SumSum8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/MulJDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ů
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/ReshapeReshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Mul_1MulDQN/Loss/huber_loss/MinimumQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Sum_1Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Mul_1LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Sum_1<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
EDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/group_depsNoOp=^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1
Ţ
MDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependencyIdentity<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/ReshapeF^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape
ä
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1Identity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1F^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape_1

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ShapeShapeDQN/Loss/huber_loss/Abs*
T0*
out_type0*
_output_shapes
:

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape_1ShapeDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:
 
LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˘
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/SumSumQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1LDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
˙
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ReshapeReshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Sum<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ś
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Sum_1SumQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
˘
:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/NegNeg<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Sum_1*
T0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1Reshape:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Neg>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ó
GDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/group_depsNoOp?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ReshapeA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1
ć
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependencyIdentity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/ReshapeH^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1Identity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1H^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape_1

DQN/Optimizer/gradients/AddNAddNMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependencyODQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Mul_grad/Reshape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ShapeShapeDQN/Loss/huber_loss/Abs*
T0*
out_type0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_2ShapeDQN/Optimizer/gradients/AddN*
T0*
out_type0*
_output_shapes
:

DDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zerosFill@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_2DDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zeros/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
BDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/LessEqual	LessEqualDQN/Loss/huber_loss/AbsDQN/Loss/huber_loss/Minimum/y*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ś
NDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

?DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/SelectSelectBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/LessEqualDQN/Optimizer/gradients/AddN>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zeros*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/SumSum?DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/SelectNDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ReshapeReshape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Sum>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

ADQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Select_1SelectBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/LessEqual>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/zerosDQN/Optimizer/gradients/AddN*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Sum_1SumADQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Select_1PDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ţ
BDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1Reshape>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Sum_1@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ů
IDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/group_depsNoOpA^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ReshapeC^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1
î
QDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/control_dependencyIdentity@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/ReshapeJ^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*S
_classI
GEloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
SDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency_1IdentityBDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1J^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*U
_classK
IGloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/Reshape_1*
_output_shapes
: 
Ô
DQN/Optimizer/gradients/AddN_1AddNODQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependencyQDQN/Optimizer/gradients/DQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_1_grad/Reshape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/SignSignDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/mulMulDQN/Optimizer/gradients/AddN_19DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/Sign*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/ShapeShapeDQN/Loss/GatherV2*
T0*
out_type0*
_output_shapes
:

<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape_1ShapeDQN/Inputs/TDTarget*
_output_shapes
:*
T0*
out_type0

JDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgsBroadcastGradientArgs:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/SumSum8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/mulJDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ů
<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/ReshapeReshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Sum:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Sum_1Sum8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Abs_grad/mulLDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/NegNeg:DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Sum_1*
_output_shapes
:*
T0
ý
>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1Reshape8DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Neg<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
EDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/group_depsNoOp=^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape?^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1
Ţ
MDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/control_dependencyIdentity<DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/ReshapeF^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/group_deps*
T0*O
_classE
CAloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
ODQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/control_dependency_1Identity>DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1F^DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@DQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
4DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ShapeShapeDQN/Loss/Reshape*
T0*#
_class
loc:@DQN/Loss/Reshape*
out_type0	*
_output_shapes
:
Ú
3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/CastCast4DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Shape*

SrcT0	*#
_class
loc:@DQN/Loss/Reshape*
Truncate( *

DstT0*
_output_shapes
:
z
3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/SizeSizeDQN/Loss/add*
_output_shapes
: *
T0*
out_type0

=DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ě
9DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims
ExpandDims3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Size=DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:

BDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

DDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

DDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ĺ
<DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_sliceStridedSlice3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/CastBDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stackDDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_1DDQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0
|
:DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
°
5DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concatConcatV29DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims<DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/strided_slice:DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

6DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ReshapeReshapeMDQN/Optimizer/gradients/DQN/Loss/huber_loss/Sub_grad/tuple/control_dependency5DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/concat*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
8DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Reshape_1ReshapeDQN/Loss/add9DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/ExpandDims*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

3DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ShapeShapeDQN/FullyConnected_2/add*
_output_shapes
:*
T0*
out_type0

IDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
˙
CDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_sliceStridedSlice3DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/CastIDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stackKDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1KDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ű
<DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/tensorUnsortedSegmentSum6DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Reshape8DQN/Optimizer/gradients/DQN/Loss/GatherV2_grad/Reshape_1CDQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
5DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ReshapeReshape<DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Reshape/tensor3DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0*
Tshape0

;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/ShapeShapeDQN/FullyConnected_2/MatMul*
T0*
out_type0*
_output_shapes
:

=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape_1Const*
valueB:	*
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

9DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/SumSum5DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ReshapeKDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/ReshapeReshape9DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Sum;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	

;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Sum_1Sum5DQN/Optimizer/gradients/DQN/Loss/Reshape_grad/ReshapeMDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ů
?DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1Reshape;DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Sum_1=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	
Đ
FDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/group_depsNoOp>^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape@^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1
ć
NDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependencyIdentity=DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/ReshapeG^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*P
_classF
DBloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
ß
PDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependency_1Identity?DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1G^DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/Reshape_1*
_output_shapes
:	

?DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMulMatMulNDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependencyDQN/FullyConnected_2/W/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

ADQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1MatMulDQN/FullyConnected_1/ReluNDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:		*
transpose_b( 
×
IDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/group_depsNoOp@^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMulB^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1
ń
QDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyIdentity?DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMulJ^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
SDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1IdentityADQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1J^DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
_output_shapes
:		*
T0*T
_classJ
HFloc:@DQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/MatMul_1
ě
?DQN/Optimizer/gradients/DQN/FullyConnected_1/Relu_grad/ReluGradReluGradQDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyDQN/FullyConnected_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/ShapeShapeDQN/FullyConnected_1/MatMul*
T0*
out_type0*
_output_shapes
:

=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:

KDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

9DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/SumSum?DQN/Optimizer/gradients/DQN/FullyConnected_1/Relu_grad/ReluGradKDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/ReshapeReshape9DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Sum;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Sum_1Sum?DQN/Optimizer/gradients/DQN/FullyConnected_1/Relu_grad/ReluGradMDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ú
?DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1Reshape;DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Sum_1=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
Đ
FDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/group_depsNoOp>^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape@^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1
ç
NDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependencyIdentity=DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/ReshapeG^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*P
_classF
DBloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape
ŕ
PDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependency_1Identity?DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1G^DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/group_deps*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/Reshape_1*
_output_shapes	
:

?DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMulMatMulNDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependencyDQN/FullyConnected_1/W/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(

ADQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1MatMulDQN/Flatten/ReshapeNDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:

×
IDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/group_depsNoOp@^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMulB^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1
ń
QDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependencyIdentity?DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMulJ^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
SDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1IdentityADQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1J^DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*T
_classJ
HFloc:@DQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/MatMul_1

6DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/ShapeShapeDQN/Convolution_4/Conv2D*
T0*
out_type0*
_output_shapes
:

8DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/ReshapeReshapeQDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependency6DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
<DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/ShapeNShapeNDQN/Convolution_3/Conv2DDQN/Convolution_4/W/read*
N* 
_output_shapes
::*
T0*
out_type0
´
IDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/ShapeNDQN/Convolution_4/W/read8DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/Reshape*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
°
JDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Convolution_3/Conv2D>DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/ShapeN:18DQN/Optimizer/gradients/DQN/Flatten/Reshape_grad/Reshape*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*'
_output_shapes
:@
ç
FDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput

PDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/group_deps*
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@
ž
<DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/ShapeNShapeNDQN/Convolution_2/Conv2DDQN/Convolution_3/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
IDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/ShapeNDQN/Convolution_3/W/readNDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@
Ĺ
JDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Convolution_2/Conv2D>DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/ShapeN:1NDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:@@*
	dilations
*
T0
ç
FDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput

PDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/group_deps*&
_output_shapes
:@@*
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilter
ž
<DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/ShapeNShapeNDQN/Convolution_1/Conv2DDQN/Convolution_2/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
IDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/ShapeNDQN/Convolution_2/W/readNDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
Ĺ
JDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Convolution_1/Conv2D>DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/ShapeN:1NDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
ç
FDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/group_deps*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

PDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/group_deps*
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
¸
<DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/ShapeNShapeNDQN/Inputs/ReshapeDQN/Convolution_1/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
IDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/ShapeNDQN/Convolution_1/W/readNDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
ż
JDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterDQN/Inputs/Reshape>DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/ShapeN:1NDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
ç
FDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/group_depsNoOpK^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterJ^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput

NDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/control_dependencyIdentityIDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputG^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/group_deps*
T0*\
_classR
PNloc:@DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT

PDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1IdentityJDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterG^DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/group_deps*
T0*]
_classS
QOloc:@DQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
Á
@DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*%
valueB"             *&
_class
loc:@DQN/Convolution_1/W*
dtype0*
_output_shapes
:
Ł
6DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*&
_class
loc:@DQN/Convolution_1/W*
dtype0*
_output_shapes
: 

0DQN/DQN/Convolution_1/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
Ë
DQN/DQN/Convolution_1/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *&
_class
loc:@DQN/Convolution_1/W*
	container *
shape: 

&DQN/DQN/Convolution_1/W/RMSProp/AssignAssignDQN/DQN/Convolution_1/W/RMSProp0DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 
Ş
$DQN/DQN/Convolution_1/W/RMSProp/readIdentityDQN/DQN/Convolution_1/W/RMSProp*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
Ä
CDQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *&
_class
loc:@DQN/Convolution_1/W*
dtype0*
_output_shapes
:
Ś
9DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *&
_class
loc:@DQN/Convolution_1/W*
dtype0*
_output_shapes
: 
Ś
3DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros/Const*&
_output_shapes
: *
T0*

index_type0*&
_class
loc:@DQN/Convolution_1/W
Í
!DQN/DQN/Convolution_1/W/RMSProp_1
VariableV2*&
_class
loc:@DQN/Convolution_1/W*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 

(DQN/DQN/Convolution_1/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_1/W/RMSProp_13DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*&
_class
loc:@DQN/Convolution_1/W
Ž
&DQN/DQN/Convolution_1/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_1/W/RMSProp_1*
T0*&
_class
loc:@DQN/Convolution_1/W*&
_output_shapes
: 
Á
@DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*%
valueB"          @   *&
_class
loc:@DQN/Convolution_2/W*
dtype0*
_output_shapes
:
Ł
6DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*&
_class
loc:@DQN/Convolution_2/W

0DQN/DQN/Convolution_2/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones/Const*&
_output_shapes
: @*
T0*

index_type0*&
_class
loc:@DQN/Convolution_2/W
Ë
DQN/DQN/Convolution_2/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *&
_class
loc:@DQN/Convolution_2/W*
	container *
shape: @

&DQN/DQN/Convolution_2/W/RMSProp/AssignAssignDQN/DQN/Convolution_2/W/RMSProp0DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones*
T0*&
_class
loc:@DQN/Convolution_2/W*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ş
$DQN/DQN/Convolution_2/W/RMSProp/readIdentityDQN/DQN/Convolution_2/W/RMSProp*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
Ä
CDQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *&
_class
loc:@DQN/Convolution_2/W*
dtype0*
_output_shapes
:
Ś
9DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *&
_class
loc:@DQN/Convolution_2/W
Ś
3DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
Í
!DQN/DQN/Convolution_2/W/RMSProp_1
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_2/W*
	container *
shape: @*
dtype0*&
_output_shapes
: @

(DQN/DQN/Convolution_2/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_2/W/RMSProp_13DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_2/W*
validate_shape(*&
_output_shapes
: @
Ž
&DQN/DQN/Convolution_2/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_2/W/RMSProp_1*
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
Á
@DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensorConst*%
valueB"      @   @   *&
_class
loc:@DQN/Convolution_3/W*
dtype0*
_output_shapes
:
Ł
6DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*&
_class
loc:@DQN/Convolution_3/W*
dtype0*
_output_shapes
: 

0DQN/DQN/Convolution_3/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
Ë
DQN/DQN/Convolution_3/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *&
_class
loc:@DQN/Convolution_3/W*
	container *
shape:@@

&DQN/DQN/Convolution_3/W/RMSProp/AssignAssignDQN/DQN/Convolution_3/W/RMSProp0DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@
Ş
$DQN/DQN/Convolution_3/W/RMSProp/readIdentityDQN/DQN/Convolution_3/W/RMSProp*
T0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
Ä
CDQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   *&
_class
loc:@DQN/Convolution_3/W
Ś
9DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *&
_class
loc:@DQN/Convolution_3/W*
dtype0*
_output_shapes
: 
Ś
3DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@DQN/Convolution_3/W*&
_output_shapes
:@@
Í
!DQN/DQN/Convolution_3/W/RMSProp_1
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *&
_class
loc:@DQN/Convolution_3/W*
	container *
shape:@@

(DQN/DQN/Convolution_3/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_3/W/RMSProp_13DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_3/W
Ž
&DQN/DQN/Convolution_3/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_3/W/RMSProp_1*&
_output_shapes
:@@*
T0*&
_class
loc:@DQN/Convolution_3/W
Á
@DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensorConst*%
valueB"      @      *&
_class
loc:@DQN/Convolution_4/W*
dtype0*
_output_shapes
:
Ł
6DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*&
_class
loc:@DQN/Convolution_4/W

0DQN/DQN/Convolution_4/W/RMSProp/Initializer/onesFill@DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensor6DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
Í
DQN/DQN/Convolution_4/W/RMSProp
VariableV2*
shared_name *&
_class
loc:@DQN/Convolution_4/W*
	container *
shape:@*
dtype0*'
_output_shapes
:@

&DQN/DQN/Convolution_4/W/RMSProp/AssignAssignDQN/DQN/Convolution_4/W/RMSProp0DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@
Ť
$DQN/DQN/Convolution_4/W/RMSProp/readIdentityDQN/DQN/Convolution_4/W/RMSProp*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
Ä
CDQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @      *&
_class
loc:@DQN/Convolution_4/W*
dtype0*
_output_shapes
:
Ś
9DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *&
_class
loc:@DQN/Convolution_4/W*
dtype0*
_output_shapes
: 
§
3DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zerosFillCDQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensor9DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
Ď
!DQN/DQN/Convolution_4/W/RMSProp_1
VariableV2*
dtype0*'
_output_shapes
:@*
shared_name *&
_class
loc:@DQN/Convolution_4/W*
	container *
shape:@

(DQN/DQN/Convolution_4/W/RMSProp_1/AssignAssign!DQN/DQN/Convolution_4/W/RMSProp_13DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@DQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@
Ż
&DQN/DQN/Convolution_4/W/RMSProp_1/readIdentity!DQN/DQN/Convolution_4/W/RMSProp_1*
T0*&
_class
loc:@DQN/Convolution_4/W*'
_output_shapes
:@
ż
CDQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*
valueB"      *)
_class
loc:@DQN/FullyConnected_1/W*
dtype0*
_output_shapes
:
Š
9DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*)
_class
loc:@DQN/FullyConnected_1/W*
dtype0*
_output_shapes
: 
Ł
3DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/onesFillCDQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensor9DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

Ĺ
"DQN/DQN/FullyConnected_1/W/RMSProp
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@DQN/FullyConnected_1/W*
	container *
shape:


)DQN/DQN/FullyConnected_1/W/RMSProp/AssignAssign"DQN/DQN/FullyConnected_1/W/RMSProp3DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/W
­
'DQN/DQN/FullyConnected_1/W/RMSProp/readIdentity"DQN/DQN/FullyConnected_1/W/RMSProp*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

Â
FDQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *)
_class
loc:@DQN/FullyConnected_1/W*
dtype0*
_output_shapes
:
Ź
<DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *)
_class
loc:@DQN/FullyConnected_1/W*
dtype0*
_output_shapes
: 
Ź
6DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zerosFillFDQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensor<DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

Ç
$DQN/DQN/FullyConnected_1/W/RMSProp_1
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@DQN/FullyConnected_1/W*
	container *
shape:


+DQN/DQN/FullyConnected_1/W/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_1/W/RMSProp_16DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/W*
validate_shape(* 
_output_shapes
:

ą
)DQN/DQN/FullyConnected_1/W/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_1/W/RMSProp_1*
T0*)
_class
loc:@DQN/FullyConnected_1/W* 
_output_shapes
:

š
CDQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*)
_class
loc:@DQN/FullyConnected_1/B
Š
9DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*)
_class
loc:@DQN/FullyConnected_1/B*
dtype0*
_output_shapes
: 

3DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/onesFillCDQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensor9DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones/Const*
_output_shapes	
:*
T0*

index_type0*)
_class
loc:@DQN/FullyConnected_1/B
ť
"DQN/DQN/FullyConnected_1/B/RMSProp
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *)
_class
loc:@DQN/FullyConnected_1/B*
	container *
shape:

)DQN/DQN/FullyConnected_1/B/RMSProp/AssignAssign"DQN/DQN/FullyConnected_1/B/RMSProp3DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:*
use_locking(
¨
'DQN/DQN/FullyConnected_1/B/RMSProp/readIdentity"DQN/DQN/FullyConnected_1/B/RMSProp*
_output_shapes	
:*
T0*)
_class
loc:@DQN/FullyConnected_1/B
ź
FDQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
valueB:*)
_class
loc:@DQN/FullyConnected_1/B*
dtype0*
_output_shapes
:
Ź
<DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *)
_class
loc:@DQN/FullyConnected_1/B*
dtype0*
_output_shapes
: 
§
6DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zerosFillFDQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensor<DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@DQN/FullyConnected_1/B*
_output_shapes	
:
˝
$DQN/DQN/FullyConnected_1/B/RMSProp_1
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *)
_class
loc:@DQN/FullyConnected_1/B*
	container 

+DQN/DQN/FullyConnected_1/B/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_1/B/RMSProp_16DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:
Ź
)DQN/DQN/FullyConnected_1/B/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_1/B/RMSProp_1*
T0*)
_class
loc:@DQN/FullyConnected_1/B*
_output_shapes	
:
ż
CDQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*
valueB"   	   *)
_class
loc:@DQN/FullyConnected_2/W*
dtype0*
_output_shapes
:
Š
9DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*)
_class
loc:@DQN/FullyConnected_2/W*
dtype0*
_output_shapes
: 
˘
3DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/onesFillCDQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensor9DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones/Const*
_output_shapes
:		*
T0*

index_type0*)
_class
loc:@DQN/FullyConnected_2/W
Ă
"DQN/DQN/FullyConnected_2/W/RMSProp
VariableV2*
dtype0*
_output_shapes
:		*
shared_name *)
_class
loc:@DQN/FullyConnected_2/W*
	container *
shape:		

)DQN/DQN/FullyConnected_2/W/RMSProp/AssignAssign"DQN/DQN/FullyConnected_2/W/RMSProp3DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones*
T0*)
_class
loc:@DQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		*
use_locking(
Ź
'DQN/DQN/FullyConnected_2/W/RMSProp/readIdentity"DQN/DQN/FullyConnected_2/W/RMSProp*
_output_shapes
:		*
T0*)
_class
loc:@DQN/FullyConnected_2/W
Â
FDQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
valueB"   	   *)
_class
loc:@DQN/FullyConnected_2/W*
dtype0*
_output_shapes
:
Ź
<DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *)
_class
loc:@DQN/FullyConnected_2/W*
dtype0*
_output_shapes
: 
Ť
6DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zerosFillFDQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensor<DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/Const*
_output_shapes
:		*
T0*

index_type0*)
_class
loc:@DQN/FullyConnected_2/W
Ĺ
$DQN/DQN/FullyConnected_2/W/RMSProp_1
VariableV2*
	container *
shape:		*
dtype0*
_output_shapes
:		*
shared_name *)
_class
loc:@DQN/FullyConnected_2/W

+DQN/DQN/FullyConnected_2/W/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_2/W/RMSProp_16DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros*
validate_shape(*
_output_shapes
:		*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/W
°
)DQN/DQN/FullyConnected_2/W/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_2/W/RMSProp_1*
_output_shapes
:		*
T0*)
_class
loc:@DQN/FullyConnected_2/W
Ť
3DQN/DQN/FullyConnected_2/B/RMSProp/Initializer/onesConst*
valueB	*  ?*)
_class
loc:@DQN/FullyConnected_2/B*
dtype0*
_output_shapes
:	
š
"DQN/DQN/FullyConnected_2/B/RMSProp
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *)
_class
loc:@DQN/FullyConnected_2/B*
	container *
shape:	

)DQN/DQN/FullyConnected_2/B/RMSProp/AssignAssign"DQN/DQN/FullyConnected_2/B/RMSProp3DQN/DQN/FullyConnected_2/B/RMSProp/Initializer/ones*
T0*)
_class
loc:@DQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	*
use_locking(
§
'DQN/DQN/FullyConnected_2/B/RMSProp/readIdentity"DQN/DQN/FullyConnected_2/B/RMSProp*
_output_shapes
:	*
T0*)
_class
loc:@DQN/FullyConnected_2/B
Ž
6DQN/DQN/FullyConnected_2/B/RMSProp_1/Initializer/zerosConst*
valueB	*    *)
_class
loc:@DQN/FullyConnected_2/B*
dtype0*
_output_shapes
:	
ť
$DQN/DQN/FullyConnected_2/B/RMSProp_1
VariableV2*
shape:	*
dtype0*
_output_shapes
:	*
shared_name *)
_class
loc:@DQN/FullyConnected_2/B*
	container 

+DQN/DQN/FullyConnected_2/B/RMSProp_1/AssignAssign$DQN/DQN/FullyConnected_2/B/RMSProp_16DQN/DQN/FullyConnected_2/B/RMSProp_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*)
_class
loc:@DQN/FullyConnected_2/B
Ť
)DQN/DQN/FullyConnected_2/B/RMSProp_1/readIdentity$DQN/DQN/FullyConnected_2/B/RMSProp_1*
_output_shapes
:	*
T0*)
_class
loc:@DQN/FullyConnected_2/B
h
#DQN/Optimizer/RMSProp/learning_rateConst*
valueB
 *o9*
dtype0*
_output_shapes
: 
`
DQN/Optimizer/RMSProp/decayConst*
dtype0*
_output_shapes
: *
valueB
 *¤p}?
c
DQN/Optimizer/RMSProp/momentumConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
DQN/Optimizer/RMSProp/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *˝75
ĺ
=DQN/Optimizer/RMSProp/update_DQN/Convolution_1/W/ApplyRMSPropApplyRMSPropDQN/Convolution_1/WDQN/DQN/Convolution_1/W/RMSProp!DQN/DQN/Convolution_1/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
: *
use_locking( *
T0*&
_class
loc:@DQN/Convolution_1/W
ĺ
=DQN/Optimizer/RMSProp/update_DQN/Convolution_2/W/ApplyRMSPropApplyRMSPropDQN/Convolution_2/WDQN/DQN/Convolution_2/W/RMSProp!DQN/DQN/Convolution_2/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@DQN/Convolution_2/W*&
_output_shapes
: @
ĺ
=DQN/Optimizer/RMSProp/update_DQN/Convolution_3/W/ApplyRMSPropApplyRMSPropDQN/Convolution_3/WDQN/DQN/Convolution_3/W/RMSProp!DQN/DQN/Convolution_3/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:@@*
use_locking( *
T0*&
_class
loc:@DQN/Convolution_3/W
ć
=DQN/Optimizer/RMSProp/update_DQN/Convolution_4/W/ApplyRMSPropApplyRMSPropDQN/Convolution_4/WDQN/DQN/Convolution_4/W/RMSProp!DQN/DQN/Convolution_4/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1*'
_output_shapes
:@*
use_locking( *
T0*&
_class
loc:@DQN/Convolution_4/W
ń
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/W/ApplyRMSPropApplyRMSPropDQN/FullyConnected_1/W"DQN/DQN/FullyConnected_1/W/RMSProp$DQN/DQN/FullyConnected_1/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonSDQN/Optimizer/gradients/DQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
*
use_locking( *
T0*)
_class
loc:@DQN/FullyConnected_1/W
é
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/B/ApplyRMSPropApplyRMSPropDQN/FullyConnected_1/B"DQN/DQN/FullyConnected_1/B/RMSProp$DQN/DQN/FullyConnected_1/B/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/FullyConnected_1/add_grad/tuple/control_dependency_1*
_output_shapes	
:*
use_locking( *
T0*)
_class
loc:@DQN/FullyConnected_1/B
đ
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/W/ApplyRMSPropApplyRMSPropDQN/FullyConnected_2/W"DQN/DQN/FullyConnected_2/W/RMSProp$DQN/DQN/FullyConnected_2/W/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonSDQN/Optimizer/gradients/DQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:		*
use_locking( *
T0*)
_class
loc:@DQN/FullyConnected_2/W
č
@DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/B/ApplyRMSPropApplyRMSPropDQN/FullyConnected_2/B"DQN/DQN/FullyConnected_2/B/RMSProp$DQN/DQN/FullyConnected_2/B/RMSProp_1#DQN/Optimizer/RMSProp/learning_rateDQN/Optimizer/RMSProp/decayDQN/Optimizer/RMSProp/momentumDQN/Optimizer/RMSProp/epsilonPDQN/Optimizer/gradients/DQN/FullyConnected_2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@DQN/FullyConnected_2/B*
_output_shapes
:	
Š
DQN/Optimizer/RMSPropNoOp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_1/W/ApplyRMSProp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_2/W/ApplyRMSProp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_3/W/ApplyRMSProp>^DQN/Optimizer/RMSProp/update_DQN/Convolution_4/W/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/B/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_1/W/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/B/ApplyRMSPropA^DQN/Optimizer/RMSProp/update_DQN/FullyConnected_2/W/ApplyRMSProp

TargetDQN/Inputs/InputsPlaceholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT*$
shape:˙˙˙˙˙˙˙˙˙TT
w
TargetDQN/Inputs/Reshape/shapeConst*%
valueB"˙˙˙˙T   T      *
dtype0*
_output_shapes
:
¤
TargetDQN/Inputs/ReshapeReshapeTargetDQN/Inputs/InputsTargetDQN/Inputs/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT
t
TargetDQN/Inputs/TDTargetPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
s
TargetDQN/Inputs/ActionsPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
m
TargetDQN/Inputs/ShapeShapeTargetDQN/Inputs/Inputs*
T0*
out_type0*
_output_shapes
:
n
$TargetDQN/Inputs/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
p
&TargetDQN/Inputs/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
p
&TargetDQN/Inputs/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Î
TargetDQN/Inputs/strided_sliceStridedSliceTargetDQN/Inputs/Shape$TargetDQN/Inputs/strided_slice/stack&TargetDQN/Inputs/strided_slice/stack_1&TargetDQN/Inputs/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ă
<TargetDQN/Convolution_1/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@TargetDQN/Convolution_1/W*%
valueB"             
Ž
;TargetDQN/Convolution_1/W/Initializer/truncated_normal/meanConst*,
_class"
 loc:@TargetDQN/Convolution_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
°
=TargetDQN/Convolution_1/W/Initializer/truncated_normal/stddevConst*,
_class"
 loc:@TargetDQN/Convolution_1/W*
valueB
 *ĘÍ=*
dtype0*
_output_shapes
: 

FTargetDQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_1/W/Initializer/truncated_normal/shape*

seed *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*
seed2 *
dtype0*&
_output_shapes
: 
§
:TargetDQN/Convolution_1/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_1/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_1/W/Initializer/truncated_normal/stddev*&
_output_shapes
: *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W

6TargetDQN/Convolution_1/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_1/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_1/W/Initializer/truncated_normal/mean*&
_output_shapes
: *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W
Ë
TargetDQN/Convolution_1/W
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/W*
	container *
shape: *
dtype0*&
_output_shapes
: 

 TargetDQN/Convolution_1/W/AssignAssignTargetDQN/Convolution_1/W6TargetDQN/Convolution_1/W/Initializer/truncated_normal*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 
¤
TargetDQN/Convolution_1/W/readIdentityTargetDQN/Convolution_1/W*&
_output_shapes
: *
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W
Ś
+TargetDQN/Convolution_1/B/Initializer/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_1/B*
valueB *ÍĚĚ=*
dtype0*
_output_shapes
: 
ł
TargetDQN/Convolution_1/B
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/B*
	container *
shape: *
dtype0*
_output_shapes
: 
î
 TargetDQN/Convolution_1/B/AssignAssignTargetDQN/Convolution_1/B+TargetDQN/Convolution_1/B/Initializer/Const*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/B*
validate_shape(*
_output_shapes
: *
use_locking(

TargetDQN/Convolution_1/B/readIdentityTargetDQN/Convolution_1/B*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/B*
_output_shapes
: 
¤
TargetDQN/Convolution_1/Conv2DConv2DTargetDQN/Inputs/ReshapeTargetDQN/Convolution_1/W/read*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 

TargetDQN/Convolution_1/addAddTargetDQN/Convolution_1/Conv2DTargetDQN/Convolution_1/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
{
TargetDQN/Convolution_1/ReluReluTargetDQN/Convolution_1/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ă
<TargetDQN/Convolution_2/W/Initializer/truncated_normal/shapeConst*,
_class"
 loc:@TargetDQN/Convolution_2/W*%
valueB"          @   *
dtype0*
_output_shapes
:
Ž
;TargetDQN/Convolution_2/W/Initializer/truncated_normal/meanConst*,
_class"
 loc:@TargetDQN/Convolution_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
°
=TargetDQN/Convolution_2/W/Initializer/truncated_normal/stddevConst*,
_class"
 loc:@TargetDQN/Convolution_2/W*
valueB
 *6=*
dtype0*
_output_shapes
: 

FTargetDQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_2/W/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*
seed2 
§
:TargetDQN/Convolution_2/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_2/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_2/W/Initializer/truncated_normal/stddev*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @

6TargetDQN/Convolution_2/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_2/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_2/W/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
Ë
TargetDQN/Convolution_2/W
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_2/W*
	container *
shape: @*
dtype0*&
_output_shapes
: @

 TargetDQN/Convolution_2/W/AssignAssignTargetDQN/Convolution_2/W6TargetDQN/Convolution_2/W/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W
¤
TargetDQN/Convolution_2/W/readIdentityTargetDQN/Convolution_2/W*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
Ś
+TargetDQN/Convolution_2/B/Initializer/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_2/B*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
ł
TargetDQN/Convolution_2/B
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_2/B*
	container *
shape:@
î
 TargetDQN/Convolution_2/B/AssignAssignTargetDQN/Convolution_2/B+TargetDQN/Convolution_2/B/Initializer/Const*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/B*
validate_shape(*
_output_shapes
:@*
use_locking(

TargetDQN/Convolution_2/B/readIdentityTargetDQN/Convolution_2/B*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/B*
_output_shapes
:@
Ş
TargetDQN/Convolution_2/Conv2DConv2DTargetDQN/Convolution_1/Conv2DTargetDQN/Convolution_2/W/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID

TargetDQN/Convolution_2/addAddTargetDQN/Convolution_2/Conv2DTargetDQN/Convolution_2/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@
{
TargetDQN/Convolution_2/ReluReluTargetDQN/Convolution_2/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@
Ă
<TargetDQN/Convolution_3/W/Initializer/truncated_normal/shapeConst*,
_class"
 loc:@TargetDQN/Convolution_3/W*%
valueB"      @   @   *
dtype0*
_output_shapes
:
Ž
;TargetDQN/Convolution_3/W/Initializer/truncated_normal/meanConst*,
_class"
 loc:@TargetDQN/Convolution_3/W*
valueB
 *    *
dtype0*
_output_shapes
: 
°
=TargetDQN/Convolution_3/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@TargetDQN/Convolution_3/W*
valueB
 *¸1=

FTargetDQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_3/W/Initializer/truncated_normal/shape*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
§
:TargetDQN/Convolution_3/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_3/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_3/W/Initializer/truncated_normal/stddev*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@

6TargetDQN/Convolution_3/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_3/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_3/W/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ë
TargetDQN/Convolution_3/W
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_3/W*
	container *
shape:@@

 TargetDQN/Convolution_3/W/AssignAssignTargetDQN/Convolution_3/W6TargetDQN/Convolution_3/W/Initializer/truncated_normal*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@
¤
TargetDQN/Convolution_3/W/readIdentityTargetDQN/Convolution_3/W*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ś
+TargetDQN/Convolution_3/B/Initializer/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_3/B*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
ł
TargetDQN/Convolution_3/B
VariableV2*,
_class"
 loc:@TargetDQN/Convolution_3/B*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
î
 TargetDQN/Convolution_3/B/AssignAssignTargetDQN/Convolution_3/B+TargetDQN/Convolution_3/B/Initializer/Const*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/B*
validate_shape(*
_output_shapes
:@

TargetDQN/Convolution_3/B/readIdentityTargetDQN/Convolution_3/B*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/B*
_output_shapes
:@
Ş
TargetDQN/Convolution_3/Conv2DConv2DTargetDQN/Convolution_2/Conv2DTargetDQN/Convolution_3/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

TargetDQN/Convolution_3/addAddTargetDQN/Convolution_3/Conv2DTargetDQN/Convolution_3/B/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
{
TargetDQN/Convolution_3/ReluReluTargetDQN/Convolution_3/add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ă
<TargetDQN/Convolution_4/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@TargetDQN/Convolution_4/W*%
valueB"      @      
Ž
;TargetDQN/Convolution_4/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@TargetDQN/Convolution_4/W*
valueB
 *    
°
=TargetDQN/Convolution_4/W/Initializer/truncated_normal/stddevConst*,
_class"
 loc:@TargetDQN/Convolution_4/W*
valueB
 *Ş0ë<*
dtype0*
_output_shapes
: 

FTargetDQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<TargetDQN/Convolution_4/W/Initializer/truncated_normal/shape*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*
seed2 *
dtype0*'
_output_shapes
:@*

seed 
¨
:TargetDQN/Convolution_4/W/Initializer/truncated_normal/mulMulFTargetDQN/Convolution_4/W/Initializer/truncated_normal/TruncatedNormal=TargetDQN/Convolution_4/W/Initializer/truncated_normal/stddev*'
_output_shapes
:@*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W

6TargetDQN/Convolution_4/W/Initializer/truncated_normalAdd:TargetDQN/Convolution_4/W/Initializer/truncated_normal/mul;TargetDQN/Convolution_4/W/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
Í
TargetDQN/Convolution_4/W
VariableV2*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_4/W*
	container *
shape:@*
dtype0*'
_output_shapes
:@

 TargetDQN/Convolution_4/W/AssignAssignTargetDQN/Convolution_4/W6TargetDQN/Convolution_4/W/Initializer/truncated_normal*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W
Ľ
TargetDQN/Convolution_4/W/readIdentityTargetDQN/Convolution_4/W*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
¨
+TargetDQN/Convolution_4/B/Initializer/ConstConst*,
_class"
 loc:@TargetDQN/Convolution_4/B*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:
ľ
TargetDQN/Convolution_4/B
VariableV2*,
_class"
 loc:@TargetDQN/Convolution_4/B*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ď
 TargetDQN/Convolution_4/B/AssignAssignTargetDQN/Convolution_4/B+TargetDQN/Convolution_4/B/Initializer/Const*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/B*
validate_shape(*
_output_shapes	
:

TargetDQN/Convolution_4/B/readIdentityTargetDQN/Convolution_4/B*
_output_shapes	
:*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/B
Ť
TargetDQN/Convolution_4/Conv2DConv2DTargetDQN/Convolution_3/Conv2DTargetDQN/Convolution_4/W/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations


TargetDQN/Convolution_4/addAddTargetDQN/Convolution_4/Conv2DTargetDQN/Convolution_4/B/read*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
TargetDQN/Convolution_4/ReluReluTargetDQN/Convolution_4/add*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
u
TargetDQN/Flatten/ShapeShapeTargetDQN/Convolution_4/Conv2D*
_output_shapes
:*
T0*
out_type0
o
%TargetDQN/Flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'TargetDQN/Flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'TargetDQN/Flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ó
TargetDQN/Flatten/strided_sliceStridedSliceTargetDQN/Flatten/Shape%TargetDQN/Flatten/strided_slice/stack'TargetDQN/Flatten/strided_slice/stack_1'TargetDQN/Flatten/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
l
!TargetDQN/Flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ľ
TargetDQN/Flatten/Reshape/shapePackTargetDQN/Flatten/strided_slice!TargetDQN/Flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Ś
TargetDQN/Flatten/ReshapeReshapeTargetDQN/Convolution_4/Conv2DTargetDQN/Flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
?TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
valueB"      *
dtype0*
_output_shapes
:
´
>TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
ś
@TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

ITargetDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W
­
=TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/mulMulITargetDQN/FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal@TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:


9TargetDQN/FullyConnected_1/W/Initializer/truncated_normalAdd=TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/mul>TargetDQN/FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

Ĺ
TargetDQN/FullyConnected_1/W
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
	container *
shape:


#TargetDQN/FullyConnected_1/W/AssignAssignTargetDQN/FullyConnected_1/W9TargetDQN/FullyConnected_1/W/Initializer/truncated_normal*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
validate_shape(* 
_output_shapes
:
*
use_locking(
§
!TargetDQN/FullyConnected_1/W/readIdentityTargetDQN/FullyConnected_1/W*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

Ž
.TargetDQN/FullyConnected_1/B/Initializer/ConstConst*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:
ť
TargetDQN/FullyConnected_1/B
VariableV2*
dtype0*
_output_shapes	
:*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
	container *
shape:
ű
#TargetDQN/FullyConnected_1/B/AssignAssignTargetDQN/FullyConnected_1/B.TargetDQN/FullyConnected_1/B/Initializer/Const*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
validate_shape(*
_output_shapes	
:*
use_locking(
˘
!TargetDQN/FullyConnected_1/B/readIdentityTargetDQN/FullyConnected_1/B*
_output_shapes	
:*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B
Â
!TargetDQN/FullyConnected_1/MatMulMatMulTargetDQN/Flatten/Reshape!TargetDQN/FullyConnected_1/W/read*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 

TargetDQN/FullyConnected_1/addAdd!TargetDQN/FullyConnected_1/MatMul!TargetDQN/FullyConnected_1/B/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
z
TargetDQN/FullyConnected_1/ReluReluTargetDQN/FullyConnected_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
?TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
valueB"   	   *
dtype0*
_output_shapes
:
´
>TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
ś
@TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

ITargetDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*
_output_shapes
:		*

seed *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W
Ź
=TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/mulMulITargetDQN/FullyConnected_2/W/Initializer/truncated_normal/TruncatedNormal@TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/stddev*
_output_shapes
:		*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W

9TargetDQN/FullyConnected_2/W/Initializer/truncated_normalAdd=TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/mul>TargetDQN/FullyConnected_2/W/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
Ă
TargetDQN/FullyConnected_2/W
VariableV2*
dtype0*
_output_shapes
:		*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
	container *
shape:		

#TargetDQN/FullyConnected_2/W/AssignAssignTargetDQN/FullyConnected_2/W9TargetDQN/FullyConnected_2/W/Initializer/truncated_normal*
validate_shape(*
_output_shapes
:		*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W
Ś
!TargetDQN/FullyConnected_2/W/readIdentityTargetDQN/FullyConnected_2/W*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
Ź
.TargetDQN/FullyConnected_2/B/Initializer/ConstConst*
dtype0*
_output_shapes
:	*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
valueB	*ÍĚĚ=
š
TargetDQN/FullyConnected_2/B
VariableV2*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
	container *
shape:	*
dtype0*
_output_shapes
:	
ú
#TargetDQN/FullyConnected_2/B/AssignAssignTargetDQN/FullyConnected_2/B.TargetDQN/FullyConnected_2/B/Initializer/Const*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	
Ą
!TargetDQN/FullyConnected_2/B/readIdentityTargetDQN/FullyConnected_2/B*
_output_shapes
:	*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B
Ç
!TargetDQN/FullyConnected_2/MatMulMatMulTargetDQN/FullyConnected_1/Relu!TargetDQN/FullyConnected_2/W/read*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
transpose_b( *
T0

TargetDQN/FullyConnected_2/addAdd!TargetDQN/FullyConnected_2/MatMul!TargetDQN/FullyConnected_2/B/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0
\
TargetDQN/Loss/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
\
TargetDQN/Loss/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ś
TargetDQN/Loss/rangeRangeTargetDQN/Loss/range/startTargetDQN/Inputs/strided_sliceTargetDQN/Loss/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
r
TargetDQN/Loss/ShapeShapeTargetDQN/FullyConnected_2/add*
T0*
out_type0*
_output_shapes
:
l
"TargetDQN/Loss/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$TargetDQN/Loss/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$TargetDQN/Loss/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ä
TargetDQN/Loss/strided_sliceStridedSliceTargetDQN/Loss/Shape"TargetDQN/Loss/strided_slice/stack$TargetDQN/Loss/strided_slice/stack_1$TargetDQN/Loss/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
{
TargetDQN/Loss/mulMulTargetDQN/Loss/rangeTargetDQN/Loss/strided_slice*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
TargetDQN/Loss/addAddTargetDQN/Loss/mulTargetDQN/Inputs/Actions*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
TargetDQN/Loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

TargetDQN/Loss/ReshapeReshapeTargetDQN/FullyConnected_2/addTargetDQN/Loss/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
^
TargetDQN/Loss/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Đ
TargetDQN/Loss/GatherV2GatherV2TargetDQN/Loss/ReshapeTargetDQN/Loss/addTargetDQN/Loss/GatherV2/axis*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*

batch_dims *
Tindices0*
Tparams0

TargetDQN/Loss/huber_loss/SubSubTargetDQN/Loss/GatherV2TargetDQN/Inputs/TDTarget*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
TargetDQN/Loss/huber_loss/AbsAbsTargetDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
#TargetDQN/Loss/huber_loss/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!TargetDQN/Loss/huber_loss/MinimumMinimumTargetDQN/Loss/huber_loss/Abs#TargetDQN/Loss/huber_loss/Minimum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Loss/huber_loss/Sub_1SubTargetDQN/Loss/huber_loss/Abs!TargetDQN/Loss/huber_loss/Minimum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
d
TargetDQN/Loss/huber_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *   ?

TargetDQN/Loss/huber_loss/MulMul!TargetDQN/Loss/huber_loss/Minimum!TargetDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Loss/huber_loss/Mul_1MulTargetDQN/Loss/huber_loss/ConstTargetDQN/Loss/huber_loss/Mul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
!TargetDQN/Loss/huber_loss/Mul_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

TargetDQN/Loss/huber_loss/Mul_2Mul!TargetDQN/Loss/huber_loss/Mul_2/xTargetDQN/Loss/huber_loss/Sub_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

TargetDQN/Loss/huber_loss/AddAddTargetDQN/Loss/huber_loss/Mul_1TargetDQN/Loss/huber_loss/Mul_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
{
6TargetDQN/Loss/huber_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

<TargetDQN/Loss/huber_loss/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
}
;TargetDQN/Loss/huber_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

;TargetDQN/Loss/huber_loss/assert_broadcastable/values/shapeShapeTargetDQN/Loss/huber_loss/Add*
T0*
out_type0*
_output_shapes
:
|
:TargetDQN/Loss/huber_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
JTargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successNoOp
˛
 TargetDQN/Loss/huber_loss/Cast/xConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

TargetDQN/Loss/huber_loss/Mul_3MulTargetDQN/Loss/huber_loss/Add TargetDQN/Loss/huber_loss/Cast/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
!TargetDQN/Loss/huber_loss/Const_1ConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Ś
TargetDQN/Loss/huber_loss/SumSumTargetDQN/Loss/huber_loss/Mul_3!TargetDQN/Loss/huber_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ż
-TargetDQN/Loss/huber_loss/num_present/Equal/yConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
+TargetDQN/Loss/huber_loss/num_present/EqualEqual TargetDQN/Loss/huber_loss/Cast/x-TargetDQN/Loss/huber_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Â
0TargetDQN/Loss/huber_loss/num_present/zeros_likeConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ĺ
5TargetDQN/Loss/huber_loss/num_present/ones_like/ShapeConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ç
5TargetDQN/Loss/huber_loss/num_present/ones_like/ConstConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ř
/TargetDQN/Loss/huber_loss/num_present/ones_likeFill5TargetDQN/Loss/huber_loss/num_present/ones_like/Shape5TargetDQN/Loss/huber_loss/num_present/ones_like/Const*
_output_shapes
: *
T0*

index_type0
ç
,TargetDQN/Loss/huber_loss/num_present/SelectSelect+TargetDQN/Loss/huber_loss/num_present/Equal0TargetDQN/Loss/huber_loss/num_present/zeros_like/TargetDQN/Loss/huber_loss/num_present/ones_like*
_output_shapes
: *
T0
ę
ZTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
č
YTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 

YTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeTargetDQN/Loss/huber_loss/AddK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ç
XTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
˝
hTargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success
Ü
GTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeShapeTargetDQN/Loss/huber_loss/AddK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successi^TargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
Ä
GTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ConstConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_successi^TargetDQN/Loss/huber_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

ATargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_likeFillGTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/ShapeGTargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0
Ý
7TargetDQN/Loss/huber_loss/num_present/broadcast_weightsMul,TargetDQN/Loss/huber_loss/num_present/SelectATargetDQN/Loss/huber_loss/num_present/broadcast_weights/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
+TargetDQN/Loss/huber_loss/num_present/ConstConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Đ
%TargetDQN/Loss/huber_loss/num_presentSum7TargetDQN/Loss/huber_loss/num_present/broadcast_weights+TargetDQN/Loss/huber_loss/num_present/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ą
!TargetDQN/Loss/huber_loss/Const_2ConstK^TargetDQN/Loss/huber_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
Ś
TargetDQN/Loss/huber_loss/Sum_1SumTargetDQN/Loss/huber_loss/Sum!TargetDQN/Loss/huber_loss/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

TargetDQN/Loss/huber_loss/valueDivNoNanTargetDQN/Loss/huber_loss/Sum_1%TargetDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
W
TargetDQN/Loss/ConstConst*
valueB *
dtype0*
_output_shapes
: 

TargetDQN/Loss/MeanMeanTargetDQN/Loss/huber_loss/valueTargetDQN/Loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
l
TargetDQN/Loss/Loss/tagsConst*$
valueB BTargetDQN/Loss/Loss*
dtype0*
_output_shapes
: 
t
TargetDQN/Loss/LossScalarSummaryTargetDQN/Loss/Loss/tagsTargetDQN/Loss/Mean*
T0*
_output_shapes
: 
f
#TargetDQN/Optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
l
'TargetDQN/Optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ť
"TargetDQN/Optimizer/gradients/FillFill#TargetDQN/Optimizer/gradients/Shape'TargetDQN/Optimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

DTargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
â
>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/ReshapeReshape"TargetDQN/Optimizer/gradients/FillDTargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

<TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ô
;TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/TileTile>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Reshape<TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 

>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
ç
>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/truedivRealDiv;TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Tile>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/Const_1*
T0*
_output_shapes
: 

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
á
MTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nanDivNoNan>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/truediv%TargetDQN/Loss/huber_loss/num_present*
_output_shapes
: *
T0
´
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/SumSumMTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nanXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/NegNegTargetDQN/Loss/huber_loss/Sum_1*
_output_shapes
: *
T0
ë
OTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_1DivNoNanFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Neg%TargetDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
ô
OTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_2DivNoNanOTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_1%TargetDQN/Loss/huber_loss/num_present*
T0*
_output_shapes
: 
˙
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/mulMul>TargetDQN/Optimizer/gradients/TargetDQN/Loss/Mean_grad/truedivOTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
ą
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Sum_1SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/mulZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape*
_output_shapes
: 

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/Reshape_1*
_output_shapes
: 

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/ReshapeReshape[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/value_grad/tuple/control_dependencyPTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 

GTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/TileTileJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 

NTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/ReshapeReshapeGTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_1_grad/TileNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
Ľ
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/ShapeShapeTargetDQN/Loss/huber_loss/Mul_3*
T0*
out_type0*
_output_shapes
:

ETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/TileTileHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
Ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ShapeShapeTargetDQN/Loss/huber_loss/Add*
T0*
out_type0*
_output_shapes
:

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ä
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/MulMulETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Tile TargetDQN/Loss/huber_loss/Cast/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/SumSumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/MulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Mul_1MulTargetDQN/Loss/huber_loss/AddETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sum_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Sum_1SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Mul_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/Reshape_1*
_output_shapes
: 
Ľ
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ShapeShapeTargetDQN/Loss/huber_loss/Mul_1*
T0*
out_type0*
_output_shapes
:
§
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape_1ShapeTargetDQN/Loss/huber_loss/Mul_2*
_output_shapes
:*
T0*
out_type0
ž
VTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/BroadcastGradientArgsBroadcastGradientArgsFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ShapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ŕ
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/SumSum[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyVTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ReshapeReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Sum_1Sum[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_3_grad/tuple/control_dependencyXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Sum_1HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
QTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/group_depsNoOpI^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ReshapeK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1

YTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependencyIdentityHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/ReshapeR^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1IdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1R^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
§
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape_1ShapeTargetDQN/Loss/huber_loss/Mul*
_output_shapes
:*
T0*
out_type0
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ő
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/MulMulYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependencyTargetDQN/Loss/huber_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/SumSumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/MulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ů
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Mul_1MulTargetDQN/Loss/huber_loss/ConstYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Sum_1SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Mul_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Š
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*
_output_shapes
: *
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
Š
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape_1ShapeTargetDQN/Loss/huber_loss/Sub_1*
_output_shapes
:*
T0*
out_type0
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ů
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/MulMul[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1TargetDQN/Loss/huber_loss/Sub_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/SumSumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/MulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape*
_output_shapes
: *
T0*
Tshape0
ý
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Mul_1Mul!TargetDQN/Loss/huber_loss/Mul_2/x[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Add_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Sum_1SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Mul_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Š
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1ReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Sum_1JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape*
_output_shapes
: 

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/Reshape_1
§
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ShapeShape!TargetDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:
Š
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape_1Shape!TargetDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:
ž
VTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ShapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ű
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/MulMul]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1!TargetDQN/Loss/huber_loss/Minimum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/SumSumDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/MulVTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ReshapeReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ý
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Mul_1Mul!TargetDQN/Loss/huber_loss/Minimum]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_1_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Sum_1SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Mul_1XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Sum_1HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
QTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/group_depsNoOpI^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ReshapeK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1

YTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependencyIdentityHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/ReshapeR^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1IdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1R^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ShapeShapeTargetDQN/Loss/huber_loss/Abs*
T0*
out_type0*
_output_shapes
:
Ť
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape_1Shape!TargetDQN/Loss/huber_loss/Minimum*
T0*
out_type0*
_output_shapes
:
Ä
XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ShapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ć
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/SumSum]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1XTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ł
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ReshapeReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/SumHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Sum_1Sum]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_2_grad/tuple/control_dependency_1ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ş
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/NegNegHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Sum_1*
T0*
_output_shapes
:
§
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1ReshapeFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/NegJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
STargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/group_depsNoOpK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ReshapeM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependencyIdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/ReshapeT^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1IdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1T^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
"TargetDQN/Optimizer/gradients/AddNAddNYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependency[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/tuple/control_dependency_1]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency_1*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Mul_grad/Reshape
§
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ShapeShapeTargetDQN/Loss/huber_loss/Abs*
_output_shapes
:*
T0*
out_type0

LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ž
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_2Shape"TargetDQN/Optimizer/gradients/AddN*
T0*
out_type0*
_output_shapes
:

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
˛
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zerosFillLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_2PTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
NTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/LessEqual	LessEqualTargetDQN/Loss/huber_loss/Abs#TargetDQN/Loss/huber_loss/Minimum/y*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
ZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ShapeLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ă
KTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SelectSelectNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/LessEqual"TargetDQN/Optimizer/gradients/AddNJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¸
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SumSumKTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SelectZTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Š
LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ReshapeReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/SumJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
MTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Select_1SelectNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/LessEqualJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/zeros"TargetDQN/Optimizer/gradients/AddN*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Sum_1SumMTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Select_1\TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
˘
NTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1ReshapeJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Sum_1LTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ý
UTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/group_depsNoOpM^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ReshapeO^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1

]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/control_dependencyIdentityLTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/ReshapeV^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*_
_classU
SQloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

_TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency_1IdentityNTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1V^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/group_deps*
T0*a
_classW
USloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/Reshape_1*
_output_shapes
: 
ţ
$TargetDQN/Optimizer/gradients/AddN_1AddN[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/tuple/control_dependency]TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Minimum_grad/tuple/control_dependency*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_1_grad/Reshape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

ETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/SignSignTargetDQN/Loss/huber_loss/Sub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/mulMul$TargetDQN/Optimizer/gradients/AddN_1ETargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/Sign*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ShapeShapeTargetDQN/Loss/GatherV2*
_output_shapes
:*
T0*
out_type0
Ą
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape_1ShapeTargetDQN/Inputs/TDTarget*
T0*
out_type0*
_output_shapes
:
ž
VTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ShapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Š
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/SumSumDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/mulVTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ReshapeReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/SumFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
­
FTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Sum_1SumDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Abs_grad/mulXTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ś
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/NegNegFTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Sum_1*
T0*
_output_shapes
:
Ą
JTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1ReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/NegHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
QTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/group_depsNoOpI^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ReshapeK^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1

YTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/control_dependencyIdentityHTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/ReshapeR^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

[TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/control_dependency_1IdentityJTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1R^TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/group_deps*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*]
_classS
QOloc:@TargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/Reshape_1
Á
@TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ShapeShapeTargetDQN/Loss/Reshape*
T0*)
_class
loc:@TargetDQN/Loss/Reshape*
out_type0	*
_output_shapes
:
ř
?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/CastCast@TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/Shape*
Truncate( *

DstT0*
_output_shapes
:*

SrcT0	*)
_class
loc:@TargetDQN/Loss/Reshape

?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/SizeSizeTargetDQN/Loss/add*
T0*
out_type0*
_output_shapes
: 

ITargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

ETargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims
ExpandDims?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/SizeITargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:

NTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

PTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
HTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_sliceStridedSlice?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/CastNTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stackPTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_1PTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: 

FTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ŕ
ATargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concatConcatV2ETargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDimsHTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/strided_sliceFTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
§
BTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ReshapeReshapeYTargetDQN/Optimizer/gradients/TargetDQN/Loss/huber_loss/Sub_grad/tuple/control_dependencyATargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/concat*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ć
DTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/Reshape_1ReshapeTargetDQN/Loss/addETargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

?TargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ShapeShapeTargetDQN/FullyConnected_2/add*
T0*
out_type0*
_output_shapes
:

UTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ą
WTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ą
WTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ť
OTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_sliceStridedSlice?TargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/CastUTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stackWTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_1WTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

HTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/tensorUnsortedSegmentSumBTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/ReshapeDTargetDQN/Optimizer/gradients/TargetDQN/Loss/GatherV2_grad/Reshape_1OTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/strided_slice*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tnumsegments0*
Tindices0

ATargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ReshapeReshapeHTargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Reshape/tensor?TargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
¨
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ShapeShape!TargetDQN/FullyConnected_2/MatMul*
T0*
out_type0*
_output_shapes
:

ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape_1Const*
valueB:	*
dtype0*
_output_shapes
:
Á
WTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/BroadcastGradientArgsBroadcastGradientArgsGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ShapeITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¨
ETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/SumSumATargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ReshapeWTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
¤
ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ReshapeReshapeETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/SumGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
Ź
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Sum_1SumATargetDQN/Optimizer/gradients/TargetDQN/Loss/Reshape_grad/ReshapeYTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1ReshapeGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Sum_1ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	
ô
RTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/group_depsNoOpJ^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ReshapeL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1

ZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependencyIdentityITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/ReshapeS^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*\
_classR
PNloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	

\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency_1IdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1S^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/group_deps*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/Reshape_1*
_output_shapes
:	
­
KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMulMatMulZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency!TargetDQN/FullyConnected_2/W/read*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(*
T0
¤
MTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1MatMulTargetDQN/FullyConnected_1/ReluZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:		*
transpose_b( 
ű
UTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/group_depsNoOpL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMulN^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1
Ą
]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyIdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMulV^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1IdentityMTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1V^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/MatMul_1*
_output_shapes
:		

KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/Relu_grad/ReluGradReluGrad]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependencyTargetDQN/FullyConnected_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¨
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ShapeShape!TargetDQN/FullyConnected_1/MatMul*
T0*
out_type0*
_output_shapes
:

ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
Á
WTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ShapeITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˛
ETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/SumSumKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/Relu_grad/ReluGradWTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ľ
ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ReshapeReshapeETargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/SumGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
GTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Sum_1SumKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/Relu_grad/ReluGradYTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1ReshapeGTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Sum_1ITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
ô
RTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/group_depsNoOpJ^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ReshapeL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1

ZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependencyIdentityITargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/ReshapeS^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/group_deps*
T0*\
_classR
PNloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency_1IdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1S^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/group_deps*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/Reshape_1*
_output_shapes	
:
­
KTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMulMatMulZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency!TargetDQN/FullyConnected_1/W/read*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(*
T0

MTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1MatMulTargetDQN/Flatten/ReshapeZTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency*
T0*
transpose_a(* 
_output_shapes
:
*
transpose_b( 
ű
UTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/group_depsNoOpL^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMulN^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1
Ą
]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependencyIdentityKTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMulV^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/group_deps*
T0*^
_classT
RPloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1IdentityMTargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1V^TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*`
_classV
TRloc:@TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/MatMul_1
 
BTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/ShapeShapeTargetDQN/Convolution_4/Conv2D*
_output_shapes
:*
T0*
out_type0
ť
DTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/ReshapeReshape]TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependencyBTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/ShapeNShapeNTargetDQN/Convolution_3/Conv2DTargetDQN/Convolution_4/W/read*
N* 
_output_shapes
::*
T0*
out_type0
Ţ
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/ShapeNTargetDQN/Convolution_4/W/readDTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/Reshape*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
Ú
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Convolution_3/Conv2DJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/ShapeN:1DTargetDQN/Optimizer/gradients/TargetDQN/Flatten/Reshape_grad/Reshape*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
˛
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/group_deps*'
_output_shapes
:@*
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/Conv2DBackpropFilter
Ö
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/ShapeNShapeNTargetDQN/Convolution_2/Conv2DTargetDQN/Convolution_3/W/read*
T0*
out_type0*
N* 
_output_shapes
::
ô
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/ShapeNTargetDQN/Convolution_3/W/readZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
ď
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Convolution_2/Conv2DJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/ShapeN:1ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:@@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙		@
ą
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/group_deps*&
_output_shapes
:@@*
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/Conv2DBackpropFilter
Ö
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/ShapeNShapeNTargetDQN/Convolution_1/Conv2DTargetDQN/Convolution_2/W/read*
N* 
_output_shapes
::*
T0*
out_type0
ô
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/ShapeNTargetDQN/Convolution_2/W/readZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ď
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Convolution_1/Conv2DJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/ShapeN:1ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
: @

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ą
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/group_deps*&
_output_shapes
: @*
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/Conv2DBackpropFilter
Đ
HTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/ShapeNShapeNTargetDQN/Inputs/ReshapeTargetDQN/Convolution_1/W/read*
T0*
out_type0*
N* 
_output_shapes
::
ô
UTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputHTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/ShapeNTargetDQN/Convolution_1/W/readZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID
é
VTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTargetDQN/Inputs/ReshapeJTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/ShapeN:1ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*&
_output_shapes
: 

RTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/group_depsNoOpW^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterV^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput
ś
ZTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/control_dependencyIdentityUTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInputS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙TT
ą
\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1IdentityVTargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilterS^TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/group_deps*
T0*i
_class_
][loc:@TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
Ó
LTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"             *,
_class"
 loc:@TargetDQN/Convolution_1/W
ľ
BTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*,
_class"
 loc:@TargetDQN/Convolution_1/W*
dtype0*
_output_shapes
: 
Ç
<TargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones/Const*&
_output_shapes
: *
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_1/W
Ý
+TargetDQN/TargetDQN/Convolution_1/W/RMSProp
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/W*
	container 
Ż
2TargetDQN/TargetDQN/Convolution_1/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_1/W/RMSProp<TargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 
Č
0TargetDQN/TargetDQN/Convolution_1/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_1/W/RMSProp*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: 
Ö
OTargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *,
_class"
 loc:@TargetDQN/Convolution_1/W*
dtype0*
_output_shapes
:
¸
ETargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_1/W*
dtype0*
_output_shapes
: 
Đ
?TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: 
ß
-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@TargetDQN/Convolution_1/W*
	container *
shape: 
ś
4TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*
validate_shape(*&
_output_shapes
: 
Ě
2TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: 
Ó
LTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*%
valueB"          @   *,
_class"
 loc:@TargetDQN/Convolution_2/W*
dtype0*
_output_shapes
:
ľ
BTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*,
_class"
 loc:@TargetDQN/Convolution_2/W*
dtype0*
_output_shapes
: 
Ç
<TargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones/Const*&
_output_shapes
: @*
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_2/W
Ý
+TargetDQN/TargetDQN/Convolution_2/W/RMSProp
VariableV2*,
_class"
 loc:@TargetDQN/Convolution_2/W*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
Ż
2TargetDQN/TargetDQN/Convolution_2/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_2/W/RMSProp<TargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W
Č
0TargetDQN/TargetDQN/Convolution_2/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_2/W/RMSProp*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
Ö
OTargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"          @   *,
_class"
 loc:@TargetDQN/Convolution_2/W
¸
ETargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_2/W
Đ
?TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
ß
-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1
VariableV2*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_2/W
ś
4TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W
Ě
2TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W*&
_output_shapes
: @
Ó
LTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   *,
_class"
 loc:@TargetDQN/Convolution_3/W
ľ
BTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*,
_class"
 loc:@TargetDQN/Convolution_3/W*
dtype0*
_output_shapes
: 
Ç
<TargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ý
+TargetDQN/TargetDQN/Convolution_3/W/RMSProp
VariableV2*
dtype0*&
_output_shapes
:@@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_3/W*
	container *
shape:@@
Ż
2TargetDQN/TargetDQN/Convolution_3/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_3/W/RMSProp<TargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W
Č
0TargetDQN/TargetDQN/Convolution_3/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_3/W/RMSProp*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
Ö
OTargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   @   *,
_class"
 loc:@TargetDQN/Convolution_3/W*
dtype0*
_output_shapes
:
¸
ETargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_3/W*
dtype0*
_output_shapes
: 
Đ
?TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@
ß
-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_3/W*
	container 
ś
4TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Ě
2TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1*&
_output_shapes
:@@*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W
Ó
LTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensorConst*%
valueB"      @      *,
_class"
 loc:@TargetDQN/Convolution_4/W*
dtype0*
_output_shapes
:
ľ
BTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*,
_class"
 loc:@TargetDQN/Convolution_4/W*
dtype0*
_output_shapes
: 
Č
<TargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/onesFillLTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/shape_as_tensorBTargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
ß
+TargetDQN/TargetDQN/Convolution_4/W/RMSProp
VariableV2*,
_class"
 loc:@TargetDQN/Convolution_4/W*
	container *
shape:@*
dtype0*'
_output_shapes
:@*
shared_name 
°
2TargetDQN/TargetDQN/Convolution_4/W/RMSProp/AssignAssign+TargetDQN/TargetDQN/Convolution_4/W/RMSProp<TargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@
É
0TargetDQN/TargetDQN/Convolution_4/W/RMSProp/readIdentity+TargetDQN/TargetDQN/Convolution_4/W/RMSProp*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
Ö
OTargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @      *,
_class"
 loc:@TargetDQN/Convolution_4/W*
dtype0*
_output_shapes
:
¸
ETargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    *,
_class"
 loc:@TargetDQN/Convolution_4/W*
dtype0*
_output_shapes
: 
Ń
?TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zerosFillOTargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/shape_as_tensorETargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros/Const*'
_output_shapes
:@*
T0*

index_type0*,
_class"
 loc:@TargetDQN/Convolution_4/W
á
-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1
VariableV2*
	container *
shape:@*
dtype0*'
_output_shapes
:@*
shared_name *,
_class"
 loc:@TargetDQN/Convolution_4/W
ˇ
4TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/AssignAssign-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1?TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*
validate_shape(*'
_output_shapes
:@
Í
2TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/readIdentity-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W*'
_output_shapes
:@
Ń
OTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
dtype0*
_output_shapes
:
ť
ETargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
dtype0*
_output_shapes
: 
Í
?TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/onesFillOTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/shape_as_tensorETargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

×
.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
	container *
shape:

ľ
5TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp?TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
validate_shape(* 
_output_shapes
:

Ë
3TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp* 
_output_shapes
:
*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W
Ô
RTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      */
_class%
#!loc:@TargetDQN/FullyConnected_1/W
ž
HTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@TargetDQN/FullyConnected_1/W
Ö
BTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zerosFillRTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/shape_as_tensorHTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

Ů
0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/W*
	container *
shape:

ź
7TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W
Ď
5TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:

Ë
OTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensorConst*
valueB:*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
dtype0*
_output_shapes
:
ť
ETargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B
Č
?TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/onesFillOTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/shape_as_tensorETargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
_output_shapes	
:
Í
.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp
VariableV2*
dtype0*
_output_shapes	
:*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
	container *
shape:
°
5TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp?TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B
Ć
3TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
_output_shapes	
:
Î
RTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
valueB:*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
dtype0*
_output_shapes
:
ž
HTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@TargetDQN/FullyConnected_1/B
Ń
BTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zerosFillRTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/shape_as_tensorHTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
_output_shapes	
:
Ď
0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1
VariableV2*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
	container *
shape:*
dtype0*
_output_shapes	
:
ˇ
7TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B
Ę
5TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
_output_shapes	
:
Ń
OTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensorConst*
valueB"   	   */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
dtype0*
_output_shapes
:
ť
ETargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/ConstConst*
valueB
 *  ?*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
dtype0*
_output_shapes
: 
Ě
?TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/onesFillOTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/shape_as_tensorETargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
Ő
.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp
VariableV2*
dtype0*
_output_shapes
:		*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
	container *
shape:		
´
5TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp?TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
validate_shape(*
_output_shapes
:		
Ę
3TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp*
_output_shapes
:		*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W
Ô
RTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorConst*
valueB"   	   */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
dtype0*
_output_shapes
:
ž
HTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
dtype0*
_output_shapes
: 
Ő
BTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zerosFillRTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/shape_as_tensorHTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros/Const*
_output_shapes
:		*
T0*

index_type0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W
×
0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1
VariableV2*
dtype0*
_output_shapes
:		*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
	container *
shape:		
ť
7TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros*
validate_shape(*
_output_shapes
:		*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W
Î
5TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1*
_output_shapes
:		*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W
˝
?TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/Initializer/onesConst*
valueB	*  ?*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
dtype0*
_output_shapes
:	
Ë
.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp
VariableV2*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
	container *
shape:	*
dtype0*
_output_shapes
:	
Ż
5TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/AssignAssign.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp?TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/Initializer/ones*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B
Ĺ
3TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/readIdentity.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
_output_shapes
:	
Ŕ
BTargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/Initializer/zerosConst*
valueB	*    */
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
dtype0*
_output_shapes
:	
Í
0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1
VariableV2*
dtype0*
_output_shapes
:	*
shared_name */
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
	container *
shape:	
ś
7TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/AssignAssign0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1BTargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/Initializer/zeros*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
validate_shape(*
_output_shapes
:	*
use_locking(
É
5TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/readIdentity0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
_output_shapes
:	
n
)TargetDQN/Optimizer/RMSProp/learning_rateConst*
valueB
 *o9*
dtype0*
_output_shapes
: 
f
!TargetDQN/Optimizer/RMSProp/decayConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
i
$TargetDQN/Optimizer/RMSProp/momentumConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#TargetDQN/Optimizer/RMSProp/epsilonConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
š
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_1/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_1/W+TargetDQN/TargetDQN/Convolution_1/W/RMSProp-TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_1/Conv2D_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_1/W*&
_output_shapes
: *
use_locking( 
š
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_2/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_2/W+TargetDQN/TargetDQN/Convolution_2/W/RMSProp-TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_2/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
: @*
use_locking( *
T0*,
_class"
 loc:@TargetDQN/Convolution_2/W
š
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_3/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_3/W+TargetDQN/TargetDQN/Convolution_3/W/RMSProp-TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_3/Conv2D_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@TargetDQN/Convolution_3/W*&
_output_shapes
:@@*
use_locking( 
ş
ITargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_4/W/ApplyRMSPropApplyRMSPropTargetDQN/Convolution_4/W+TargetDQN/TargetDQN/Convolution_4/W/RMSProp-TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/Convolution_4/Conv2D_grad/tuple/control_dependency_1*'
_output_shapes
:@*
use_locking( *
T0*,
_class"
 loc:@TargetDQN/Convolution_4/W
Ĺ
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/W/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_1/W.TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/MatMul_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/W* 
_output_shapes
:
*
use_locking( 
˝
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/B/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_1/B.TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_1/add_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_1/B*
_output_shapes	
:
Ä
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/W/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_2/W.TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon_TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/W*
_output_shapes
:		
ź
LTargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/B/ApplyRMSPropApplyRMSPropTargetDQN/FullyConnected_2/B.TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1)TargetDQN/Optimizer/RMSProp/learning_rate!TargetDQN/Optimizer/RMSProp/decay$TargetDQN/Optimizer/RMSProp/momentum#TargetDQN/Optimizer/RMSProp/epsilon\TargetDQN/Optimizer/gradients/TargetDQN/FullyConnected_2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@TargetDQN/FullyConnected_2/B*
_output_shapes
:	

TargetDQN/Optimizer/RMSPropNoOpJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_1/W/ApplyRMSPropJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_2/W/ApplyRMSPropJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_3/W/ApplyRMSPropJ^TargetDQN/Optimizer/RMSProp/update_TargetDQN/Convolution_4/W/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/B/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_1/W/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/B/ApplyRMSPropM^TargetDQN/Optimizer/RMSProp/update_TargetDQN/FullyConnected_2/W/ApplyRMSProp"&"B
train_op6
4
DQN/Optimizer/RMSProp
TargetDQN/Optimizer/RMSProp"ŮN
	variablesËNČN

DQN/Convolution_1/W:0DQN/Convolution_1/W/AssignDQN/Convolution_1/W/read:022DQN/Convolution_1/W/Initializer/truncated_normal:08
z
DQN/Convolution_1/B:0DQN/Convolution_1/B/AssignDQN/Convolution_1/B/read:02'DQN/Convolution_1/B/Initializer/Const:08

DQN/Convolution_2/W:0DQN/Convolution_2/W/AssignDQN/Convolution_2/W/read:022DQN/Convolution_2/W/Initializer/truncated_normal:08
z
DQN/Convolution_2/B:0DQN/Convolution_2/B/AssignDQN/Convolution_2/B/read:02'DQN/Convolution_2/B/Initializer/Const:08

DQN/Convolution_3/W:0DQN/Convolution_3/W/AssignDQN/Convolution_3/W/read:022DQN/Convolution_3/W/Initializer/truncated_normal:08
z
DQN/Convolution_3/B:0DQN/Convolution_3/B/AssignDQN/Convolution_3/B/read:02'DQN/Convolution_3/B/Initializer/Const:08

DQN/Convolution_4/W:0DQN/Convolution_4/W/AssignDQN/Convolution_4/W/read:022DQN/Convolution_4/W/Initializer/truncated_normal:08
z
DQN/Convolution_4/B:0DQN/Convolution_4/B/AssignDQN/Convolution_4/B/read:02'DQN/Convolution_4/B/Initializer/Const:08

DQN/FullyConnected_1/W:0DQN/FullyConnected_1/W/AssignDQN/FullyConnected_1/W/read:025DQN/FullyConnected_1/W/Initializer/truncated_normal:08

DQN/FullyConnected_1/B:0DQN/FullyConnected_1/B/AssignDQN/FullyConnected_1/B/read:02*DQN/FullyConnected_1/B/Initializer/Const:08

DQN/FullyConnected_2/W:0DQN/FullyConnected_2/W/AssignDQN/FullyConnected_2/W/read:025DQN/FullyConnected_2/W/Initializer/truncated_normal:08

DQN/FullyConnected_2/B:0DQN/FullyConnected_2/B/AssignDQN/FullyConnected_2/B/read:02*DQN/FullyConnected_2/B/Initializer/Const:08
§
!DQN/DQN/Convolution_1/W/RMSProp:0&DQN/DQN/Convolution_1/W/RMSProp/Assign&DQN/DQN/Convolution_1/W/RMSProp/read:022DQN/DQN/Convolution_1/W/RMSProp/Initializer/ones:0
°
#DQN/DQN/Convolution_1/W/RMSProp_1:0(DQN/DQN/Convolution_1/W/RMSProp_1/Assign(DQN/DQN/Convolution_1/W/RMSProp_1/read:025DQN/DQN/Convolution_1/W/RMSProp_1/Initializer/zeros:0
§
!DQN/DQN/Convolution_2/W/RMSProp:0&DQN/DQN/Convolution_2/W/RMSProp/Assign&DQN/DQN/Convolution_2/W/RMSProp/read:022DQN/DQN/Convolution_2/W/RMSProp/Initializer/ones:0
°
#DQN/DQN/Convolution_2/W/RMSProp_1:0(DQN/DQN/Convolution_2/W/RMSProp_1/Assign(DQN/DQN/Convolution_2/W/RMSProp_1/read:025DQN/DQN/Convolution_2/W/RMSProp_1/Initializer/zeros:0
§
!DQN/DQN/Convolution_3/W/RMSProp:0&DQN/DQN/Convolution_3/W/RMSProp/Assign&DQN/DQN/Convolution_3/W/RMSProp/read:022DQN/DQN/Convolution_3/W/RMSProp/Initializer/ones:0
°
#DQN/DQN/Convolution_3/W/RMSProp_1:0(DQN/DQN/Convolution_3/W/RMSProp_1/Assign(DQN/DQN/Convolution_3/W/RMSProp_1/read:025DQN/DQN/Convolution_3/W/RMSProp_1/Initializer/zeros:0
§
!DQN/DQN/Convolution_4/W/RMSProp:0&DQN/DQN/Convolution_4/W/RMSProp/Assign&DQN/DQN/Convolution_4/W/RMSProp/read:022DQN/DQN/Convolution_4/W/RMSProp/Initializer/ones:0
°
#DQN/DQN/Convolution_4/W/RMSProp_1:0(DQN/DQN/Convolution_4/W/RMSProp_1/Assign(DQN/DQN/Convolution_4/W/RMSProp_1/read:025DQN/DQN/Convolution_4/W/RMSProp_1/Initializer/zeros:0
ł
$DQN/DQN/FullyConnected_1/W/RMSProp:0)DQN/DQN/FullyConnected_1/W/RMSProp/Assign)DQN/DQN/FullyConnected_1/W/RMSProp/read:025DQN/DQN/FullyConnected_1/W/RMSProp/Initializer/ones:0
ź
&DQN/DQN/FullyConnected_1/W/RMSProp_1:0+DQN/DQN/FullyConnected_1/W/RMSProp_1/Assign+DQN/DQN/FullyConnected_1/W/RMSProp_1/read:028DQN/DQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros:0
ł
$DQN/DQN/FullyConnected_1/B/RMSProp:0)DQN/DQN/FullyConnected_1/B/RMSProp/Assign)DQN/DQN/FullyConnected_1/B/RMSProp/read:025DQN/DQN/FullyConnected_1/B/RMSProp/Initializer/ones:0
ź
&DQN/DQN/FullyConnected_1/B/RMSProp_1:0+DQN/DQN/FullyConnected_1/B/RMSProp_1/Assign+DQN/DQN/FullyConnected_1/B/RMSProp_1/read:028DQN/DQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros:0
ł
$DQN/DQN/FullyConnected_2/W/RMSProp:0)DQN/DQN/FullyConnected_2/W/RMSProp/Assign)DQN/DQN/FullyConnected_2/W/RMSProp/read:025DQN/DQN/FullyConnected_2/W/RMSProp/Initializer/ones:0
ź
&DQN/DQN/FullyConnected_2/W/RMSProp_1:0+DQN/DQN/FullyConnected_2/W/RMSProp_1/Assign+DQN/DQN/FullyConnected_2/W/RMSProp_1/read:028DQN/DQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros:0
ł
$DQN/DQN/FullyConnected_2/B/RMSProp:0)DQN/DQN/FullyConnected_2/B/RMSProp/Assign)DQN/DQN/FullyConnected_2/B/RMSProp/read:025DQN/DQN/FullyConnected_2/B/RMSProp/Initializer/ones:0
ź
&DQN/DQN/FullyConnected_2/B/RMSProp_1:0+DQN/DQN/FullyConnected_2/B/RMSProp_1/Assign+DQN/DQN/FullyConnected_2/B/RMSProp_1/read:028DQN/DQN/FullyConnected_2/B/RMSProp_1/Initializer/zeros:0

TargetDQN/Convolution_1/W:0 TargetDQN/Convolution_1/W/Assign TargetDQN/Convolution_1/W/read:028TargetDQN/Convolution_1/W/Initializer/truncated_normal:08

TargetDQN/Convolution_1/B:0 TargetDQN/Convolution_1/B/Assign TargetDQN/Convolution_1/B/read:02-TargetDQN/Convolution_1/B/Initializer/Const:08

TargetDQN/Convolution_2/W:0 TargetDQN/Convolution_2/W/Assign TargetDQN/Convolution_2/W/read:028TargetDQN/Convolution_2/W/Initializer/truncated_normal:08

TargetDQN/Convolution_2/B:0 TargetDQN/Convolution_2/B/Assign TargetDQN/Convolution_2/B/read:02-TargetDQN/Convolution_2/B/Initializer/Const:08

TargetDQN/Convolution_3/W:0 TargetDQN/Convolution_3/W/Assign TargetDQN/Convolution_3/W/read:028TargetDQN/Convolution_3/W/Initializer/truncated_normal:08

TargetDQN/Convolution_3/B:0 TargetDQN/Convolution_3/B/Assign TargetDQN/Convolution_3/B/read:02-TargetDQN/Convolution_3/B/Initializer/Const:08

TargetDQN/Convolution_4/W:0 TargetDQN/Convolution_4/W/Assign TargetDQN/Convolution_4/W/read:028TargetDQN/Convolution_4/W/Initializer/truncated_normal:08

TargetDQN/Convolution_4/B:0 TargetDQN/Convolution_4/B/Assign TargetDQN/Convolution_4/B/read:02-TargetDQN/Convolution_4/B/Initializer/Const:08
Š
TargetDQN/FullyConnected_1/W:0#TargetDQN/FullyConnected_1/W/Assign#TargetDQN/FullyConnected_1/W/read:02;TargetDQN/FullyConnected_1/W/Initializer/truncated_normal:08

TargetDQN/FullyConnected_1/B:0#TargetDQN/FullyConnected_1/B/Assign#TargetDQN/FullyConnected_1/B/read:020TargetDQN/FullyConnected_1/B/Initializer/Const:08
Š
TargetDQN/FullyConnected_2/W:0#TargetDQN/FullyConnected_2/W/Assign#TargetDQN/FullyConnected_2/W/read:02;TargetDQN/FullyConnected_2/W/Initializer/truncated_normal:08

TargetDQN/FullyConnected_2/B:0#TargetDQN/FullyConnected_2/B/Assign#TargetDQN/FullyConnected_2/B/read:020TargetDQN/FullyConnected_2/B/Initializer/Const:08
×
-TargetDQN/TargetDQN/Convolution_1/W/RMSProp:02TargetDQN/TargetDQN/Convolution_1/W/RMSProp/Assign2TargetDQN/TargetDQN/Convolution_1/W/RMSProp/read:02>TargetDQN/TargetDQN/Convolution_1/W/RMSProp/Initializer/ones:0
ŕ
/TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1:04TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Assign4TargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/read:02ATargetDQN/TargetDQN/Convolution_1/W/RMSProp_1/Initializer/zeros:0
×
-TargetDQN/TargetDQN/Convolution_2/W/RMSProp:02TargetDQN/TargetDQN/Convolution_2/W/RMSProp/Assign2TargetDQN/TargetDQN/Convolution_2/W/RMSProp/read:02>TargetDQN/TargetDQN/Convolution_2/W/RMSProp/Initializer/ones:0
ŕ
/TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1:04TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Assign4TargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/read:02ATargetDQN/TargetDQN/Convolution_2/W/RMSProp_1/Initializer/zeros:0
×
-TargetDQN/TargetDQN/Convolution_3/W/RMSProp:02TargetDQN/TargetDQN/Convolution_3/W/RMSProp/Assign2TargetDQN/TargetDQN/Convolution_3/W/RMSProp/read:02>TargetDQN/TargetDQN/Convolution_3/W/RMSProp/Initializer/ones:0
ŕ
/TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1:04TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Assign4TargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/read:02ATargetDQN/TargetDQN/Convolution_3/W/RMSProp_1/Initializer/zeros:0
×
-TargetDQN/TargetDQN/Convolution_4/W/RMSProp:02TargetDQN/TargetDQN/Convolution_4/W/RMSProp/Assign2TargetDQN/TargetDQN/Convolution_4/W/RMSProp/read:02>TargetDQN/TargetDQN/Convolution_4/W/RMSProp/Initializer/ones:0
ŕ
/TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1:04TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Assign4TargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/read:02ATargetDQN/TargetDQN/Convolution_4/W/RMSProp_1/Initializer/zeros:0
ă
0TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp:05TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Assign5TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/read:02ATargetDQN/TargetDQN/FullyConnected_1/W/RMSProp/Initializer/ones:0
ě
2TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1:07TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Assign7TargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/read:02DTargetDQN/TargetDQN/FullyConnected_1/W/RMSProp_1/Initializer/zeros:0
ă
0TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp:05TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Assign5TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/read:02ATargetDQN/TargetDQN/FullyConnected_1/B/RMSProp/Initializer/ones:0
ě
2TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1:07TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Assign7TargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/read:02DTargetDQN/TargetDQN/FullyConnected_1/B/RMSProp_1/Initializer/zeros:0
ă
0TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp:05TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Assign5TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/read:02ATargetDQN/TargetDQN/FullyConnected_2/W/RMSProp/Initializer/ones:0
ě
2TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1:07TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Assign7TargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/read:02DTargetDQN/TargetDQN/FullyConnected_2/W/RMSProp_1/Initializer/zeros:0
ă
0TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp:05TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/Assign5TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/read:02ATargetDQN/TargetDQN/FullyConnected_2/B/RMSProp/Initializer/ones:0
ě
2TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1:07TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/Assign7TargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/read:02DTargetDQN/TargetDQN/FullyConnected_2/B/RMSProp_1/Initializer/zeros:0"L
lossesB
@
DQN/Loss/huber_loss/value:0
!TargetDQN/Loss/huber_loss/value:0"ç
	summariesŮ
Ö
DQN/Convolution_1/Weights:0
DQN/Convolution_1/Biases:0
DQN/Convolution_1/Activations:0
DQN/Convolution_2/Weights:0
DQN/Convolution_2/Biases:0
DQN/Convolution_2/Activations:0
DQN/Convolution_3/Weights:0
DQN/Convolution_3/Biases:0
DQN/Convolution_3/Activations:0
DQN/Convolution_4/Weights:0
DQN/Convolution_4/Biases:0
DQN/Convolution_4/Activations:0
DQN/FullyConnected_1/Weights:0
DQN/FullyConnected_1/Biases:0
"DQN/FullyConnected_1/Activations:0
DQN/FullyConnected_2/Weights:0
DQN/FullyConnected_2/Biases:0
"DQN/FullyConnected_2/Activations:0
DQN/Loss/Loss:0
TargetDQN/Loss/Loss:0"Ó
trainable_variablesť¸

DQN/Convolution_1/W:0DQN/Convolution_1/W/AssignDQN/Convolution_1/W/read:022DQN/Convolution_1/W/Initializer/truncated_normal:08
z
DQN/Convolution_1/B:0DQN/Convolution_1/B/AssignDQN/Convolution_1/B/read:02'DQN/Convolution_1/B/Initializer/Const:08

DQN/Convolution_2/W:0DQN/Convolution_2/W/AssignDQN/Convolution_2/W/read:022DQN/Convolution_2/W/Initializer/truncated_normal:08
z
DQN/Convolution_2/B:0DQN/Convolution_2/B/AssignDQN/Convolution_2/B/read:02'DQN/Convolution_2/B/Initializer/Const:08

DQN/Convolution_3/W:0DQN/Convolution_3/W/AssignDQN/Convolution_3/W/read:022DQN/Convolution_3/W/Initializer/truncated_normal:08
z
DQN/Convolution_3/B:0DQN/Convolution_3/B/AssignDQN/Convolution_3/B/read:02'DQN/Convolution_3/B/Initializer/Const:08

DQN/Convolution_4/W:0DQN/Convolution_4/W/AssignDQN/Convolution_4/W/read:022DQN/Convolution_4/W/Initializer/truncated_normal:08
z
DQN/Convolution_4/B:0DQN/Convolution_4/B/AssignDQN/Convolution_4/B/read:02'DQN/Convolution_4/B/Initializer/Const:08

DQN/FullyConnected_1/W:0DQN/FullyConnected_1/W/AssignDQN/FullyConnected_1/W/read:025DQN/FullyConnected_1/W/Initializer/truncated_normal:08

DQN/FullyConnected_1/B:0DQN/FullyConnected_1/B/AssignDQN/FullyConnected_1/B/read:02*DQN/FullyConnected_1/B/Initializer/Const:08

DQN/FullyConnected_2/W:0DQN/FullyConnected_2/W/AssignDQN/FullyConnected_2/W/read:025DQN/FullyConnected_2/W/Initializer/truncated_normal:08

DQN/FullyConnected_2/B:0DQN/FullyConnected_2/B/AssignDQN/FullyConnected_2/B/read:02*DQN/FullyConnected_2/B/Initializer/Const:08

TargetDQN/Convolution_1/W:0 TargetDQN/Convolution_1/W/Assign TargetDQN/Convolution_1/W/read:028TargetDQN/Convolution_1/W/Initializer/truncated_normal:08

TargetDQN/Convolution_1/B:0 TargetDQN/Convolution_1/B/Assign TargetDQN/Convolution_1/B/read:02-TargetDQN/Convolution_1/B/Initializer/Const:08

TargetDQN/Convolution_2/W:0 TargetDQN/Convolution_2/W/Assign TargetDQN/Convolution_2/W/read:028TargetDQN/Convolution_2/W/Initializer/truncated_normal:08

TargetDQN/Convolution_2/B:0 TargetDQN/Convolution_2/B/Assign TargetDQN/Convolution_2/B/read:02-TargetDQN/Convolution_2/B/Initializer/Const:08

TargetDQN/Convolution_3/W:0 TargetDQN/Convolution_3/W/Assign TargetDQN/Convolution_3/W/read:028TargetDQN/Convolution_3/W/Initializer/truncated_normal:08

TargetDQN/Convolution_3/B:0 TargetDQN/Convolution_3/B/Assign TargetDQN/Convolution_3/B/read:02-TargetDQN/Convolution_3/B/Initializer/Const:08

TargetDQN/Convolution_4/W:0 TargetDQN/Convolution_4/W/Assign TargetDQN/Convolution_4/W/read:028TargetDQN/Convolution_4/W/Initializer/truncated_normal:08

TargetDQN/Convolution_4/B:0 TargetDQN/Convolution_4/B/Assign Targ