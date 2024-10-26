.class Lorg/eclipse/californium/scandium/DTLSConnector$10;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$10;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1111
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$10;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$800(Lorg/eclipse/californium/scandium/DTLSConnector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1113
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Cleanup recent handshakes failed!"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
