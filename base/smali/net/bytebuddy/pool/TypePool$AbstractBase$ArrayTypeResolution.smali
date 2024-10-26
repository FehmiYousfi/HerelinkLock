.class public Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ArrayTypeResolution"
.end annotation


# instance fields
.field private final arity:I

.field private final resolution:Lnet/bytebuddy/pool/TypePool$Resolution;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Resolution;I)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->resolution:Lnet/bytebuddy/pool/TypePool$Resolution;

    .line 443
    iput p2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->arity:I

    return-void
.end method

.method protected static of(Lnet/bytebuddy/pool/TypePool$Resolution;I)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;-><init>(Lnet/bytebuddy/pool/TypePool$Resolution;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 422
    instance-of p1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 422
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->resolution:Lnet/bytebuddy/pool/TypePool$Resolution;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->resolution:Lnet/bytebuddy/pool/TypePool$Resolution;

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
    iget v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->arity:I

    iget p1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->arity:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 422
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->resolution:Lnet/bytebuddy/pool/TypePool$Resolution;

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

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->arity:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isResolved()Z
    .locals 1

    .line 464
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->resolution:Lnet/bytebuddy/pool/TypePool$Resolution;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v0

    return v0
.end method

.method public resolve()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 469
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->resolution:Lnet/bytebuddy/pool/TypePool$Resolution;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->arity:I

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->of(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method
