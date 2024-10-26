.class public Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;
.super Ljava/lang/Object;
.source "JavaConstantValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# instance fields
.field private final javaConstant:Lnet/bytebuddy/utility/JavaConstant;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/utility/JavaConstant;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->javaConstant:Lnet/bytebuddy/utility/JavaConstant;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 37
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->javaConstant:Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {p2}, Lnet/bytebuddy/utility/JavaConstant;->asConstantPoolValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 38
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->javaConstant:Lnet/bytebuddy/utility/JavaConstant;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->javaConstant:Lnet/bytebuddy/utility/JavaConstant;

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

    .line 13
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->javaConstant:Lnet/bytebuddy/utility/JavaConstant;

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

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
