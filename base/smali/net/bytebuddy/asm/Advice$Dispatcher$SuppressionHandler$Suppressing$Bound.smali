.class public Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Bound"
.end annotation


# instance fields
.field private final endOfMethod:Lnet/bytebuddy/jar/asm/Label;

.field private final exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final startOfMethod:Lnet/bytebuddy/jar/asm/Label;

.field private final suppressedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 3940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3941
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3942
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 3943
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    .line 3944
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method public onEnd(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$ReturnValueProducer;)V
    .locals 1

    .line 3963
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 3964
    invoke-interface {p4, p1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 3965
    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {p4, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireStackSize(I)V

    .line 3966
    invoke-interface {p5, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$ReturnValueProducer;->onDefaultValue(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public onEndSkipped(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$ReturnValueProducer;)V
    .locals 2

    .line 3975
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v1, 0xa7

    .line 3976
    invoke-virtual {p1, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 3977
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->onEnd(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$ReturnValueProducer;)V

    .line 3978
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public onPrepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 3

    .line 3949
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    .line 3954
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method
