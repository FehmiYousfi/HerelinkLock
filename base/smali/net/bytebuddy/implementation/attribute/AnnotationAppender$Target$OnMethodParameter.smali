.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;
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
    name = "OnMethodParameter"
.end annotation


# instance fields
.field private final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private final parameterIndex:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;I)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 155
    iput p2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->parameterIndex:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 134
    instance-of p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v3, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->parameterIndex:I

    iget p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->parameterIndex:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 134
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->parameterIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public visit(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    .line 160
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->parameterIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visit(Ljava/lang/String;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 165
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethodParameter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/TypePath;->fromString(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/TypePath;

    move-result-object p4

    invoke-virtual {v0, p3, p4, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
