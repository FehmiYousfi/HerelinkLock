.class Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask$1;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$flight:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

.field final synthetic val$this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 0

    .line 2126
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask$1;->val$this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask$1;->val$flight:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2129
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask$1;->val$this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask$1;->val$flight:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$1000(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    return-void
.end method
