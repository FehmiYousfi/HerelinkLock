.class Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask;
.super Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;
.source "Handshaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutPeerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 2

    .line 2125
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    .line 2126
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask$1;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask$1;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Runnable;ZLorg/eclipse/californium/scandium/dtls/Handshaker$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/Handshaker$1;)V
    .locals 0

    .line 2123
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    return-void
.end method
