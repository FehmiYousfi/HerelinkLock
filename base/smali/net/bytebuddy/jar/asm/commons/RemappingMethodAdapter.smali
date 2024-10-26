.class public Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;
.super Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(IILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;-><init>(IILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 6

    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;-><init>(IILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p2, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private remapEntries(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    new-array v2, p1, [Ljava/lang/Object;

    if-lez v1, :cond_0

    invoke-static {p2, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_1
    aget-object v0, p2, v1

    add-int/lit8 v3, v1, 0x1

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    aput-object v0, v2, v1

    if-lt v3, p1, :cond_2

    return-object v2

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p2
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3

    invoke-super {p0}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, v0, p2, p3}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0, p2, p3}, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapEntries(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p4, p5}, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapEntries(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v2, p4, v0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/jar/asm/Handle;

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-super/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 9

    move-object v8, p0

    iget-object v0, v8, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    move-object v1, p6

    invoke-virtual {v0, p6}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object v2, v8, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 1

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method
