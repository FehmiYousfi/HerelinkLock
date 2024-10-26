.class public abstract Lorg/eclipse/californium/scandium/dtls/ClientKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "ClientKeyExchange.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 35
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method
