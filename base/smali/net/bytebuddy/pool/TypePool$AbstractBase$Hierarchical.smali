.class public abstract Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Hierarchical"
.end annotation


# instance fields
.field private final parent:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;)V
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;)V

    .line 398
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 382
    instance-of p1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;

    return p1
.end method

.method public clear()V
    .locals 1

    .line 412
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->clear()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->clear()V

    throw v0
.end method

.method public describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 2

    .line 403
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 382
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, v1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 382
    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    mul-int/2addr v0, v1

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
