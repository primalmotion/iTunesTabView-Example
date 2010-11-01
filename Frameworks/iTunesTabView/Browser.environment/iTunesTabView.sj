@STATIC;1.0;p;15;iTunesTabView.jt;156;@STATIC;1.0;i;17;TNiTunesTabView.ji;21;TNiTunesTabViewItem.jt;91;
objj_executeFile("TNiTunesTabView.j",YES);
objj_executeFile("TNiTunesTabViewItem.j",YES);
p;17;TNiTunesTabView.jt;16472;@STATIC;1.0;I;15;AppKit/AppKit.ji;21;TNiTunesTabViewItem.jt;16406;
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("TNiTunesTabViewItem.j",YES);
TNTopTabsBezelBorder=0;
TNNoTabsBezelBorder=4;
TNNoTabsLineBorder=5;
TNNoTabsNoBorder=6;
var _1=nil,_2=nil,_3=nil,_4=nil,_5=nil;
var _6=7,_7=7;
var _8=1,_9=2,_a=4,_b=8;
var _c=objj_allocateClassPair(CPView,"TNiTunesTabView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_labelsView"),new objj_ivar("_backgroundView"),new objj_ivar("_separatorView"),new objj_ivar("_auxiliaryView"),new objj_ivar("_contentView"),new objj_ivar("_tabViewItems"),new objj_ivar("_selectedTabViewItem"),new objj_ivar("_tabViewType"),new objj_ivar("_delegate"),new objj_ivar("_delegateSelectors")]);
objj_registerClassPair(_c);
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_e,_f,_10){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("TNiTunesTabView").super_class},"initWithFrame:",_10);
if(_e){
_tabViewType=TNTopTabsBezelBorder;
_tabViewItems=[];
}
return _e;
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_11,_12){
with(_11){
if(_tabViewType!=TNTopTabsBezelBorder||_labelsView){
return;
}
objj_msgSend(_11,"_createBezelBorder");
objj_msgSend(_11,"layoutSubviews");
}
}),new objj_method(sel_getUid("_createBezelBorder"),function(_13,_14){
with(_13){
var _15=objj_msgSend(_13,"bounds");
_15.size.width+=7;
_15.origin.x-=7;
_labelsView=objj_msgSend(objj_msgSend(_TNiTunesTabLabelsView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_15),0));
objj_msgSend(_labelsView,"setTabView:",_13);
objj_msgSend(_labelsView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_13,"addSubview:",_labelsView);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_16,_17){
with(_16){
if(_tabViewType==TNTopTabsBezelBorder){
var _18=objj_msgSend(_16,"bounds"),_19=objj_msgSend(_TNiTunesTabLabelsView,"height");
_18.origin.y+=_19;
_18.size.height-=_19;
objj_msgSend(_backgroundView,"setFrame:",_18);
var _1a=5;
if(_auxiliaryView){
_1a=CGRectGetHeight(objj_msgSend(_auxiliaryView,"frame"));
objj_msgSend(_auxiliaryView,"setFrame:",CGRectMake(_6,_19,CGRectGetWidth(_18)-_6-_7,_1a));
}
objj_msgSend(_separatorView,"setFrame:",CGRectMake(_6,_19+_1a,CGRectGetWidth(_18)-_6-_7,1));
}
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_16,"contentRect"));
}
}),new objj_method(sel_getUid("addTabViewItem:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1b,"insertTabViewItem:atIndex:",_1d,objj_msgSend(_tabViewItems,"count"));
}
}),new objj_method(sel_getUid("insertTabViewItem:atIndex:"),function(_1e,_1f,_20,_21){
with(_1e){
if(!_labelsView){
objj_msgSend(_1e,"_createBezelBorder");
}
objj_msgSend(_tabViewItems,"insertObject:atIndex:",_20,_21);
objj_msgSend(_labelsView,"tabView:didAddTabViewItem:",_1e,_20);
objj_msgSend(_20,"setTabView:",_1e);
if(objj_msgSend(_tabViewItems,"count")==1){
objj_msgSend(_1e,"selectFirstTabViewItem:",_1e);
}
if(_delegateSelectors&_b){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_1e);
}
}
}),new objj_method(sel_getUid("removeTabViewItem:"),function(_22,_23,_24){
with(_22){
var _25=objj_msgSend(_22,"indexOfTabViewItem:",_24);
objj_msgSend(_tabViewItems,"removeObjectIdenticalTo:",_24);
objj_msgSend(_labelsView,"tabView:didRemoveTabViewItemAtIndex:",_22,_25);
objj_msgSend(_24,"setTabView:",nil);
if(_delegateSelectors&_b){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_22);
}
}
}),new objj_method(sel_getUid("indexOfTabViewItem:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(_tabViewItems,"indexOfObjectIdenticalTo:",_28);
}
}),new objj_method(sel_getUid("indexOfTabViewItemWithIdentifier:"),function(_29,_2a,_2b){
with(_29){
var _2c=0,_2d=objj_msgSend(_tabViewItems,"count");
for(;_2c<_2d;++_2c){
if(objj_msgSend(objj_msgSend(_tabViewItems[_2c],"identifier"),"isEqual:",_2b)){
return _2c;
}
}
return _2c;
}
}),new objj_method(sel_getUid("numberOfTabViewItems"),function(_2e,_2f){
with(_2e){
return objj_msgSend(_tabViewItems,"count");
}
}),new objj_method(sel_getUid("tabViewItemAtIndex:"),function(_30,_31,_32){
with(_30){
return _tabViewItems[_32];
}
}),new objj_method(sel_getUid("tabViewItems"),function(_33,_34){
with(_33){
return _tabViewItems;
}
}),new objj_method(sel_getUid("selectFirstTabViewItem:"),function(_35,_36,_37){
with(_35){
var _38=objj_msgSend(_tabViewItems,"count");
if(_38){
objj_msgSend(_35,"selectTabViewItemAtIndex:",0);
}
}
}),new objj_method(sel_getUid("selectLastTabViewItem:"),function(_39,_3a,_3b){
with(_39){
var _3c=objj_msgSend(_tabViewItems,"count");
if(_3c){
objj_msgSend(_39,"selectTabViewItemAtIndex:",_3c-1);
}
}
}),new objj_method(sel_getUid("selectNextTabViewItem:"),function(_3d,_3e,_3f){
with(_3d){
if(!_selectedTabViewItem){
return;
}
var _40=objj_msgSend(_3d,"indexOfTabViewItem:",_selectedTabViewItem),_41=objj_msgSend(_tabViewItems,"count");
objj_msgSend(_3d,"selectTabViewItemAtIndex:",_40+1%_41);
}
}),new objj_method(sel_getUid("selectPreviousTabViewItem:"),function(_42,_43,_44){
with(_42){
if(!_selectedTabViewItem){
return;
}
var _45=objj_msgSend(_42,"indexOfTabViewItem:",_selectedTabViewItem),_46=objj_msgSend(_tabViewItems,"count");
objj_msgSend(_42,"selectTabViewItemAtIndex:",_45==0?_46:_45-1);
}
}),new objj_method(sel_getUid("selectTabViewItem:"),function(_47,_48,_49){
with(_47){
if((_delegateSelectors&_9)&&!objj_msgSend(_delegate,"tabView:shouldSelectTabViewItem:",_47,_49)){
return;
}
if(_delegateSelectors&_a){
objj_msgSend(_delegate,"tabView:willSelectTabViewItem:",_47,_49);
}
if(_selectedTabViewItem){
_selectedTabViewItem._tabState=TNBackgroundTab;
objj_msgSend(_labelsView,"tabView:didChangeStateOfTabViewItem:",_47,_selectedTabViewItem);
}
_selectedTabViewItem=_49;
_selectedTabViewItem._tabState=TNSelectedTab;
var _4a=_contentView;
_contentView=objj_msgSend(_selectedTabViewItem,"view");
if(_4a!==_contentView){
objj_msgSend(_4a,"removeFromSuperview");
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_47,"addSubview:",_contentView);
}
var _4b=_auxiliaryView;
_auxiliaryView=objj_msgSend(_selectedTabViewItem,"auxiliaryView");
if(_4b!==_auxiliaryView){
objj_msgSend(_4b,"removeFromSuperview");
objj_msgSend(_auxiliaryView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_47,"addSubview:",_auxiliaryView);
}
objj_msgSend(_labelsView,"tabView:didChangeStateOfTabViewItem:",_47,_selectedTabViewItem);
objj_msgSend(_47,"layoutSubviews");
if(_delegateSelectors&_8){
objj_msgSend(_delegate,"tabView:didSelectTabViewItem:",_47,_49);
}
}
}),new objj_method(sel_getUid("selectTabViewItemAtIndex:"),function(_4c,_4d,_4e){
with(_4c){
objj_msgSend(_4c,"selectTabViewItem:",_tabViewItems[_4e]);
}
}),new objj_method(sel_getUid("selectedTabViewItem"),function(_4f,_50){
with(_4f){
return _selectedTabViewItem;
}
}),new objj_method(sel_getUid("setTabViewType:"),function(_51,_52,_53){
with(_51){
if(_tabViewType==_53){
return;
}
_tabViewType=_53;
if(_tabViewType==TNNoTabsBezelBorder||_tabViewType==TNNoTabsLineBorder||_tabViewType==TNNoTabsNoBorder){
objj_msgSend(_labelsView,"removeFromSuperview");
}else{
if(_labelsView&&!objj_msgSend(_labelsView,"superview")){
objj_msgSend(_51,"addSubview:",_labelsView);
}
}
if(_tabViewType==TNNoTabsLineBorder||_tabViewType==TNNoTabsNoBorder){
objj_msgSend(_backgroundView,"removeFromSuperview");
}else{
if(_backgroundView&&!objj_msgSend(_backgroundView,"superview")){
objj_msgSend(_51,"addSubview:",_backgroundView);
}
}
objj_msgSend(_51,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabViewType"),function(_54,_55){
with(_54){
return _tabViewType;
}
}),new objj_method(sel_getUid("contentRect"),function(_56,_57){
with(_56){
var _58=CGRectMakeCopy(objj_msgSend(_56,"bounds"));
if(_tabViewType==TNTopTabsBezelBorder){
var _59=33;
auxiliaryViewHeight=_auxiliaryView?CGRectGetHeight(objj_msgSend(_auxiliaryView,"frame")):0,separatorViewHeight=0;
_58.origin.y+=_59+auxiliaryViewHeight+separatorViewHeight;
_58.size.height-=_59+auxiliaryViewHeight+separatorViewHeight*2;
}
return _58;
}
}),new objj_method(sel_getUid("delegate"),function(_5a,_5b){
with(_5a){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5c,_5d,_5e){
with(_5c){
if(_delegate==_5e){
return;
}
_delegate=_5e;
_delegateSelectors=0;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:shouldSelectTabViewItem:"))){
_delegateSelectors|=_9;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:willSelectTabViewItem:"))){
_delegateSelectors|=_a;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:didSelectTabViewItem:"))){
_delegateSelectors|=_8;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabViewDidChangeNumberOfTabViewItems:"))){
_delegateSelectors|=_b;
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_5f,_60,_61){
with(_5f){
var _62=objj_msgSend(_labelsView,"convertPoint:fromView:",objj_msgSend(_61,"locationInWindow"),nil),_63=objj_msgSend(_labelsView,"representedTabViewItemAtPoint:",_62);
if(_63){
objj_msgSend(_5f,"selectTabViewItem:",_63);
}
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("bezelBorderColor"),function(_64,_65){
with(_64){
return _4;
}
})]);
var _66="TNiTunesTabViewItemsKey",_67="TNiTunesTabViewSelectedItemKey",_68="TNiTunesTabViewTypeKey",_69="TNiTunesTabViewDelegateKey";
var _c=objj_getClass("TNiTunesTabView");
if(!_c){
throw new SyntaxError("*** Could not find definition for class \"TNiTunesTabView\"");
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("initWithCoder:"),function(_6a,_6b,_6c){
with(_6a){
if(_6a=objj_msgSendSuper({receiver:_6a,super_class:objj_getClass("TNiTunesTabView").super_class},"initWithCoder:",_6c)){
_tabViewType=objj_msgSend(_6c,"decodeIntForKey:",_68);
_tabViewItems=[];
objj_msgSend(_6a,"_createBezelBorder");
var _6d=objj_msgSend(_6c,"decodeObjectForKey:",_66);
for(var i=0;_6d&&i<_6d.length;i++){
objj_msgSend(_6a,"insertTabViewItem:atIndex:",_6d[i],i);
}
var _6e=objj_msgSend(_6c,"decodeObjectForKey:",_67);
if(_6e){
objj_msgSend(_6a,"selectTabViewItem:",_6e);
}
objj_msgSend(_6a,"setDelegate:",objj_msgSend(_6c,"decodeObjectForKey:",_69));
}
return _6a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_6f,_70,_71){
with(_6f){
var _72=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_6f,super_class:objj_getClass("TNiTunesTabView").super_class},"encodeWithCoder:",_71);
_subviews=_72;
objj_msgSend(_71,"encodeObject:forKey:",_tabViewItems,_66);
objj_msgSend(_71,"encodeObject:forKey:",_selectedTabViewItem,_67);
objj_msgSend(_71,"encodeInt:forKey:",_tabViewType,_68);
objj_msgSend(_71,"encodeConditionalObject:forKey:",_delegate,_69);
}
})]);
var _73=nil,_74=10,_75=15;
var _c=objj_allocateClassPair(CPView,"_TNiTunesTabLabelsView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_tabView"),new objj_ivar("_tabLabels")]);
objj_registerClassPair(_c);
class_addMethods(_c,[new objj_method(sel_getUid("tabView"),function(_76,_77){
with(_76){
return _tabView;
}
}),new objj_method(sel_getUid("setTabView:"),function(_78,_79,_7a){
with(_78){
_tabView=_7a;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_7b,_7c,_7d){
with(_7b){
_7b=objj_msgSendSuper({receiver:_7b,super_class:objj_getClass("_TNiTunesTabLabelsView").super_class},"initWithFrame:",_7d);
if(_7b){
_tabLabels=[];
var _7e=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_7b,"class"));
objj_msgSend(_7b,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_7e,"pathForResource:","TNiTunesTabViewLabelBackground.png"))));
objj_msgSend(_7b,"setFrameSize:",CGSizeMake(CGRectGetWidth(_7d),33));
}
return _7b;
}
}),new objj_method(sel_getUid("tabView:didAddTabViewItem:"),function(_7f,_80,_81,_82){
with(_7f){
var _83=objj_msgSend(objj_msgSend(_TNiTunesTabLabel,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_83,"setTabViewItem:",_82);
_tabLabels.push(_83);
objj_msgSend(_7f,"addSubview:",_83);
objj_msgSend(_7f,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabView:didRemoveTabViewItemAtIndex:"),function(_84,_85,_86,_87){
with(_84){
var _88=_tabLabels[_87];
objj_msgSend(_tabLabels,"removeObjectAtIndex:",_87);
objj_msgSend(_88,"removeFromSuperview");
objj_msgSend(_84,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabView:didChangeStateOfTabViewItem:"),function(_89,_8a,_8b,_8c){
with(_89){
objj_msgSend(_tabLabels[objj_msgSend(_8b,"indexOfTabViewItem:",_8c)],"setTabState:",objj_msgSend(_8c,"tabState"));
}
}),new objj_method(sel_getUid("representedTabViewItemAtPoint:"),function(_8d,_8e,_8f){
with(_8d){
var _90=0,_91=_tabLabels.length;
for(;_90<_91;++_90){
var _92=_tabLabels[_90];
if(CGRectContainsPoint(objj_msgSend(_92,"frame"),_8f)){
return objj_msgSend(_92,"tabViewItem");
}
}
return nil;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_93,_94){
with(_93){
var _95=0,_96=_tabLabels.length,_97=110,x=15;
for(;_95<_96;++_95){
var _98=_tabLabels[_95],_99=CGRectMake(x,15,_97,20);
objj_msgSend(_98,"setFrame:",_99);
x=CGRectGetMaxX(_99);
x+=1;
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_9a,_9b,_9c){
with(_9a){
if(CGSizeEqualToSize(objj_msgSend(_9a,"frame").size,_9c)){
return;
}
objj_msgSendSuper({receiver:_9a,super_class:objj_getClass("_TNiTunesTabLabelsView").super_class},"setFrameSize:",_9c);
objj_msgSend(_9a,"layoutSubviews");
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("height"),function(_9d,_9e){
with(_9d){
return 26;
}
})]);
var _9f=nil,_a0=nil;
var _c=objj_allocateClassPair(CPView,"_TNiTunesTabLabel"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_tabViewItem"),new objj_ivar("_labelField")]);
objj_registerClassPair(_c);
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_a1,_a2,_a3){
with(_a1){
_a1=objj_msgSendSuper({receiver:_a1,super_class:objj_getClass("_TNiTunesTabLabel").super_class},"initWithFrame:",_a3);
if(_a1){
_labelField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_labelField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_labelField,"setFrame:",CGRectMake(5,0,CGRectGetWidth(_a3)-10,20));
objj_msgSend(_labelField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_labelField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",11));
objj_msgSend(_a1,"addSubview:",_labelField);
objj_msgSend(_a1,"setTabState:",TNBackgroundTab);
}
return _a1;
}
}),new objj_method(sel_getUid("setTabState:"),function(_a4,_a5,_a6){
with(_a4){
var _a7=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_a4,"class"));
_9f=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a7,"pathForResource:","TNiTunesTabLabelBackgroundLeft.png"),CGSizeMake(6,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a7,"pathForResource:","TNiTunesTabLabelBackgroundCenter.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a7,"pathForResource:","TNiTunesTabLabelBackgroundRight.png"),CGSizeMake(6,18))],NO));
_a0=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a7,"pathForResource:","TNiTunesTabLabelSelectedLeft.png"),CGSizeMake(3,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a7,"pathForResource:","TNiTunesTabLabelSelectedCenter.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a7,"pathForResource:","TNiTunesTabLabelSelectedRight.png"),CGSizeMake(3,18))],NO));
objj_msgSend(_a4,"setBackgroundColor:",_a6==TNSelectedTab?_a0:_9f);
objj_msgSend(_labelField,"setTextColor:",_a6==TNSelectedTab?objj_msgSend(CPColor,"blackColor"):objj_msgSend(CPColor,"whiteColor"));
}
}),new objj_method(sel_getUid("setTabViewItem:"),function(_a8,_a9,_aa){
with(_a8){
_tabViewItem=_aa;
objj_msgSend(_a8,"update");
}
}),new objj_method(sel_getUid("tabViewItem"),function(_ab,_ac){
with(_ab){
return _tabViewItem;
}
}),new objj_method(sel_getUid("update"),function(_ad,_ae){
with(_ad){
objj_msgSend(_labelField,"setStringValue:",objj_msgSend(_tabViewItem,"label"));
}
})]);
p;21;TNiTunesTabViewItem.jt;3109;@STATIC;1.0;I;21;Foundation/CPObject.jI;15;AppKit/CPView.jt;3044;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
TNSelectedTab=0;
TNBackgroundTab=1;
TNPressedTab=2;
var _1=objj_allocateClassPair(CPObject,"TNiTunesTabViewItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_identifier"),new objj_ivar("undefined"),new objj_ivar("_label"),new objj_ivar("_tabState"),new objj_ivar("_view"),new objj_ivar("_auxiliaryView"),new objj_ivar("_tabView"),new objj_ivar("undefined")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("identifier"),function(_3,_4){
with(_3){
return _identifier;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_5,_6,_7){
with(_5){
_identifier=_7;
}
}),new objj_method(sel_getUid("label"),function(_8,_9){
with(_8){
return _label;
}
}),new objj_method(sel_getUid("setLabel:"),function(_a,_b,_c){
with(_a){
_label=_c;
}
}),new objj_method(sel_getUid("tabState"),function(_d,_e){
with(_d){
return _tabState;
}
}),new objj_method(sel_getUid("_setTabState:"),function(_f,_10,_11){
with(_f){
_tabState=_11;
}
}),new objj_method(sel_getUid("view"),function(_12,_13){
with(_12){
return _view;
}
}),new objj_method(sel_getUid("setView:"),function(_14,_15,_16){
with(_14){
_view=_16;
}
}),new objj_method(sel_getUid("auxiliaryView"),function(_17,_18){
with(_17){
return _auxiliaryView;
}
}),new objj_method(sel_getUid("setAuxiliaryView:"),function(_19,_1a,_1b){
with(_19){
_auxiliaryView=_1b;
}
}),new objj_method(sel_getUid("tabView"),function(_1c,_1d){
with(_1c){
return _tabView;
}
}),new objj_method(sel_getUid("setTabView:"),function(_1e,_1f,_20){
with(_1e){
_tabView=_20;
}
}),new objj_method(sel_getUid("init"),function(_21,_22){
with(_21){
return objj_msgSend(_21,"initWithIdentifier:","");
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_23,_24,_25){
with(_23){
_23=objj_msgSendSuper({receiver:_23,super_class:objj_getClass("TNiTunesTabViewItem").super_class},"init");
if(_23){
_identifier=_25;
}
return _23;
}
})]);
var _26="TNiTunesTabViewItemIdentifierKey",_27="TNiTunesTabViewItemLabelKey",_28="TNiTunesTabViewItemViewKey",_29="TNiTunesTabViewItemAuxViewKey";
var _1=objj_getClass("TNiTunesTabViewItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNiTunesTabViewItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_2a,_2b,_2c){
with(_2a){
_2a=objj_msgSendSuper({receiver:_2a,super_class:objj_getClass("TNiTunesTabViewItem").super_class},"init");
if(_2a){
_identifier=objj_msgSend(_2c,"decodeObjectForKey:",_26);
_label=objj_msgSend(_2c,"decodeObjectForKey:",_27);
_view=objj_msgSend(_2c,"decodeObjectForKey:",_28);
_auxiliaryView=objj_msgSend(_2c,"decodeObjectForKey:",_29);
}
return _2a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_2f,"encodeObject:forKey:",_identifier,_26);
objj_msgSend(_2f,"encodeObject:forKey:",_label,_27);
objj_msgSend(_2f,"encodeObject:forKey:",_view,_28);
objj_msgSend(_2f,"encodeObject:forKey:",_auxiliaryView,_29);
}
})]);
e;