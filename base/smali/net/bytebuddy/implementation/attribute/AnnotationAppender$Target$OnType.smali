.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;
.super Ljava/lang/Object;
.source "AnnotationAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnType"
.end annotation


# instance fields
.field private final classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 72
    instance-of p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 72
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

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

    .line 72
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

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

.method public visit(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 91
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visit(Ljava/lang/String;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 96
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/TypePath;->fromString(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/TypePath;

    move-result-object p4

    invoke-virtual {v0, p3, p4, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
