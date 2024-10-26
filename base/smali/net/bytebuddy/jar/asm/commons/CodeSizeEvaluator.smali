.class public Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;

# interfaces
.implements Lnet/bytebuddy/jar/asm/Opcodes;


# instance fields
.field private maxSize:I

.field private minSize:I


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    return v0
.end method

.method public getMinSize()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    return v0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    const/16 v0, -0x80

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x6

    :goto_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_2
    return-void
.end method

.method public visitInsn(I)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :cond_0
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_1
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x5

    :goto_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_2
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    :goto_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    array-length v1, p4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    array-length v1, p4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    if-lt p2, v1, :cond_1

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->maxSize:I

    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/CodeSizeEvaluator;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_2
    return-void
.end method
