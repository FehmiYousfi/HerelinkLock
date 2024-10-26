.class public Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;
.super Ljava/lang/Object;
.source "MethodInvocation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Invocation"
.end annotation


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 1

    .line 284
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 295
    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method private getOuterInstance()Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1

    .line 354
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    .line 305
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$000(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 306
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 307
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 308
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 309
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v5

    move-object v0, p1

    .line 305
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 310
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    .line 311
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, p2, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method

.method public dynamic(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isBootstrap()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v5, p3}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    iget-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 339
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 361
    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    .line 362
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-direct {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->getOuterInstance()Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 363
    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v2

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 364
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 369
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 370
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 371
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHandle(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 345
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;)V

    return-object v0
.end method

.method public special(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    .line 328
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isSpecializableFor(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_0
    return-object v0
.end method

.method public virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    .line 316
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 322
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 317
    :cond_2
    :goto_0
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object p1
.end method
