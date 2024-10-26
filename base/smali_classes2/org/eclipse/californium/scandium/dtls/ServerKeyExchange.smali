.class public abstract Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "ServerKeyExchange.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 34
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method
