.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfParameterizedType"
.end annotation


# instance fields
.field private final ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private final rawType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 6386
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 6401
    invoke-direct {p0, p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;-><init>(Ljava/util/List;)V

    .line 6402
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 6403
    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6404
    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 6360
    instance-of p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;

    return p1
.end method

.method protected doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 5
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

    .line 6409
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->annotations:Ljava/util/List;

    invoke-static {v4, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 6

    .line 6414
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    new-instance v4, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    iget-object v5, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->annotations:Ljava/util/List;

    invoke-direct {v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6360
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez p1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    iget-object v1, v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    if-nez p1, :cond_8

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 6360
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

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

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method
