.class public Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.super Ljava/lang/ref/ReferenceQueue;
.source "WeakConcurrentMap.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;,
        Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;,
        Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;,
        Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;,
        Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/ReferenceQueue<",
        "TK;>;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field final target:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private final thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->ID:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    if-eqz p1, :cond_0

    .line 39
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->thread:Ljava/lang/Thread;

    .line 40
    iget-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->thread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weak-ref-cleaner-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->ID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 42
    iget-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->thread:Ljava/lang/Thread;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 43
    iget-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->thread:Ljava/lang/Thread;

    :goto_0
    return-void
.end method


# virtual methods
.method public approximateSize()I
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;

    invoke-direct {v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method protected defaultValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public expungeStaleEntries()V
    .locals 2

    .line 126
    :goto_0
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;

    invoke-direct {v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->defaultValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;

    invoke-direct {v2, p1, p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public getCleanerThread()Ljava/lang/Thread;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;

    iget-object v1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/util/Iterator;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 84
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;

    invoke-direct {v1, p1, p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;

    invoke-direct {v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public run()V
    .locals 2

    .line 144
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->clear()V

    return-void
.end method
