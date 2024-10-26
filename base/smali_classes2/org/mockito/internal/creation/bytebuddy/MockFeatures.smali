.class Lorg/mockito/internal/creation/bytebuddy/MockFeatures;
.super Ljava/lang/Object;
.source "MockFeatures.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final interfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final mockedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final serializableMode:Lorg/mockito/mock/SerializableMode;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/mock/SerializableMode;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 19
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    .line 20
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    return-void
.end method

.method public static withMockFeatures(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;)Lorg/mockito/internal/creation/bytebuddy/MockFeatures;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/mock/SerializableMode;",
            ")",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    invoke-direct {v0, p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;-><init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;)V

    return-object v0
.end method
