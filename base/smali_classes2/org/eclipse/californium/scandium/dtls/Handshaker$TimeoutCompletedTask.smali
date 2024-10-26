.class Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask;
.super Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;
.source "Handshaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutCompletedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 3

    .line 2137
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask;->this$0:Lorg/eclipse/californium/scandium/dtls/Handshaker;

    .line 2138
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask$1;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask$1;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Runnable;ZLorg/eclipse/californium/scandium/dtls/Handshaker$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Handshaker$1;)V
    .locals 0

    .line 2135
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    return-void
.end method
