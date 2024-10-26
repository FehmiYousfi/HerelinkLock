.class public final enum Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;
.super Ljava/lang/Enum;
.source "CertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientCertificateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum DSS_EPHEMERAL_DH_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum DSS_FIXED_DH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum DSS_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum ECDSA_FIXED_ECDH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum ECDSA_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum FORTEZZA_DMS_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_EPHEMERAL_DH_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_FIXED_DH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_FIXED_ECDH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;


# instance fields
.field private final code:I

.field private final keyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 222
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "RSA_SIGN"

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 223
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->DSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const/4 v4, 0x2

    const-string v5, "DSS_SIGN"

    invoke-direct {v0, v5, v3, v4, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->DSS_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 224
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const/4 v1, 0x3

    const/4 v5, 0x0

    const-string v6, "RSA_FIXED_DH"

    invoke-direct {v0, v6, v4, v1, v5}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_FIXED_DH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 225
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const/4 v6, 0x4

    const-string v7, "DSS_FIXED_DH"

    invoke-direct {v0, v7, v1, v6, v5}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->DSS_FIXED_DH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 226
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const/4 v7, 0x5

    const-string v8, "RSA_EPHEMERAL_DH_RESERVED"

    invoke-direct {v0, v8, v6, v7, v5}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_EPHEMERAL_DH_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 227
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const/4 v8, 0x6

    const-string v9, "DSS_EPHEMERAL_DH_RESERVED"

    invoke-direct {v0, v9, v7, v8, v5}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->DSS_EPHEMERAL_DH_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 228
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const-string v9, "FORTEZZA_DMS_RESERVED"

    const/16 v10, 0x14

    invoke-direct {v0, v9, v8, v10, v5}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->FORTEZZA_DMS_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 229
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    sget-object v9, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const/4 v10, 0x7

    const-string v11, "ECDSA_SIGN"

    const/16 v12, 0x40

    invoke-direct {v0, v11, v10, v12, v9}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->ECDSA_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 230
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const/16 v9, 0x8

    const-string v11, "RSA_FIXED_ECDH"

    const/16 v12, 0x41

    invoke-direct {v0, v11, v9, v12, v5}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_FIXED_ECDH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 231
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const/16 v11, 0x9

    const-string v12, "ECDSA_FIXED_ECDH"

    const/16 v13, 0x42

    invoke-direct {v0, v12, v11, v13, v5}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->ECDSA_FIXED_ECDH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    .line 220
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v5, v0, v2

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->DSS_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v2, v0, v3

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_FIXED_DH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v2, v0, v4

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->DSS_FIXED_DH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v2, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_EPHEMERAL_DH_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->DSS_EPHEMERAL_DH_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->FORTEZZA_DMS_RESERVED:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->ECDSA_SIGN:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->RSA_FIXED_ECDH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->ECDSA_FIXED_ECDH:Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    aput-object v1, v0, v11

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

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

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->code:I

    .line 238
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->keyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    return-void
.end method

.method public static getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;
    .locals 5

    .line 288
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->values()[Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 289
    iget v4, v3, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;
    .locals 1

    .line 220
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;
    .locals 1

    .line 220
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;

    return-object v0
.end method


# virtual methods
.method public getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->keyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 248
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->code:I

    return v0
.end method

.method public isCompatibleWithKeyAlgorithm(Ljava/lang/String;)Z
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->keyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->isCompatible(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public requiresSigningCapability()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest$ClientCertificateType;->keyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
