.class public abstract Lnet/bytebuddy/asm/Advice$AdviceVisitor;
.super Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AdviceVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;
    }
.end annotation


# static fields
.field private static final NO_OFFSET:I


# instance fields
.field protected final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;

.field protected final methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;

.field protected final methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

.field protected final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private final padding:I

.field protected final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
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

    move-object v0, p0

    move-object/from16 v10, p7

    const/high16 v1, 0x50000

    move-object v2, p2

    .line 6507
    invoke-direct {p0, v1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    move-object v11, p1

    .line 6508
    iput-object v11, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 6509
    iput-object v10, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 6510
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getEnterType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    iput v1, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->padding:I

    .line 6511
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getEnterType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 6513
    :cond_0
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getEnterType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object v3, v1

    .line 6514
    invoke-static {v10, v3, v4, v6}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->of(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;I)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    .line 6519
    invoke-interface {p3}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v4, p10

    move/from16 v6, p11

    move/from16 v7, p12

    .line 6515
    invoke-static/range {v1 .. v7}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/ClassFileVersion;II)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    .line 6522
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    move-object/from16 v1, p8

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-interface/range {v1 .. v9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;

    .line 6530
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    move-object/from16 v1, p9

    invoke-interface/range {v1 .. v9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;

    return-void
.end method

.method private resolve(I)I
    .locals 1

    .line 6636
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->padding:I

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private resolve([I)[I
    .locals 3

    .line 6622
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 6623
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 6624
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->resolve(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onAfterExceptionTable()V
    .locals 1

    .line 6542
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;->prepare()V

    .line 6543
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserPrepare()V

    .line 6544
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodExit;->prepare()V

    .line 6545
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;

    invoke-interface {v0, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$ForMethodEnter;->apply(Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;)V

    .line 6546
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserStart()V

    return-void
.end method

.method protected abstract onUserEnd()V
.end method

.method protected abstract onUserPrepare()V
.end method

.method protected abstract onUserStart()V
.end method

.method protected onVisitIincInsn(II)V
    .locals 1

    .line 6566
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-direct {p0, p1}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->resolve(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method protected onVisitVarInsn(II)V
    .locals 1

    .line 6561
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-direct {p0, p2}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->resolve(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method protected variable(I)V
    .locals 1

    const/4 v0, 0x0

    .line 6575
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->variable(II)V

    return-void
.end method

.method protected variable(II)V
    .locals 3

    .line 6585
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    iget v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->padding:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    .line 6590
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 7

    .line 6601
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-direct {p0, p6}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->resolve(I)I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 8

    .line 6612
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-direct {p0, p5}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->resolve([I)[I

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitMaxs(II)V
    .locals 2

    .line 6595
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserEnd()V

    .line 6596
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->compoundStackSize(I)I

    move-result p1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    invoke-interface {v1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->compoundLocalVariableLength(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method
