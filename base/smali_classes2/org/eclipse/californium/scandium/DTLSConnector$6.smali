.class Lorg/eclipse/californium/scandium/DTLSConnector$6;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->close(Ljava/net/InetSocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$6;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$6;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 816
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$6;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$6;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$600(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method
