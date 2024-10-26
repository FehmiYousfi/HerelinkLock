.class public Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;


# instance fields
.field protected className:Ljava/lang/String;

.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method protected createRemappingAnnotationAdapter(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/jar/asm/commons/RemappingAnnotationAdapter;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createRemappingFieldAdapter(Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/RemappingFieldAdapter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/jar/asm/commons/RemappingFieldAdapter;-><init>(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method protected createRemappingMethodAdapter(ILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/commons/RemappingMethodAdapter;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->className:Ljava/lang/String;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p6, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p6}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v7, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-super/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->createRemappingAnnotationAdapter(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 p3, 0x1

    invoke-virtual {p2, p4, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p2, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    invoke-super/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->createRemappingFieldAdapter(Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 p3, 0x0

    invoke-virtual {p2, p4, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x0

    if-nez p5, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v4, v0

    invoke-super/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->createRemappingMethodAdapter(ILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v2, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-super {p0, v0, p1, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/RemappingClassAdapter;->createRemappingAnnotationAdapter(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method
