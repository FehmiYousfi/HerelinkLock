.class Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->timestampedIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field counter:I

.field current:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final max:I

.field final synthetic this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access$1500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->max:I

    .line 936
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access$1600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->current:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 940
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->current:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access$1600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->counter:I

    iget v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->max:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->next()Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped<",
            "TV;>;"
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->counter:I

    .line 949
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->current:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->current:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 950
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;->current:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$1100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;

    move-result-object v0

    return-object v0

    .line 946
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 955
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
