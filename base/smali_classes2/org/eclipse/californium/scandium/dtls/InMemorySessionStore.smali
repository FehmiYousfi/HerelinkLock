.class public Lorg/eclipse/californium/scandium/dtls/InMemorySessionStore;
.super Ljava/lang/Object;
.source "InMemorySessionStore.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/SessionStore;


# instance fields
.field private final store:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache<",
            "Lorg/eclipse/californium/scandium/dtls/SessionId;",
            "Lorg/eclipse/californium/scandium/dtls/DTLSSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;-><init>(IJ)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemorySessionStore;->store:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    .line 47
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemorySessionStore;->store:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->setEvictingOnReadAccess(Z)V

    .line 48
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemorySessionStore;->store:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->setUpdatingOnReadAccess(Z)V

    return-void
.end method


# virtual methods
.method public get(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemorySessionStore;->store:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;-><init>(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public put(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;-><init>(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    .line 55
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemorySessionStore;->store:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/eclipse/californium/scandium/dtls/SessionId;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemorySessionStore;->store:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    .line 70
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    return-void
.end method
