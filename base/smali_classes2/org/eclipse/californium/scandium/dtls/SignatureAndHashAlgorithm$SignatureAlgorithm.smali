.class public final enum Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ANONYMOUS:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum DSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;


# instance fields
.field private final certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

.field private final code:I

.field private final isIntrinsic:Z

.field private final keyAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 164
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const/4 v1, 0x0

    const-string v2, "ANONYMOUS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v1, v3}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const/4 v3, 0x1

    const-string v4, "RSA"

    invoke-direct {v0, v4, v3, v3, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->DSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const/4 v4, 0x2

    const-string v5, "DSA"

    invoke-direct {v0, v5, v4, v4, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    sget-object v10, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const-string v7, "ECDSA"

    const/4 v8, 0x3

    const/4 v9, 0x3

    const-string v11, "EC"

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Ljava/lang/String;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 171
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const-string v14, "ED25519"

    const/4 v15, 0x4

    const/16 v16, 0x7

    const-string v18, "OID.1.3.101.112"

    const/16 v19, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Ljava/lang/String;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 177
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    sget-object v9, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const-string v6, "ED448"

    const/4 v7, 0x5

    const/16 v8, 0x8

    const-string v10, "OID.1.3.101.113"

    const/4 v11, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Ljava/lang/String;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 162
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v2, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ")V"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->code:I

    .line 186
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 187
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->keyAlgorithm:Ljava/lang/String;

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isIntrinsic:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->code:I

    .line 194
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 195
    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->keyAlgorithm:Ljava/lang/String;

    .line 196
    iput-boolean p6, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isIntrinsic:Z

    return-void
.end method

.method public static getAlgorithmByCode(I)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object p0

    .line 221
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object p0

    .line 219
    :cond_2
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object p0

    .line 217
    :cond_3
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object p0

    .line 215
    :cond_4
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object p0

    .line 213
    :cond_5
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object p0
.end method

.method public static intrinsicValueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 6

    const/4 v0, 0x0

    .line 309
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 311
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->values()[Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 312
    iget-boolean v5, v4, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isIntrinsic:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is no supported intrinsic algorithm!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is unknown intrinsic algorithm!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    .line 162
    const-class v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    .line 162
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 240
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->code:I

    return v0
.end method

.method public isIntrinsic()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isIntrinsic:Z

    return v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->keyAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isSupported(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 256
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    if-ne v0, p0, :cond_5

    :cond_1
    const/4 v0, 0x0

    .line 257
    invoke-static {p1, v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 259
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string v1, "EdDSA"

    if-ne v0, p0, :cond_3

    const-string v0, "OID.1.3.101.112"

    if-eq v0, p1, :cond_2

    if-ne v1, p1, :cond_5

    :cond_2
    const-string p1, "Ed25519"

    .line 261
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isSupported(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "OID.1.3.101.113"

    if-eq v0, p1, :cond_4

    if-ne v1, p1, :cond_5

    :cond_4
    const-string p1, "Ed448"

    .line 265
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isSupported(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public isSupported(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
