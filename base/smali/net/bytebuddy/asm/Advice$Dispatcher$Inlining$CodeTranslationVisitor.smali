.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$ReturnValueProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CodeTranslationVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodExit;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;
    }
.end annotation


# instance fields
.field protected final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field protected final endOfMethod:Lnet/bytebuddy/jar/asm/Label;

.field protected final implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field protected final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field protected final methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

.field protected final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private final offsetMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;",
            ">;"
        }
    .end annotation
.end field

.field protected final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

.field private final suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;)V
    .locals 2
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

    .line 5419
    new-instance v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    invoke-direct {v0, p1, p5}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)V

    const/high16 v1, 0x50000

    invoke-direct {p0, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 5420
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 5421
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 5422
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    .line 5423
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    .line 5424
    iput-object p5, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5425
    iput-object p6, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5426
    iput-object p7, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->offsetMappings:Ljava/util/Map;

    .line 5427
    iput-object p8, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    .line 5428
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method protected abstract adjust(I)I
.end method

.method protected abstract onMethodReturn()V
.end method

.method protected propagateHandler(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    .line 5438
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->register(Lnet/bytebuddy/jar/asm/Label;Ljava/util/List;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0

    .line 5453
    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 5448
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0

    return-void
.end method

.method public visitCode()V
    .locals 2

    .line 5473
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onStart(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public visitEnd()V
    .locals 6

    .line 5483
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onEnd(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$ReturnValueProducer;)V

    .line 5484
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 5485
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->onMethodReturn()V

    .line 5486
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    .line 5478
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2

    .line 5531
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->offsetMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;

    if-eqz v0, :cond_0

    .line 5533
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    invoke-interface {v0, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;->resolveIncrement(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-interface {p2, v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->recordPadding(I)V

    goto :goto_0

    .line 5535
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adjust(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    :goto_0
    return-void
.end method

.method public abstract visitInsn(I)V
.end method

.method public visitMaxs(II)V
    .locals 1

    .line 5491
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->recordMaxima(II)V

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0

    .line 5463
    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0

    .line 5458
    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitVarInsn(II)V
    .locals 3

    .line 5496
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->offsetMappings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 5521
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5517
    :pswitch_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;->resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    .line 5518
    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_0

    .line 5509
    :pswitch_1
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;->resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    .line 5510
    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_0

    .line 5504
    :pswitch_2
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;->resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    .line 5505
    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 5523
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-interface {p1, v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-interface {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->recordPadding(I)V

    goto :goto_1

    .line 5525
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adjust(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
