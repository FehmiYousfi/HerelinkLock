.class Lorg/eclipse/californium/scandium/DTLSConnector$12;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->startTerminateConnectionsForPrincipal(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
        "Lorg/eclipse/californium/scandium/dtls/Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$principalHandler:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;

.field final synthetic val$removeFromSessionCache:Z


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)V
    .locals 0

    .line 1338
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$12;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$12;->val$principalHandler:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;

    iput-boolean p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$12;->val$removeFromSessionCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    .line 1338
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector$12;->accept(Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    move-result p1

    return p1
.end method

.method public accept(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
    .locals 2

    .line 1343
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$12;->val$principalHandler:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;

    invoke-interface {v1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$12;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$700(Lorg/eclipse/californium/scandium/DTLSConnector;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$12;->val$removeFromSessionCache:Z

    invoke-interface {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
