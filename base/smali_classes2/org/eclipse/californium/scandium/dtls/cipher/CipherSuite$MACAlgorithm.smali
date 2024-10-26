.class final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MACAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

.field public static final enum HMAC_SHA1:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

.field public static final enum HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

.field public static final enum HMAC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

.field public static final enum HMAC_SHA512:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

.field public static final enum INTRINSIC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

.field public static final enum NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;


# instance fields
.field private final mac:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

.field private final md:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;

.field private final mdName:Ljava/lang/String;

.field private final messageBlockLength:I

.field private final messageLengthBytes:I

.field private final name:Ljava/lang/String;

.field private final outputLength:I

.field private final supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 948
    new-instance v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    sput-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    .line 949
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v10, "INTRINSIC"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    .line 950
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v2, "HMAC_SHA1"

    const/4 v3, 0x2

    const-string v4, "HmacSHA1"

    const-string v5, "SHA-1"

    const/16 v6, 0x14

    const/16 v7, 0x8

    const/16 v8, 0x40

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA1:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    .line 951
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v10, "HMAC_SHA256"

    const/4 v11, 0x3

    const-string v12, "HmacSHA256"

    const-string v13, "SHA-256"

    const/16 v14, 0x20

    const/16 v15, 0x8

    const/16 v16, 0x40

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    .line 952
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v2, "HMAC_SHA384"

    const/4 v3, 0x4

    const-string v4, "HmacSHA384"

    const-string v5, "SHA-384"

    const/16 v6, 0x30

    const/16 v7, 0x10

    const/16 v8, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    .line 953
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const-string v10, "HMAC_SHA512"

    const/4 v11, 0x5

    const-string v12, "HmacSHA512"

    const-string v13, "SHA-512"

    const/16 v14, 0x40

    const/16 v15, 0x10

    const/16 v16, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA512:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    .line 947
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA1:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA256:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA384:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->HMAC_SHA512:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 966
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->name:Ljava/lang/String;

    .line 967
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->mdName:Ljava/lang/String;

    .line 968
    iput p5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->outputLength:I

    .line 969
    iput p6, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->messageLengthBytes:I

    .line 970
    iput p7, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->messageBlockLength:I

    const/4 p1, 0x1

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 972
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->supported:Z

    const/4 p1, 0x0

    .line 973
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->mac:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    .line 974
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->md:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;

    goto :goto_1

    .line 976
    :cond_0
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    invoke-direct {p2, p3}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->mac:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    .line 977
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;

    invoke-direct {p2, p4}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->md:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;

    .line 978
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->mac:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->md:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->supported:Z

    :goto_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;
    .locals 1

    .line 947
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;
    .locals 1

    .line 947
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getKeyLength()I
    .locals 1

    .line 1030
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->outputLength:I

    return v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 1068
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->mac:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;->current()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageBlockLength()I
    .locals 1

    .line 1039
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->messageBlockLength:I

    return v0
.end method

.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    .line 1084
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->md:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMessageDigest;->current()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 1086
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageDigestName()Ljava/lang/String;
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageLengthBytes()I
    .locals 1

    .line 1049
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->messageLengthBytes:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputLength()I
    .locals 1

    .line 1018
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->outputLength:I

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 1059
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$MACAlgorithm;->supported:Z

    return v0
.end method
