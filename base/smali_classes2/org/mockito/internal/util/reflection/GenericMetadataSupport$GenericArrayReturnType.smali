.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericArrayReturnType"
.end annotation


# instance fields
.field private final arity:I

.field private final genericArrayType:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;I)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    .line 472
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->genericArrayType:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    .line 473
    iput p2, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->arity:I

    return-void
.end method


# virtual methods
.method public rawType()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->genericArrayType:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 480
    :goto_0
    iget v4, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->arity:I

    if-ge v3, v4, :cond_0

    const-string v4, "["

    .line 481
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "L"

    .line 484
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 486
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This was not supposed to happend"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
