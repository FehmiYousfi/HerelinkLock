.class public abstract Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;
.super Ljava/lang/Object;
.source "Implementation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# instance fields
.field protected final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field protected final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;)V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 523
    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 502
    instance-of p1, p1, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 502
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

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
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p1

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

.method public getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    .line 533
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-object v0
.end method

.method public getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 528
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 502
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

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

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v3

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
