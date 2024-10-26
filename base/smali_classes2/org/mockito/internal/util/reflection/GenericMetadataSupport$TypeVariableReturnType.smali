.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeVariableReturnType"
.end annotation


# instance fields
.field private rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final typeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field

.field private final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;[Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/reflection/GenericMetadataSupport;",
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    .line 386
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 387
    iput-object p3, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 388
    iget-object p1, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->contextualActualTypeParameters:Ljava/util/Map;

    .line 390
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->readTypeParameters()V

    .line 391
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->readTypeVariables()V

    return-void
.end method

.method private extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .line 447
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 454
    :cond_0
    instance-of v0, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-eqz v0, :cond_2

    .line 455
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 456
    instance-of v1, v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method private readTypeParameters()V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V

    return-void
.end method

.method private readTypeVariables()V
    .locals 5

    .line 399
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 400
    invoke-virtual {p0, v4}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeVariablesOn(Ljava/lang/reflect/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/TypeVariable;

    .line 402
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V

    .line 403
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeVariablesOn(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public extraInterfaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 417
    instance-of v1, v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-eqz v1, :cond_0

    .line 418
    check-cast v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;->interfaceBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 421
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 423
    :cond_1
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 426
    :cond_2
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot extract extra-interfaces from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' : \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rawExtraInterfaces()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extraInterfaces()Ljava/util/List;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 437
    invoke-virtual {p0, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 439
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 440
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public rawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType:Ljava/lang/Class;

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType:Ljava/lang/Class;

    return-object v0
.end method
