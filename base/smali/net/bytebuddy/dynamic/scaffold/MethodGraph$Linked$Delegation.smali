.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;
.super Ljava/lang/Object;
.source "MethodGraph.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegation"
.end annotation


# instance fields
.field private final interfaceGraphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

.field private final superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    .line 131
    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    .line 132
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 104
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getInterfaceGraph(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 1

    .line 142
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    if-nez p1, :cond_0

    .line 143
    sget-object p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    :cond_0
    return-object p1
.end method

.method public getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 1

    .line 137
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 104
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;
    .locals 1

    .line 155
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v0

    return-object v0
.end method

.method public locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    .locals 1

    .line 150
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object p1

    return-object p1
.end method
