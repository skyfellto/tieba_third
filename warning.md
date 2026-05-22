════════ Exception caught by rendering library ═════════════════════════════════
The following assertion was thrown during layout:
A RenderFlex overflowed by 2.0 pixels on the right.

The relevant error-causing widget was:
Row Row:file:///E:/AndroidStudioProjects/tieba_third/lib/widgets/user_detail_header_delegate.dart:202:16

: To inspect this widget in Flutter DevTools, visit: http://127.0.0.1:9100/#/inspector?uri=http%3A%2F%2F127.0.0.1%3A5326%2F9B3OkS2MYT0%3D%2F&inspectorRef=inspector-0

The overflowing RenderFlex has an orientation of Axis.horizontal.
The edge of the RenderFlex that is overflowing has been marked in the rendering with a yellow and black striped pattern. This is usually caused by the contents being too big for the RenderFlex.
Consider applying a flex factor (e.g. using an Expanded widget) to force the children of the RenderFlex to fit within the available space instead of being sized to their natural size.
This is considered an error condition because it indicates that there is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView.
The specific RenderFlex in question is: RenderFlex#639be relayoutBoundary=up10 OVERFLOWING
parentData: offset=Offset(0.0, 12.0) (can use size)
constraints: BoxConstraints(0.0<=w<=352.2, 0.0<=h<=Infinity)
size: Size(352.2, 23.0)
direction: horizontal
mainAxisAlignment: start
mainAxisSize: max
crossAxisAlignment: center
textDirection: ltr
verticalDirection: down
spacing: 0.0
child 1: RenderSemanticsAnnotations#56ab8 relayoutBoundary=up11
parentData: offset=Offset(0.0, 3.5); flex=null; fit=null (can use size)
constraints: BoxConstraints(unconstrained)
size: Size(16.0, 16.0)
child: RenderExcludeSemantics#6212b relayoutBoundary=up12
parentData: <none> (can use size)
constraints: BoxConstraints(unconstrained)
size: Size(16.0, 16.0)
excluding: true
child: RenderConstrainedBox#753bf relayoutBoundary=up13
parentData: <none> (can use size)
constraints: BoxConstraints(unconstrained)
size: Size(16.0, 16.0)
additionalConstraints: BoxConstraints(w=16.0, h=16.0)
child: RenderPositionedBox#be900
parentData: <none> (can use size)
constraints: BoxConstraints(w=16.0, h=16.0)
size: Size(16.0, 16.0)
alignment: Alignment.center
textDirection: ltr
widthFactor: expand
heightFactor: expand
child 2: RenderConstrainedBox#3166b relayoutBoundary=up11
parentData: offset=Offset(16.0, 11.5); flex=null; fit=null (can use size)
constraints: BoxConstraints(unconstrained)
size: Size(4.0, 0.0)
additionalConstraints: BoxConstraints(w=4.0, 0.0<=h<=Infinity)
child 3: RenderParagraph#f0acb relayoutBoundary=up11
parentData: offset=Offset(20.0, 0.0); flex=null; fit=null (can use size)
constraints: BoxConstraints(unconstrained)
size: Size(334.2, 23.0)
textAlign: start
textDirection: ltr
softWrap: wrapping at box width
overflow: clip
locale: en_US
maxLines: unlimited
text: TextSpan
debugLabel: ((englishLike bodyMedium 2021).merge(((whiteMountainView bodyMedium).apply).merge(unknown))).merge(unknown)
inherit: false
color: Color(alpha: 1.0000, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
family: Roboto
size: 15.0
weight: 400
letterSpacing: 0.3
baseline: alphabetic
height: 1.4x
leadingDistribution: even
decoration: Color(alpha: 1.0000, red: 0.9020, green: 0.8784, blue: 0.9137, colorSpace: ColorSpace.sRGB) TextDecoration.none
"萝莉galgame吧、二阶堂真惨吧、漆原雪人吧吧主"
◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤
════════════════════════════════════════════════════════════════════════════════
