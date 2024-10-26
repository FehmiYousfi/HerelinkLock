.class public Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;
.super Ljava/lang/Object;
.source "GenericMetadataSupport.java"

# interfaces
.implements Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeVarBoundedType"
.end annotation


# instance fields
.field private final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;)Ljava/lang/reflect/TypeVariable;
    .locals 0

    .line 546
    iget-object p0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 576
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 578
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    check-cast p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;

    iget-object p1, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public firstBound()Ljava/lang/reflect/Type;
    .locals 2

    .line 557
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceBounds()[Ljava/lang/reflect/Type;
    .locals 5

    .line 568
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 569
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{firstBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interfaceBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->interfaceBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeVariable()Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    return-object v0
.end method
