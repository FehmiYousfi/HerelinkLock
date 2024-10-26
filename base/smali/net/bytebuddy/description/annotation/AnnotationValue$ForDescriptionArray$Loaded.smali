.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "[TW;>;"
    }
.end annotation


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TW;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TW;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;)V"
        }
    .end annotation

    .line 1851
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    .line 1852
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->componentType:Ljava/lang/Class;

    .line 1853
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1896
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1897
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1898
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->isResolved()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1899
    :cond_2
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object p1

    .line 1900
    instance-of v1, p1, [Ljava/lang/Object;

    if-nez v1, :cond_3

    return v2

    .line 1901
    :cond_3
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 1902
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    array-length v3, p1

    if-eq v1, v3, :cond_4

    return v2

    .line 1903
    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1904
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, p1, v4

    .line 1905
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1906
    invoke-interface {v6}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    move-result-object v7

    invoke-virtual {v7}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->isResolved()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
    .locals 2

    .line 1858
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1859
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->isResolved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1860
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object v0

    .line 1863
    :cond_1
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1916
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    mul-int/lit8 v1, v1, 0x1f

    .line 1917
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 6

    .line 1879
    instance-of v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1880
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->componentType:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    return v1

    .line 1881
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 1882
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v2, p1

    if-eq v0, v2, :cond_2

    return v1

    .line 1883
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1884
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 1885
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1886
    invoke-interface {v5, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->represents(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1833
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->resolve()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resolve()[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TW;"
        }
    .end annotation

    .line 1869
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->componentType:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1871
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    add-int/lit8 v4, v2, 0x1

    .line 1872
    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1924
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray$Loaded;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toSourceString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
