.class public final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final CIPHER_SUITE_BITS:I = 0x10

.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final STRONG_ENCRYPTION_PREFERENCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_AES_128_CCM_8_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_AES_128_CCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_PSK_WITH_AES_256_GCM_SHA378:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field public static final enum TLS_PSK_WITH_AES_256_GCM_SHA378:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

.field private static overallMaxCipherTextExpansion:I


# instance fields
.field private final certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

.field private final cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field private final code:I

.field private final keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field private final macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

.field private final maxCipherTextExpansion:I

.field private final pseudoRandomFunction:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

.field private final recommendedCipherSuite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 97
    new-instance v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_GCM_SHA256"

    const/4 v2, 0x0

    const v3, 0xd001

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 101
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    const-string v10, "TLS_ECDHE_PSK_WITH_AES_256_GCM_SHA378"

    const/4 v11, 0x1

    const v12, 0xd002

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_GCM_SHA378:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 103
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v2, "TLS_ECDHE_PSK_WITH_AES_128_CCM_8_SHA256"

    const/4 v3, 0x2

    const v4, 0xd003

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CCM_8_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 104
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v10, "TLS_ECDHE_PSK_WITH_AES_128_CCM_SHA256"

    const/4 v11, 0x3

    const v12, 0xd005

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 106
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v2, "TLS_PSK_WITH_AES_128_GCM_SHA256"

    const/4 v3, 0x4

    const/16 v4, 0xa8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 110
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    const-string v10, "TLS_PSK_WITH_AES_256_GCM_SHA378"

    const/4 v11, 0x5

    const/16 v12, 0xa9

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_256_GCM_SHA378:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 112
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v2, "TLS_PSK_WITH_AES_128_CCM_8"

    const/4 v3, 0x6

    const v4, 0xc0a8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 113
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v10, "TLS_PSK_WITH_AES_256_CCM_8"

    const/4 v11, 0x7

    const v12, 0xc0a9

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 114
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v2, "TLS_PSK_WITH_AES_128_CCM"

    const/16 v3, 0x8

    const v4, 0xc0a4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 115
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v10, "TLS_PSK_WITH_AES_256_CCM"

    const/16 v11, 0x9

    const v12, 0xc0a5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 118
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v2, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v3, 0xa

    const v4, 0xc037

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 119
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v16, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v11, "TLS_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v12, 0xb

    const/16 v13, 0xae

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 122
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const/16 v3, 0xc

    const v4, 0xc02b

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 123
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const/16 v11, 0xd

    const v12, 0xc02c

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 124
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8"

    const/16 v3, 0xe

    const v4, 0xc0ae

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 125
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8"

    const/16 v11, 0xf

    const v12, 0xc0af

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 126
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CCM"

    const/16 v3, 0x10

    const v4, 0xc0ac

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 127
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_256_CCM"

    const/16 v11, 0x11

    const v12, 0xc0ad

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 128
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const/16 v3, 0x12

    const v4, 0xc023

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 129
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v16, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    sget-object v19, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    const-string v11, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const/16 v12, 0x13

    const v13, 0xc024

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 130
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA1:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/16 v3, 0x14

    const v4, 0xc00a

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 133
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v16, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const-string v11, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v12, 0x15

    const v13, 0xc02f

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 134
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v9, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v3, 0x16

    const v4, 0xc030

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 135
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v16, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v11, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v12, 0x17

    const v13, 0xc027

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 136
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    sget-object v10, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const/16 v3, 0x18

    const v4, 0xc028

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 137
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v16, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v17, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v18, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA1:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v12, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v13, 0x19

    const v14, 0xc014

    const/16 v19, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 140
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v2, "TLS_NULL_WITH_NULL_NULL"

    const/16 v3, 0x1a

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v0, 0x1b

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 65
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_GCM_SHA378:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CCM_8_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_256_GCM_SHA378:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0x9

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0xa

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0xb

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0xc

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0xd

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0xe

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0xf

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v4, 0x10

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x11

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x12

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x13

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x14

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x15

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x16

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x17

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x18

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x19

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v3, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    .line 150
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v5, v1, v2

    invoke-static {v2, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuitesByKeyExchangeAlgorithm(Z[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v1, v3, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    .line 151
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v5, v1, v2

    invoke-static {v2, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuitesByKeyExchangeAlgorithm(Z[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v1, v3, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    .line 152
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v3, v1, v2

    invoke-static {v2, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuitesByKeyExchangeAlgorithm(Z[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 157
    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 158
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->STRONG_ENCRYPTION_PREFERENCE:Ljava/util/List;

    .line 167
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->LOGGER:Lorg/slf4j/Logger;

    .line 170
    sput v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->overallMaxCipherTextExpansion:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;",
            "Z)V"
        }
    .end annotation

    .line 192
    sget-object v9, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;",
            "Z",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;",
            ")V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->code:I

    .line 201
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 202
    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    .line 203
    iput-object p6, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 204
    iput-object p7, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    .line 205
    iput-boolean p8, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->recommendedCipherSuite:Z

    .line 206
    iput-object p9, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->pseudoRandomFunction:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    .line 207
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$CipherType:[I

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$000(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 221
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->maxCipherTextExpansion:I

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {p6}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result p1

    invoke-static {p6}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$200(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->maxCipherTextExpansion:I

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {p6}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result p1

    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getOutputLength()I

    move-result p3

    add-int/2addr p1, p3

    invoke-static {p6}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->maxCipherTextExpansion:I

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;",
            "Z)V"
        }
    .end annotation

    .line 188
    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    sget-object v9, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;",
            "Z",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;",
            ")V"
        }
    .end annotation

    .line 196
    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;-><init>(Ljava/lang/String;IILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;ZLorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;)V

    return-void
.end method

.method public static containsCipherSuiteRequiringCertExchange(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 861
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 862
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static containsEccBasedCipherSuite(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 841
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 842
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static containsPskBasedCipherSuite(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 822
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 823
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isPskBased()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getCertificateCipherSuites(ZLjava/security/PublicKey;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/security/PublicKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    const/4 v1, 0x0

    .line 666
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->getAlgorithm(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateCipherSuites(ZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 664
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Public key must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCertificateCipherSuites(ZLjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 716
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 721
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p0, :cond_0

    .line 722
    iget-boolean v5, v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->recommendedCipherSuite:Z

    if-eqz v5, :cond_1

    .line 723
    :cond_0
    iget-object v5, v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 724
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 717
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Certificate key algorithms must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 714
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Certificate key algorithms must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs getCertificateCipherSuites(Z[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 690
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 693
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateCipherSuites(ZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 691
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Certificate key algorithms must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 688
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Certificate key algorithms must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCertificateKeyAlgorithms(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 742
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object v2

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    if-eq v2, v3, :cond_0

    .line 743
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCipherSuites(ZZ)[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 6

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 569
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    if-eq v4, v5, :cond_2

    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 571
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isRecommended()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 572
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-object p0
.end method

.method public static getCipherSuitesByKeyExchangeAlgorithm(ZZLjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 624
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 629
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    .line 630
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    if-eqz p0, :cond_1

    .line 631
    iget-boolean v6, v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->recommendedCipherSuite:Z

    if-eqz v6, :cond_2

    .line 632
    :cond_1
    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {p2, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 633
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 639
    :cond_3
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object p1

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, p1, v1

    if-eqz p0, :cond_4

    .line 640
    iget-boolean v4, v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->recommendedCipherSuite:Z

    if-eqz v4, :cond_5

    .line 641
    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 642
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v0

    .line 625
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyExchangeAlgorithms must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 623
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "KeyExchangeAlgorithms must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs getCipherSuitesByKeyExchangeAlgorithm(Z[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 596
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 599
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuitesByKeyExchangeAlgorithm(ZZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 597
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyExchangeAlgorithms must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 595
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "KeyExchangeAlgorithms must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOverallMaxCiphertextExpansion()I
    .locals 6

    .line 543
    sget v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->overallMaxCipherTextExpansion:I

    if-nez v0, :cond_2

    .line 545
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 546
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 547
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMaxCiphertextExpansion()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_1
    sput v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->overallMaxCipherTextExpansion:I

    .line 552
    :cond_2
    sget v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->overallMaxCipherTextExpansion:I

    return v0
.end method

.method public static getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 5

    .line 758
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 759
    iget v4, v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_1
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot resolve cipher suite code [{}]"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTypeByName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 5

    .line 778
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 779
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    :cond_1
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Cannot resolve cipher suite code [{}]"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs getTypesByNames([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 801
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 802
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getTypeByName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 804
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object p0, p0, v2

    aput-object p0, v3, v1

    const-string p0, "Cipher suite [%s] is not (yet) supported"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static listFromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/DatagramReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 930
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    .line 931
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 932
    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 936
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static listToWriter(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/DatagramWriter;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)V"
        }
    .end annotation

    .line 915
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 916
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCode()I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static preselectCipherSuites(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 890
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 893
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 897
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 898
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 894
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The preselected cipher-suites must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 891
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The cipher-suites must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 888
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The preselected cipher-suites must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 885
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The cipher-suites must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 1

    .line 65
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
    .locals 1

    .line 65
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    return-object v0
.end method


# virtual methods
.method public getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    return-object v0
.end method

.method public getCipherType()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;
    .locals 1

    .line 525
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$000(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object v0

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 274
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->code:I

    return v0
.end method

.method public getEncKeyLength()I
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$700(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result v0

    return v0
.end method

.method public getFixedIvLength()I
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$600(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result v0

    return v0
.end method

.method public getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    return-object v0
.end method

.method public getMacKeyLength()I
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getKeyLength()I

    move-result v0

    return v0
.end method

.method public getMacLength()I
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$200(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result v0

    return v0

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getOutputLength()I

    move-result v0

    return v0
.end method

.method public getMacMessageBlockLength()I
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMessageBlockLength()I

    move-result v0

    return v0
.end method

.method public getMacMessageLengthBytes()I
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMessageLengthBytes()I

    move-result v0

    return v0
.end method

.method public getMacName()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCiphertextExpansion()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->maxCipherTextExpansion:I

    return v0
.end method

.method public getMessageDigestName()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMessageDigestName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPseudoRandomFunctionMacName()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->pseudoRandomFunction:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->getMacAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPseudoRandomFunctionMessageDigestName()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->pseudoRandomFunction:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->getMacAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMessageDigestName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordIvLength()I
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I

    move-result v0

    return v0
.end method

.method public getThreadLocalCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$400(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getThreadLocalMac()Ljavax/crypto/Mac;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public getThreadLocalMacMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->pseudoRandomFunction:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->getMacAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public getThreadLocalPseudoRandomFunctionMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->pseudoRandomFunction:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->getMacAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public getTransformation()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$300(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEccBased()Z
    .locals 2

    .line 321
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPskBased()Z
    .locals 2

    .line 312
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->keyExchange:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRecommended()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->recommendedCipherSuite:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->pseudoRandomFunction:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->getMacAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->macAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->access$500(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requiresServerCertificateMessage()Z
    .locals 2

    .line 303
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->certificateKeyAlgorithm:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
