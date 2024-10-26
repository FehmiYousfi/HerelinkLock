.class public Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
.super Ljava/lang/Object;
.source "ByteCodeAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field private final localVariableSize:I

.field private final operandStackSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->operandStackSize:I

    .line 60
    iput p2, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->localVariableSize:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result v1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getLocalVariableSize()I
    .locals 1

    .line 78
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->localVariableSize:I

    return v0
.end method

.method public getOperandStackSize()I
    .locals 1

    .line 69
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->operandStackSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public merge(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 3

    .line 88
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->operandStackSize:I

    iget v2, p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->operandStackSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->localVariableSize:I

    iget p1, p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->localVariableSize:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v0
.end method
