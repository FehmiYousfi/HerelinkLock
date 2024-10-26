.class Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask$1;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 0

    .line 2138
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask$1;->val$this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2141
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask$1;->val$this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$700(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask$1;->val$this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeCompleted()V

    :cond_0
    return-void
.end method
