.class public final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyExchangeAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum DHE_DSS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum DHE_RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum DH_ANON:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum DH_DSS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum DH_RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

.field public static final enum RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1210
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v1, 0x0

    const-string v2, "NULL"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v2, 0x1

    const-string v3, "DHE_DSS"

    invoke-direct {v0, v3, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DHE_DSS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v3, 0x2

    const-string v4, "DHE_RSA"

    invoke-direct {v0, v4, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DHE_RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v4, 0x3

    const-string v5, "DH_ANON"

    invoke-direct {v0, v5, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DH_ANON:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v5, 0x4

    const-string v6, "RSA"

    invoke-direct {v0, v6, v5}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v6, 0x5

    const-string v7, "DH_DSS"

    invoke-direct {v0, v7, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DH_DSS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v7, 0x6

    const-string v8, "DH_RSA"

    invoke-direct {v0, v8, v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DH_RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v8, 0x7

    const-string v9, "PSK"

    invoke-direct {v0, v9, v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/16 v9, 0x8

    const-string v10, "ECDHE_PSK"

    invoke-direct {v0, v10, v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/16 v10, 0x9

    const-string v11, "EC_DIFFIE_HELLMAN"

    invoke-direct {v0, v11, v10}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    .line 1209
    sget-object v11, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v11, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DHE_DSS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DHE_RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DH_ANON:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DH_DSS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->DH_RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v9

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v1, v0, v10

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;
    .locals 1

    .line 1209
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;
    .locals 1

    .line 1209
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    return-object v0
.end method
