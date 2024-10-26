.class Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;
.super Ljava/util/AbstractCollection;
.source "LeastRecentlyUsedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 899
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 909
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 883
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    new-instance v1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2$1;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2$1;-><init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->find(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 904
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 878
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access$1500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
