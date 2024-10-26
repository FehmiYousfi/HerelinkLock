.class public final Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;
.super Ljava/lang/Object;
.source "PseudoRandomFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final doExpansion(Ljavax/crypto/Mac;[B[BI)[B
    .locals 6

    .line 151
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    .line 152
    array-length v1, p1

    add-int/2addr v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 153
    new-array v2, p3, [B

    .line 156
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    array-length v3, p1

    add-int/2addr v3, v0

    array-length v5, p2

    invoke-static {p2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 160
    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->update([B)V

    move p1, v4

    .line 163
    :goto_0
    invoke-virtual {p0, v1, v4}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 165
    invoke-virtual {p0, v1}, Ljavax/crypto/Mac;->update([B)V

    add-int p2, p1, v0

    if-le p2, p3, :cond_0

    .line 170
    invoke-virtual {p0, v1, v4}, Ljavax/crypto/Mac;->doFinal([BI)V

    sub-int/2addr p3, p1

    .line 172
    invoke-static {v1, v4, v2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p0, v2, p1}, Ljavax/crypto/Mac;->doFinal([BI)V

    if-ne p2, p3, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {p0, v1, v4, v0}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljavax/crypto/ShortBufferException;->printStackTrace()V

    .line 188
    :goto_1
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    return-object v2
.end method

.method public static final doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;[B)[B
    .locals 1

    .line 107
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->access$000(Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;)[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->length()I

    move-result p2

    invoke-static {p0, p1, v0, p3, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;[BI)[B
    .locals 0

    .line 122
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->access$000(Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;)[B

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method static doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[B[BI)[B
    .locals 0

    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 85
    invoke-static {p0, p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->doExpansion(Ljavax/crypto/Mac;[B[BI)[B

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot run Pseudo Random Function with invalid key"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generateMasterSecret(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[BZ)Ljavax/crypto/SecretKey;
    .locals 0

    if-eqz p3, :cond_0

    .line 205
    sget-object p3, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->EXTENDED_MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    :goto_0
    invoke-static {p0, p1, p3, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;[B)[B

    move-result-object p0

    const-string p1, "MAC"

    .line 207
    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 208
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    return-object p1
.end method

.method public static generatePremasterSecretFromPSK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 3

    .line 228
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 229
    array-length v0, p1

    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p0, v0, [B

    .line 231
    :goto_0
    new-instance v1, Lorg/eclipse/californium/elements/util/DatagramWriter;

    array-length v2, p0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(IZ)V

    const/16 v0, 0x10

    .line 232
    invoke-virtual {v1, p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 233
    invoke-virtual {v1, p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 234
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    .line 235
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->close()V

    const-string v1, "MAC"

    .line 236
    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 237
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 238
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 239
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    return-object v1
.end method
