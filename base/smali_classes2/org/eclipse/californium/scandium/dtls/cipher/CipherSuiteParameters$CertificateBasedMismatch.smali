.class public final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;
.super Ljava/lang/Enum;
.source "CipherSuiteParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertificateBasedMismatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

.field public static final enum CERTIFICATE_EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

.field public static final enum CERTIFICATE_PATH_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

.field public static final enum CERTIFICATE_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

.field public static final enum CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

.field public static final enum SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

.field public static final enum SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 78
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    const/4 v1, 0x0

    const-string v2, "SERVER_CERT_TYPE"

    const-string v3, "Peers have no common server certificate type."

    invoke-direct {v0, v2, v1, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    .line 82
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    const/4 v2, 0x1

    const-string v3, "CLIENT_CERT_TYPE"

    const-string v4, "Peers have no common client certificate type."

    invoke-direct {v0, v3, v2, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    .line 86
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    const/4 v3, 0x2

    const-string v4, "SIGNATURE_ALGORITHMS"

    const-string v5, "Peers have no common signature and hash algorithm."

    invoke-direct {v0, v4, v3, v5}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    .line 90
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    const/4 v4, 0x3

    const-string v5, "CERTIFICATE_EC_GROUPS"

    const-string v6, "The peer\'s node certificate uses no common ec-group."

    invoke-direct {v0, v5, v4, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    .line 95
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    const/4 v5, 0x4

    const-string v6, "CERTIFICATE_SIGNATURE_ALGORITHMS"

    const-string v7, "The peer\'s node certificate uses no common signature and hash algorithm."

    invoke-direct {v0, v6, v5, v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    .line 100
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    const/4 v6, 0x5

    const-string v7, "CERTIFICATE_PATH_SIGNATURE_ALGORITHMS"

    const-string v8, "The peer\'s certificate-chain uses no common signature and hash algorithm."

    invoke-direct {v0, v7, v6, v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_PATH_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    .line 73
    sget-object v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    aput-object v7, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_PATH_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    aput-object v1, v0, v6

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;
    .locals 1

    .line 73
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;
    .locals 1

    .line 73
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->message:Ljava/lang/String;

    return-object v0
.end method
