.class public Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;
.super Ljava/lang/Object;
.source "AdvancedSinglePskStore.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private final identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

.field private final secret:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 76
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 55
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    .line 87
    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->secret:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    const-string p1, "PSK"

    .line 66
    invoke-static {p2, p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->secret:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->secret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public getIdentity(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 0

    .line 112
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object p1
.end method

.method public hasEcdhePskSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->secret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/crypto/SecretKey;)Z

    move-result v0

    return v0
.end method

.method public requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;
    .locals 0

    .line 99
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {p2, p3}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->secret:Ljavax/crypto/SecretKey;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 102
    :goto_0
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    iget-object p4, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {p3, p1, p4, p2}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;)V

    return-object p3
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 0

    return-void
.end method
