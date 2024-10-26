.class public Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;
.super Ljava/lang/Object;
.source "TypeInitializer.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# instance fields
.field protected final annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

.field protected final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field protected final methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 87
    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    .line 88
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->wrap(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {p2, p1, p3, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    return-void
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 58
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method
