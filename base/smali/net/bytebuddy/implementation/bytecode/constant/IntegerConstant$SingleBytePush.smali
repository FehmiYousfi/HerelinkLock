.class public Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;
.super Ljava/lang/Object;
.source "IntegerConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SingleBytePush"
.end annotation


# instance fields
.field private final value:B


# direct methods
.method protected constructor <init>(B)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-byte p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 156
    iget-byte p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 157
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 132
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-byte v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    iget-byte p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 132
    iget-byte v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
