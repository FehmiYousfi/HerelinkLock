.class public Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RawAnnotationValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;)V
    .locals 0

    .line 494
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 495
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 496
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 519
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 524
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;->getBinaryName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    .line 511
    invoke-virtual {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;->getValues()Ljava/util/Map;

    move-result-object v2

    .line 509
    invoke-static {p1, v0, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v1

    .line 513
    :cond_0
    new-instance p1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$IncompatibleRuntimeType;

    invoke-direct {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$IncompatibleRuntimeType;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 476
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 2

    .line 501
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;->access$000(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawAnnotationValue;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
