.class public Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$LazyFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyResolution"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V
    .locals 0

    .line 7615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7616
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 7617
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7596
    instance-of p1, p1, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7596
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->typePool:Lnet/bytebuddy/pool/TypePool;

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
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->name:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->name:Ljava/lang/String;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 7596
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->typePool:Lnet/bytebuddy/pool/TypePool;

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

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->name:Ljava/lang/String;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isResolved()Z
    .locals 2

    .line 7622
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v0

    return v0
.end method

.method public resolve()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 7627
    new-instance v0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    return-object v0
.end method
