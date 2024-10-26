.class public Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RawTypeValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue$Loaded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final NO_INITIALIZATION:Z = false


# instance fields
.field private final name:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    .line 647
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 648
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 649
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 650
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 666
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

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

    .line 671
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

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
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 661
    new-instance v0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue$Loaded;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue$Loaded;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 656
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 676
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawTypeValue;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toSourceString(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
