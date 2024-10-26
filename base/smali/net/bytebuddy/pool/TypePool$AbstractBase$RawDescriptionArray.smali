.class public Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RawDescriptionArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$Loaded;,
        Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "[",
        "Ljava/lang/Object;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentTypeReference:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)V"
        }
    .end annotation

    .line 762
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 763
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 764
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->values:Ljava/util/List;

    .line 765
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->componentTypeReference:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 803
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 804
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    .line 805
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->resolve()[Ljava/lang/Object;

    move-result-object v1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 810
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->resolve()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 794
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 795
    invoke-interface {v2, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 797
    :cond_0
    new-instance v1, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$Loaded;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->componentTypeReference:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;

    invoke-interface {v2}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;->lookup()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$Loaded;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 736
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->resolve()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resolve()[Ljava/lang/Object;
    .locals 5

    .line 770
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->componentTypeReference:Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;

    invoke-interface {v1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;->lookup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 772
    const-class v1, Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 774
    :cond_0
    const-class v1, Ljava/lang/Enum;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    const-class v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    goto :goto_0

    .line 776
    :cond_1
    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 777
    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    goto :goto_0

    .line 778
    :cond_2
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 779
    const-class v0, Ljava/lang/String;

    .line 783
    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 785
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue;

    add-int/lit8 v4, v1, 0x1

    .line 786
    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v1, v4

    goto :goto_1

    :cond_3
    return-object v0

    .line 781
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected complex array component type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 815
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toSourceString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
