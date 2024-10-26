.class final enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$2;
.super Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
.source "ByteArrayClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;-><init>(Ljava/lang/String;IZLnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$1;)V

    return-void
.end method


# virtual methods
.method protected lookup(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    .line 607
    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 612
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->access$500()Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method
