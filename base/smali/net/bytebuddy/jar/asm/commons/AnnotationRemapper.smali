.class public Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;
.super Lnet/bytebuddy/jar/asm/AnnotationVisitor;


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-ne p1, p2, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
