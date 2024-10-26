.class Lorg/eclipse/californium/scandium/DTLSConnector$17;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->processNewClientHello(Lorg/eclipse/californium/scandium/dtls/Record;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$clientConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

.field final synthetic val$record:Lorg/eclipse/californium/scandium/dtls/Record;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 2117
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$17;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$17;->val$record:Lorg/eclipse/californium/scandium/dtls/Record;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$17;->val$clientConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2121
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$17;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$17;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$17;->val$record:Lorg/eclipse/californium/scandium/dtls/Record;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$17;->val$clientConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0, v1, v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1300(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    :cond_0
    return-void
.end method
