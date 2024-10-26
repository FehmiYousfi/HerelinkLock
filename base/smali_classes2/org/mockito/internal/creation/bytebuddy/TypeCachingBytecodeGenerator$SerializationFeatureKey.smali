.class Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$SerializationFeatureKey;
.super Lnet/bytebuddy/TypeCache$SimpleKey;
.source "TypeCachingBytecodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationFeatureKey"
.end annotation


# instance fields
.field private final serializableMode:Lorg/mockito/mock/SerializableMode;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/mock/SerializableMode;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/TypeCache$SimpleKey;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 56
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$SerializationFeatureKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$SerializationFeatureKey;-><init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lnet/bytebuddy/TypeCache$SimpleKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 64
    :cond_2
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$SerializationFeatureKey;

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$SerializationFeatureKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$SerializationFeatureKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    invoke-virtual {v0, p1}, Lorg/mockito/mock/SerializableMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 70
    invoke-super {p0}, Lnet/bytebuddy/TypeCache$SimpleKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$SerializationFeatureKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    invoke-virtual {v1}, Lorg/mockito/mock/SerializableMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
