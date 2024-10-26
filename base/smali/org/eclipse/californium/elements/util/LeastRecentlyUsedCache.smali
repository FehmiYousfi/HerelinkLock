.class public Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;,
        Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;,
        Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener;,
        Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x249f0

.field public static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field public static final DEFAULT_THRESHOLD_SECS:J = 0x708L


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile capacity:I

.field private volatile evictOnReadAccess:Z

.field private final evictionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private volatile expirationThresholdNanos:J

.field private header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile updateOnReadAccess:Z

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 133
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x10

    const v2, 0x249f0

    const-wide/16 v3, 0x708

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 6

    .line 164
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->evictOnReadAccess:Z

    .line 122
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->updateOnReadAccess:Z

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->evictionListeners:Ljava/util/List;

    if-gt p1, p2, :cond_0

    .line 186
    iput p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->capacity:I

    .line 187
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    .line 188
    invoke-virtual {p0, p3, p4, p5}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->setExpirationThreshold(JLjava/util/concurrent/TimeUnit;)V

    .line 189
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->initLinkedList()V

    return-void

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initial capacity must be <= max capacity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IJ)V
    .locals 7

    const/16 v0, 0x10

    .line 148
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private final access(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;>;)TV;"
        }
    .end annotation

    .line 569
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->evictOnReadAccess:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->expirationThresholdNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->expirationThresholdNanos:J

    invoke-static {p1, v0, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$400(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;J)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 573
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 575
    :cond_0
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :goto_0
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 578
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->notifyEvictionListeners(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 581
    :cond_1
    iget-boolean p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->updateOnReadAccess:Z

    if-eqz p2, :cond_2

    .line 582
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$1200(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 584
    :cond_2
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$1300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)Ljava/util/Map;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-object p0
.end method

.method private add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 437
    new-instance v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;)V

    .line 438
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$800(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    return-void
.end method

.method private add(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 507
    new-instance v6, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;)V

    .line 508
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$200(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-ne p1, p2, :cond_0

    .line 511
    invoke-static {v6, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$800(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    goto :goto_0

    .line 514
    :cond_0
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$200(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$900(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)J

    move-result-wide v0

    sub-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 515
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$200(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object p2

    .line 516
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-ne p2, p1, :cond_0

    .line 520
    :cond_1
    invoke-static {v6, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$800(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    :goto_0
    return-void
.end method

.method private initLinkedList()V
    .locals 2

    .line 194
    new-instance v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;-><init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 195
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$202(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$102(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-void
.end method

.method private notifyEvictionListeners(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->evictionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener;

    .line 420
    invoke-interface {v1, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener;->onEviction(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addEvictionListener(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener<",
            "TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->evictionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 366
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->initLinkedList()V

    return-void
.end method

.method public final find(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 696
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->find(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final find(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
            "TV;>;Z)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 717
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 718
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 720
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    invoke-direct {p0, v1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 535
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-nez p1, :cond_1

    return-object v0

    .line 539
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCapacity()I
    .locals 1

    .line 323
    iget v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->capacity:I

    return v0
.end method

.method final getEldest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExpirationThreshold()J
    .locals 3

    .line 277
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->expirationThresholdNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimestamped(Ljava/lang/Object;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 557
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-nez p1, :cond_1

    return-object v0

    .line 561
    :cond_1
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$1100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;

    move-result-object v1

    .line 562
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->access(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public isEvictingOnReadAccess()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->evictOnReadAccess:Z

    return v0
.end method

.method public isUpdatingOnReadAccess()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->updateOnReadAccess:Z

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 396
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 398
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 399
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->capacity:I

    if-ge v0, v2, :cond_1

    .line 402
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 405
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v0

    .line 406
    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->expirationThresholdNanos:J

    invoke-static {v0, v2, v3}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$400(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 408
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->notifyEvictionListeners(Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)Z"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 473
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 475
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 476
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->add(Ljava/lang/Object;Ljava/lang/Object;J)V

    return v1

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->capacity:I

    if-ge v0, v2, :cond_1

    .line 479
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->add(Ljava/lang/Object;Ljava/lang/Object;J)V

    return v1

    .line 482
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v0

    .line 483
    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->expirationThresholdNanos:J

    invoke-static {v0, v2, v3}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$400(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$900(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)J

    move-result-wide v2

    sub-long v2, p3, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 484
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 485
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->add(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 487
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->notifyEvictionListeners(Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final remainingCapacity()I
    .locals 2

    .line 358
    iget v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->capacity:I

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 622
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-eqz p1, :cond_1

    .line 624
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 625
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 645
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-eqz v1, :cond_1

    .line 647
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_1

    .line 648
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public final removeExpiredEntries(I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    if-ge v0, p1, :cond_2

    .line 666
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    move-result-object v1

    .line 667
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-ne v2, v1, :cond_1

    goto :goto_1

    .line 670
    :cond_1
    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->expirationThresholdNanos:J

    invoke-static {v1, v2, v3}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$400(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    .line 672
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->notifyEvictionListeners(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final setCapacity(I)V
    .locals 0

    .line 339
    iput p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->capacity:I

    return-void
.end method

.method public setEvictingOnReadAccess(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->evictOnReadAccess:Z

    return-void
.end method

.method public final setExpirationThreshold(J)V
    .locals 1

    .line 295
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->setExpirationThreshold(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final setExpirationThreshold(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 314
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->expirationThresholdNanos:J

    return-void
.end method

.method public setUpdatingOnReadAccess(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->updateOnReadAccess:Z

    return-void
.end method

.method public final size()I
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final timestampedIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped<",
            "TV;>;>;"
        }
    .end annotation

    .line 933
    new-instance v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$3;-><init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)V

    return-object v0
.end method

.method public final update(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 601
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    if-nez p1, :cond_1

    return v0

    .line 605
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->header:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    invoke-static {p1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->access$1200(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;-><init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;)V

    .line 912
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public final valuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 786
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->valuesIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final valuesIterator(Z)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 813
    new-instance v1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;-><init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;Ljava/util/Iterator;Z)V

    return-object v1
.end method
