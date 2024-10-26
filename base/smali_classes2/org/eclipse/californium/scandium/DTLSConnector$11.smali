.class Lorg/eclipse/californium/scandium/DTLSConnector$11;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->startDropConnectionsForPrincipal(Ljava/security/Principal;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
        "Ljava/security/Principal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$principal:Ljava/security/Principal;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/security/Principal;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$11;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$11;->val$principal:Ljava/security/Principal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    .line 1285
    check-cast p1, Ljava/security/Principal;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector$11;->accept(Ljava/security/Principal;)Z

    move-result p1

    return p1
.end method

.method public accept(Ljava/security/Principal;)Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$11;->val$principal:Ljava/security/Principal;

    invoke-interface {v0, p1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
