.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;
.super Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyPackageDescription"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V
    .locals 0

    .line 5796
    invoke-direct {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;-><init>()V

    .line 5797
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 5798
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    .line 5778
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    .line 5803
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "package-info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    .line 5804
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5805
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 5811
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;->name:Ljava/lang/String;

    return-object v0
.end method
