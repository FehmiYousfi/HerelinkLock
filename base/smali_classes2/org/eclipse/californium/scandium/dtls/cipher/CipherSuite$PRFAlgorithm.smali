.class final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PRFAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

.field public static final enum TLS_PRF_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

.field public static final enum TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;


# instance fields
.field private final mac:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1214
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v2, 0x0

    const-string v3, "TLS_PRF_SHA256"

    invoke-direct {v0, v3, v2, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;-><init>(Ljava/lang/String;ILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    .line 1215
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v3, 0x1

    const-string v4, "TLS_PRF_SHA384"

    invoke-direct {v0, v4, v3, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;-><init>(Ljava/lang/String;ILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    .line 1213
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->TLS_PRF_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;",
            ")V"
        }
    .end annotation

    .line 1219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1220
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->mac:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;
    .locals 1

    .line 1213
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;
    .locals 1

    .line 1213
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getMacAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;
    .locals 1

    .line 1224
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$PRFAlgorithm;->mac:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    return-object v0
.end method
