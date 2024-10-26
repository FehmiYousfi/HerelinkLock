.class public Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;
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
    name = "WildCardBoundedType"
.end annotation


# instance fields
.field private final wildcard:Ljava/lang/reflect/WildcardType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 633
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    check-cast p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;

    invoke-static {p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;->access$000(Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVarBoundedType;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public firstBound()Ljava/lang/reflect/Type;
    .locals 4

    .line 617
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 620
    array-length v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    aget-object v0, v1, v3

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 641
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceBounds()[Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{firstBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interfaceBounds=[]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wildCard()Ljava/lang/reflect/WildcardType;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$WildCardBoundedType;->wildcard:Ljava/lang/reflect/WildcardType;

    return-object v0
.end method
