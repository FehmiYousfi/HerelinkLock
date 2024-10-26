.class Lorg/eclipse/californium/scandium/DTLSConnector$5;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

.field final synthetic val$record:Lorg/eclipse/californium/scandium/dtls/Record;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$5;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$5;->val$record:Lorg/eclipse/californium/scandium/dtls/Record;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$5;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 717
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$5;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$5;->val$record:Lorg/eclipse/californium/scandium/dtls/Record;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$5;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->processRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method
