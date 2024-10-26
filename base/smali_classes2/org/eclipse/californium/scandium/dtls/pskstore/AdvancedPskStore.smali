.class public interface abstract Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;
.super Ljava/lang/Object;
.source "AdvancedPskStore.java"


# virtual methods
.method public abstract getIdentity(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
.end method

.method public abstract hasEcdhePskSupported()Z
.end method

.method public abstract requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;
.end method

.method public abstract setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
.end method
