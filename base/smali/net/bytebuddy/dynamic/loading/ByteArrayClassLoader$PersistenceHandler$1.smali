.class final enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$1;
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

    .line 578
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

    .line 581
    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;
    .locals 3
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

    const-string v0, ".class"

    .line 586
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->access$500()Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "/"

    .line 588
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 591
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-interface {p2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-nez p2, :cond_2

    .line 594
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->access$500()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction;-><init>(Ljava/lang/String;[B)V

    .line 595
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    :goto_0
    return-object p1
.end method
