.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForType"
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 4305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4306
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;
    .locals 2

    .line 4316
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    .line 4317
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    .line 4318
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$1400()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 4319
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 4316
    invoke-static {v0, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    move-result-object p0

    return-object p0
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;
    .locals 2

    .line 4330
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4331
    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$Disabled;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$Disabled;

    return-object p0

    .line 4332
    :cond_0
    const-class v0, Lnet/bytebuddy/asm/Advice$OnDefaultValue;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4333
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    move-result-object p0

    return-object p0

    .line 4334
    :cond_1
    const-class v0, Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4335
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher;

    move-result-object p0

    return-object p0

    .line 4336
    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4339
    new-instance p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;

    invoke-direct {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object p1

    .line 4337
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot skip method by instance type for primitive return value on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;)V
    .locals 0

    .line 4349
    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    const/16 p4, 0x19

    invoke-virtual {p1, p4, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 4350
    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0xc1

    invoke-virtual {p1, p4, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 4351
    new-instance p2, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p2}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 p4, 0x99

    .line 4352
    invoke-virtual {p1, p4, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 4353
    invoke-interface {p5, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound$SkipHandler;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 4354
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 p2, 0x1

    .line 4355
    invoke-interface {p3, p1, p2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V

    return-void
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 4292
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4292
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 4292
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter$SkipDispatcher$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method
