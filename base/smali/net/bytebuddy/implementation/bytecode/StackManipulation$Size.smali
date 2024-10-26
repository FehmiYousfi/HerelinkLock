.class public Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
.super Ljava/lang/Object;
.source "StackManipulation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field private final maximalSize:I

.field private final sizeImpact:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    .line 103
    iput p2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    return-void
.end method

.method private aggregate(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    .line 144
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    add-int/2addr p1, v1

    iget v2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    add-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 132
    iget v0, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    iget p1, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 78
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getSizeImpact()I

    move-result v1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getSizeImpact()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getMaximalSize()I
    .locals 1

    .line 121
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    return v0
.end method

.method public getSizeImpact()I
    .locals 1

    .line 112
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 78
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getSizeImpact()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
