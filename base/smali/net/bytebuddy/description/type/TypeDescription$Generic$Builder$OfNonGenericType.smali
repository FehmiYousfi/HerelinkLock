.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfNonGenericType"
.end annotation


# instance fields
.field private final ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 1

    .line 6305
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1

    .line 6327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 6338
    invoke-direct {p0, p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;-><init>(Ljava/util/List;)V

    .line 6339
    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6340
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    if-nez p2, :cond_0

    .line 6315
    sget-object p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 6317
    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    .line 6315
    :goto_0
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 6286
    instance-of p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;

    return p1
.end method

.method protected doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 4
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

    .line 6345
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->annotations:Ljava/util/List;

    invoke-static {v3, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object v0
.end method

.method protected doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 5

    .line 6350
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The void non-type cannot be annotated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6353
    :cond_1
    :goto_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v3, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    iget-object v4, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->annotations:Ljava/util/List;

    invoke-direct {v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6286
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v1, v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 6286
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method
