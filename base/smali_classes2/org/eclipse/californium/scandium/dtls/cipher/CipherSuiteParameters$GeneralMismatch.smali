.class public final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;
.super Ljava/lang/Enum;
.source "CipherSuiteParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeneralMismatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

.field public static final enum CIPHER_SUITE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

.field public static final enum EC_FORMAT:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

.field public static final enum EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    const/4 v1, 0x0

    const-string v2, "CIPHER_SUITE"

    const-string v3, "Peers have no common cipher suite."

    invoke-direct {v0, v2, v1, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->CIPHER_SUITE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    .line 51
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    const/4 v2, 0x1

    const-string v3, "EC_FORMAT"

    const-string v4, "Peers have no common ec-point format."

    invoke-direct {v0, v3, v2, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->EC_FORMAT:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    .line 55
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    const/4 v3, 0x2

    const-string v4, "EC_GROUPS"

    const-string v5, "Peers have no common ec-groups."

    invoke-direct {v0, v4, v3, v5}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    .line 42
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->CIPHER_SUITE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    aput-object v4, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->EC_FORMAT:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;
    .locals 1

    .line 42
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;
    .locals 1

    .line 42
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->message:Ljava/lang/String;

    return-object v0
.end method
