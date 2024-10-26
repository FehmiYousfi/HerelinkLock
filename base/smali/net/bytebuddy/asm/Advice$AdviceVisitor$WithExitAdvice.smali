.class public abstract Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;
.super Lnet/bytebuddy/asm/Advice$AdviceVisitor;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AdviceVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "WithExitAdvice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;
    }
.end annotation


# instance fields
.field protected doesReturn:Z

.field protected final returnHandler:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;II)V"
        }
    .end annotation

    move-object v13, p0

    .line 6770
    new-instance v2, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    move-object v1, p1

    move-object/from16 v7, p6

    invoke-direct {v2, p1, v7}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)V

    move-object v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V

    .line 6782
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v0, v13, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    const/4 v0, 0x0

    .line 6783
    iput-boolean v0, v13, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->doesReturn:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 3

    .line 6788
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 6789
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 6790
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 6791
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 6792
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6794
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 6795
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 6796
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    .line 6797
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 6798
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 6799
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 6800
    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6801
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x3

    .line 6793
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :cond_5
    :goto_1
    const/16 v0, 0xa7

    .line 6803
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6804
    iput-boolean v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->doesReturn:Z

    return-void
.end method

.method protected abstract onExitAdviceReturn()V
.end method

.method protected onUserEnd()V
    .locals 3

    .line 6838
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    .line 6839
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 6840
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->doesReturn:Z

    if-eqz v1, :cond_0

    .line 6841
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 6842
    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x36

    .line 6843
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->variable(I)V

    .line 6846
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->onUserReturn()V

    .line 6847
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;->apply()V

    .line 6848
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->onExitAdviceReturn()V

    .line 6849
    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6850
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    .line 6852
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->variable(I)V

    .line 6853
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    return-void
.end method

.method protected abstract onUserReturn()V
.end method

.method protected onVisitInsn(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    .line 6829
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void

    .line 6811
    :pswitch_0
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast p1, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack()V

    goto :goto_0

    .line 6826
    :pswitch_1
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x3a

    const/16 v2, 0x19

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 6820
    :pswitch_2
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x39

    const/16 v2, 0x18

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 6817
    :pswitch_3
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x38

    const/16 v2, 0x17

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 6823
    :pswitch_4
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x37

    const/16 v2, 0x16

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 6814
    :pswitch_5
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x36

    const/16 v2, 0x15

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    .line 6832
    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    const/4 p1, 0x1

    .line 6833
    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->doesReturn:Z

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
