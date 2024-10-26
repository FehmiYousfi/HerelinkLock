.class Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;
.super Ljava/lang/Object;
.source "WeakConcurrentSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReducingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Iterator;Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$ReducingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
