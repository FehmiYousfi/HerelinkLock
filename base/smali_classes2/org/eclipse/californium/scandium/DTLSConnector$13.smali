.class Lorg/eclipse/californium/scandium/DTLSConnector$13;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->nextForEach(Ljava/util/Iterator;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$handler:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$next:Lorg/eclipse/californium/scandium/dtls/Connection;

.field final synthetic val$result:Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/util/Iterator;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$result:Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$handler:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;

    iput-object p4, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$next:Lorg/eclipse/californium/scandium/dtls/Connection;

    iput-object p5, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    .line 1395
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$result:Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$handler:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$next:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-interface {v1, v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;->accept(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1397
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$iterator:Ljava/util/Iterator;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$handler:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$result:Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;

    invoke-static {v1, v2, v3, v4}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1000(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/util/Iterator;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1403
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$result:Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1400
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$result:Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->failed(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$13;->val$result:Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done()V

    :cond_2
    throw v1
.end method
