.class Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "WeakConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 193
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 203
    instance-of v0, p1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 204
    check-cast p1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;

    iget-object p1, p1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$LatentKey;->key:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 206
    :cond_1
    check-cast p1, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;

    invoke-virtual {p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 198
    iget v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;->hashCode:I

    return v0
.end method
