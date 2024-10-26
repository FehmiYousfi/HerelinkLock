.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfTypeVariable"
.end annotation


# instance fields
.field private final symbol:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6477
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 6487
    invoke-direct {p0, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;-><init>(Ljava/util/List;)V

    .line 6488
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->symbol:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 6463
    instance-of p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;

    return p1
.end method

.method protected doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    .line 6493
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->symbol:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->annotations:Ljava/util/List;

    invoke-static {v2, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method protected doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4

    .line 6498
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$Symbolic;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->symbol:Ljava/lang/String;

    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->annotations:Ljava/util/List;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$Symbolic;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6463
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->symbol:Ljava/lang/String;

    iget-object v1, v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->symbol:Ljava/lang/String;

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

    .line 6463
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;->symbol:Ljava/lang/String;

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
