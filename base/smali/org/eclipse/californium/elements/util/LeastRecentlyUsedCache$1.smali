.class Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->valuesIterator(Z)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private hasNextCalled:Z

.field private nextEntry:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$readAccess:Z


# direct methods
.method constructor <init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;Ljava/util/Iterator;Z)V
    .locals 0

    .line 813
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    iput-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->val$iterator:Ljava/util/Iterator;

    iput-boolean p3, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->val$readAccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 820
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->hasNextCalled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 821
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->nextEntry:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 822
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 824
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->val$readAccess:Z

    if-eqz v2, :cond_1

    .line 825
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    monitor-enter v2

    .line 826
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->this$0:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    iget-object v4, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->val$iterator:Ljava/util/Iterator;

    invoke-static {v3, v0, v4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access$1300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 827
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->nextEntry:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 828
    monitor-exit v2

    goto :goto_1

    .line 830
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 832
    :cond_1
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->nextEntry:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 836
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->hasNextCalled:Z

    .line 838
    :cond_3
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->nextEntry:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 843
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->hasNext()Z

    const/4 v0, 0x0

    .line 844
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->hasNextCalled:Z

    .line 845
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;->nextEntry:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-eqz v0, :cond_0

    .line 848
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$1400(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 846
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 853
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
