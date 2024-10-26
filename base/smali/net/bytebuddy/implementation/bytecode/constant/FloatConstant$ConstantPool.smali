.class public Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;
.super Ljava/lang/Object;
.source "FloatConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConstantPool"
.end annotation


# instance fields
.field private final value:F


# direct methods
.method protected constructor <init>(F)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;->value:F

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    .line 107
    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;->value:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 83
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;->value:F

    iget p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;->value:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 83
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant$ConstantPool;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
