.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForMethodEnter"
.end annotation


# instance fields
.field private doesReturn:Z


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;",
            "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;",
            ")V"
        }
    .end annotation

    .line 5586
    invoke-direct/range {p0 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;)V

    const/4 p1, 0x0

    .line 5594
    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->doesReturn:Z

    return-void
.end method


# virtual methods
.method protected adjust(I)I
    .locals 0

    return p1
.end method

.method public onDefaultValue(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 3

    .line 5633
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5634
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5635
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5636
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5637
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5639
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 5640
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 5641
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    .line 5642
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 5643
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 5644
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 5645
    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5646
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x3

    .line 5638
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 5648
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->doesReturn:Z

    return-void
.end method

.method protected onMethodReturn()V
    .locals 3

    .line 5653
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    .line 5654
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->doesReturn:Z

    if-eqz v1, :cond_0

    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5655
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 5656
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v0

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_0
    return-void
.end method

.method public visitInsn(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    .line 5619
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void

    .line 5601
    :pswitch_0
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast p1, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack()V

    goto :goto_0

    .line 5607
    :pswitch_1
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x3a

    const/16 v2, 0x19

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 5616
    :pswitch_2
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x39

    const/16 v2, 0x18

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 5610
    :pswitch_3
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x38

    const/16 v2, 0x17

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 5613
    :pswitch_4
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x37

    const/16 v2, 0x16

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 5604
    :pswitch_5
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x36

    const/16 v2, 0x15

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireLocalVariableLength(I)V

    .line 5622
    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    const/4 p1, 0x1

    .line 5623
    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;->doesReturn:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
