.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotGenericReturnTypeSupport"
.end annotation


# instance fields
.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    .line 498
    check-cast p2, Ljava/lang/Class;

    iput-object p2, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;->returnType:Ljava/lang/Class;

    .line 499
    iget-object p1, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;->contextualActualTypeParameters:Ljava/util/Map;

    .line 501
    iget-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;->returnType:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;->registerAllTypeVariables(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public rawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;->returnType:Ljava/lang/Class;

    return-object v0
.end method
