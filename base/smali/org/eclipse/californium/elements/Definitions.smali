.class public Lorg/eclipse/californium/elements/Definitions;
.super Ljava/lang/Object;
.source "Definitions.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/eclipse/californium/elements/Definition<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final definitions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/Definitions;->definitions:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    iput-object p1, p0, Lorg/eclipse/californium/elements/Definitions;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/californium/elements/Definitions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/Definitions<",
            "TT;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/Definitions;->definitions:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    iput-object p1, p0, Lorg/eclipse/californium/elements/Definitions;->name:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lorg/eclipse/californium/elements/Definitions;->definitions:Ljava/util/concurrent/ConcurrentMap;

    iget-object p2, p2, Lorg/eclipse/californium/elements/Definitions;->definitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/elements/Definitions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/Definitions<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definitions;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/Definitions;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definitions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/eclipse/californium/elements/Definitions<",
            "TT;>;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/Definitions;->addIfAbsent(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/californium/elements/Definitions;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definition;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addIfAbsent(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lorg/eclipse/californium/elements/Definitions;->definitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definition;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/Definition;

    return-object p1

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public contains(Lorg/eclipse/californium/elements/Definition;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definition;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/Definitions;->get(Ljava/lang/String;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/californium/elements/Definition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/eclipse/californium/elements/Definitions;->definitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/Definition;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/eclipse/californium/elements/Definitions;->name:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/eclipse/californium/elements/Definitions;->definitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
