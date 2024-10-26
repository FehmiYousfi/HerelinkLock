.class public abstract Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.super Ljava/lang/Object;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;,
        Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;
    }
.end annotation


# instance fields
.field protected contextualActualTypeParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    return-void
.end method

.method private boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;-><init>(Ljava/lang/reflect/TypeVariable;)V

    return-object v0
.end method

.method private boundsOf(Ljava/lang/reflect/WildcardType;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;
    .locals 1

    .line 165
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 166
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public static inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 3

    const-string v0, "type"

    .line 279
    invoke-static {p0, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromClassGenericMetadataSupport;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 283
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 284
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;-><init>(Ljava/lang/reflect/ParameterizedType;)V

    return-object v0

    .line 287
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type meta-data for this Type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerTypeVariableIfNotPresent(Ljava/lang/reflect/TypeVariable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/TypeVariable;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private resolveGenericType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 3

    .line 253
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 254
    new-instance p2, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;

    invoke-direct {p2, p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$NotGenericReturnTypeSupport;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;Ljava/lang/reflect/Type;)V

    return-object p2

    .line 256
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p2

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {v0, p0, p2, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;[Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/ParameterizedType;)V

    return-object v0

    .line 259
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    .line 260
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p2

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p0, p2, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;[Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/TypeVariable;)V

    return-object v0

    .line 263
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ouch, it shouldn\'t happen, type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' on method : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not supported : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public actualTypeArguments()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 206
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 208
    invoke-virtual {p0, v4}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 210
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public extraInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 89
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 92
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 95
    :cond_1
    instance-of v0, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-eqz v0, :cond_2

    .line 96
    check-cast p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    invoke-interface {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 98
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw extraction not supported for : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    .line 219
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 221
    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public hasRawExtraInterfaces()Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawExtraInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rawExtraInterfaces()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public abstract rawType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected registerAllTypeVariables(Ljava/lang/reflect/Type;)V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 74
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->registerTypeVariablesOn(Ljava/lang/reflect/Type;)V

    .line 80
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 130
    invoke-direct {p0, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->registerTypeVariableIfNotPresent(Ljava/lang/reflect/TypeVariable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected registerTypeVariablesOn(Ljava/lang/reflect/Type;)V
    .locals 5

    .line 109
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 113
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 114
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x0

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 116
    aget-object v2, v0, v1

    .line 117
    aget-object v3, p1, v1

    .line 119
    instance-of v4, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, v3}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->boundsOf(Ljava/lang/reflect/WildcardType;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eq v2, v3, :cond_2

    .line 122
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 3

    .line 234
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    :goto_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 240
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object p1

    if-nez v1, :cond_1

    return-object p1

    .line 247
    :cond_1
    new-instance v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;

    invoke-direct {v0, p1, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;-><init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;I)V

    return-object v0
.end method
