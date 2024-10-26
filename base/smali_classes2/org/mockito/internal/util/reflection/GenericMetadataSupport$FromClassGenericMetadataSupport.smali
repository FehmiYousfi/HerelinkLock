.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FromClassGenericMetadataSupport"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 304
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    .line 305
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;->clazz:Ljava/lang/Class;

    .line 307
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;->registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V

    .line 308
    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;->registerAllTypeVariables(Ljava/lang/reflect/Type;)V

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

    .line 313
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;->clazz:Ljava/lang/Class;

    return-object v0
.end method
