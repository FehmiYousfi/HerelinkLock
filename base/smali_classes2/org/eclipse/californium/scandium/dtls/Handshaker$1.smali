.class Lorg/eclipse/californium/scandium/dtls/Handshaker$1;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker;->processNextMessages(Lorg/eclipse/californium/scandium/dtls/Record;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

.field final synthetic val$dRecord:Lorg/eclipse/californium/scandium/dtls/Record;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$1;->val$dRecord:Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 861
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$700(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$1;->val$dRecord:Lorg/eclipse/californium/scandium/dtls/Record;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$600(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->processRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method
