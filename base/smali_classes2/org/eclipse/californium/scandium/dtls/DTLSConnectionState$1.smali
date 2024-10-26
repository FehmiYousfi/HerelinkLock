.class final Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState$1;
.super Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
.source "DTLSConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    return-void
.end method


# virtual methods
.method public decrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .locals 0

    return-object p2
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    return-void
.end method

.method public encrypt(Lorg/eclipse/californium/scandium/dtls/Record;[B)[B
    .locals 0

    return-object p2
.end method

.method public isDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DtlsNullConnectionState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tCipher suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState$1;->cipherSuite:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tCompression method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState$1;->compressionMethod:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    .line 83
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not suppported!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
