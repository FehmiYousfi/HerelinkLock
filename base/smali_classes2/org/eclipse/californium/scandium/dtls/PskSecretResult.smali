.class public Lorg/eclipse/californium/scandium/dtls/PskSecretResult;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeResult;
.source "PskSecretResult.java"


# static fields
.field public static final ALGORITHM_MAC:Ljava/lang/String; = "MAC"

.field public static final ALGORITHM_PSK:Ljava/lang/String; = "PSK"


# instance fields
.field private final pskIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

.field private final secret:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;Ljava/lang/Object;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p4}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 81
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string p4, "MAC"

    .line 82
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "PSK"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Secret must be either MAC for master secret, or PSK for secret key, but not "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 88
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->pskIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    .line 89
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->secret:Ljavax/crypto/SecretKey;

    return-void

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "PSK identity must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPskPublicInformation()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->pskIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object v0
.end method

.method public getSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->secret:Ljavax/crypto/SecretKey;

    return-object v0
.end method
