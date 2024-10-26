.class public Lnet/bytebuddy/pool/TypePool$LazyFacade;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyFacade"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;,
        Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;
    }
.end annotation


# instance fields
.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;)V
    .locals 1

    .line 7579
    sget-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->INSTANCE:Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    invoke-direct {p0, v0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;)V

    .line 7580
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7565
    instance-of p1, p1, Lnet/bytebuddy/pool/TypePool$LazyFacade;

    return p1
.end method

.method public clear()V
    .locals 1

    .line 7590
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool;->clear()V

    return-void
.end method

.method protected doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 2

    .line 7585
    new-instance v0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7565
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/pool/TypePool$LazyFacade;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/pool/TypePool$LazyFacade;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/pool/TypePool$LazyFacade;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$LazyFacade;->typePool:Lnet/bytebuddy/pool/TypePool;

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

    .line 7565
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade;->typePool:Lnet/bytebuddy/pool/TypePool;

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
