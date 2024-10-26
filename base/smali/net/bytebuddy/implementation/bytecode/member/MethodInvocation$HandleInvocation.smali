.class public Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;
.super Ljava/lang/Object;
.source "MethodInvocation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HandleInvocation"
.end annotation


# static fields
.field private static final METHOD_HANDLE:Ljava/lang/String; = "java/lang/invoke/MethodHandle"


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final type:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 514
    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->type:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 7

    .line 524
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->type:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    .line 526
    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;->getMethodName()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 527
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result p2

    const/4 v6, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 529
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 527
    :cond_1
    :goto_0
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 528
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v4, p2

    const/4 v5, 0x0

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandle"

    move-object v0, p1

    .line 524
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 531
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result p1

    add-int/2addr p1, v6

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    .line 532
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, p2, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 488
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 488
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->type:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->type:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 488
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;->type:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
