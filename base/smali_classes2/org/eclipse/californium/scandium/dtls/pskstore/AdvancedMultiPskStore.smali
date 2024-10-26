.class public Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;
.super Ljava/lang/Object;
.source "AdvancedMultiPskStore.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;
    }
.end annotation


# static fields
.field private static final GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;


# instance fields
.field private volatile destroyed:Z

.field private final scopedIdentities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/scandium/util/ServerName;",
            "Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scopedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/scandium/util/ServerName;",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;",
            "Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->UNDEFINED:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    sget-object v1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/util/ServerName;->from(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    return-void
.end method

.method private addKnownPeer(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerName;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    .line 365
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 368
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 369
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-virtual {p0, p3, p4, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/util/ServerName;)V

    .line 373
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 363
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "identity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "virtual host must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "peer address must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getIdentityFromMap(Lorg/eclipse/californium/scandium/util/ServerName;Ljava/util/Map;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/util/ServerName;",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/scandium/util/ServerName;",
            "Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;",
            ">;)",
            "Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 458
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPskCredentials(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/util/Map;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;",
            "Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;",
            ">;)",
            "Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 166
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addKnownPeer(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 331
    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/ServerName;->fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p2

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p3}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->addKnownPeer(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerName;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    return-void
.end method

.method public addKnownPeer(Ljava/net/InetSocketAddress;Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V
    .locals 0

    .line 350
    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/ServerName;->fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->addKnownPeer(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerName;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    return-void
.end method

.method public addKnownPeer(Ljava/net/InetSocketAddress;Ljava/lang/String;[B)V
    .locals 2

    .line 294
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v1, p2}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->addKnownPeer(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerName;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    return-void
.end method

.method public addKnownPeer(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V
    .locals 1

    .line 312
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->addKnownPeer(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerName;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    return-void
.end method

.method public destroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x1

    .line 125
    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->destroyed:Z

    .line 126
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 127
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 128
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;

    .line 129
    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->access$200(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdentity(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    .line 101
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p2, p1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->getIdentityFromMap(Lorg/eclipse/californium/scandium/util/ServerName;Ljava/util/Map;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    monitor-enter v0

    .line 106
    :try_start_1
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/util/ServerNames;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/util/ServerName;

    .line 107
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedIdentities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->getIdentityFromMap(Lorg/eclipse/californium/scandium/util/ServerName;Ljava/util/Map;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    monitor-exit v0

    return-object v1

    .line 112
    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasEcdhePskSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->destroyed:Z

    return v0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1

    .line 384
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public removeKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 406
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/ServerName;->fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public removeKey(Ljava/lang/String;Lorg/eclipse/californium/scandium/util/ServerName;)V
    .locals 1

    .line 429
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;)V
    .locals 1

    .line 394
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;)V
    .locals 0

    .line 418
    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/ServerName;->fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public removeKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/util/ServerName;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 445
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 448
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 443
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "serverName must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "identity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;
    .locals 0

    if-eqz p3, :cond_4

    const/4 p4, 0x0

    if-nez p2, :cond_0

    .line 76
    iget-object p5, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    monitor-enter p5

    .line 77
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    sget-object p6, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    invoke-interface {p2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p3, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->getPskCredentials(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/util/Map;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;

    move-result-object p2

    .line 78
    monitor-exit p5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 80
    :cond_0
    iget-object p5, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    monitor-enter p5

    .line 81
    :try_start_1
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/util/ServerNames;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object p6, p4

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/eclipse/californium/scandium/util/ServerName;

    .line 82
    iget-object p7, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    invoke-interface {p7, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map;

    invoke-static {p3, p6}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->getPskCredentials(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/util/Map;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;

    move-result-object p6

    if-eqz p6, :cond_1

    :cond_2
    move-object p2, p6

    .line 87
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz p2, :cond_3

    .line 90
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->access$000(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object p4

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->access$100(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-direct {p3, p1, p4, p2}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;)V

    return-object p3

    .line 92
    :cond_3
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    invoke-direct {p2, p1, p3, p4}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;)V

    return-object p2

    :catchall_1
    move-exception p1

    .line 87
    :try_start_2
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 74
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "identity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKey(Ljava/lang/String;[B)V
    .locals 1

    .line 183
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    invoke-virtual {p0, v0, p2, p1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    .line 214
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/ServerName;->fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;[BLorg/eclipse/californium/scandium/util/ServerName;)V
    .locals 1

    .line 246
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V
    .locals 1

    .line 198
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->GLOBAL_SCOPE:Lorg/eclipse/californium/scandium/util/ServerName;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLjava/lang/String;)V
    .locals 0

    .line 230
    invoke-static {p3}, Lorg/eclipse/californium/scandium/util/ServerName;->fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/util/ServerName;)V

    return-void
.end method

.method public setKey(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/util/ServerName;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 270
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 273
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 274
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;->scopedKeys:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;

    const/4 v2, 0x0

    invoke-direct {p3, p1, p2, v2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$1;)V

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "serverName must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "identity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 0

    return-void
.end method
