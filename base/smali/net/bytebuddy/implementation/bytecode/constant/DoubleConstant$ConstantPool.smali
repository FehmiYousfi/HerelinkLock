.class public Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;
.super Ljava/lang/Object;
.source "DoubleConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConstantPool"
.end annotation


# instance fields
.field private final value:D


# direct methods
.method protected constructor <init>(D)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-wide p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2

    .line 100
    iget-wide v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    iget-wide v5, p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 76
    iget-wide v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
