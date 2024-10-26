.class final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CipherSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_128_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_128_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_256_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum AES_256_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

.field public static final enum NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;


# instance fields
.field private final cipher:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

.field private final fixedIvLength:I

.field private final keyLength:I

.field private final macLength:I

.field private final recordIvLength:I

.field private final supported:Z

.field private final transformation:Ljava/lang/String;

.field private final type:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1097
    new-instance v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const-string v3, "NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;III)V

    sput-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1098
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->BLOCK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v10, "AES_128_CBC"

    const/4 v11, 0x1

    const-string v12, "AES/CBC/NoPadding"

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x10

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1099
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->BLOCK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v2, "AES_256_CBC"

    const/4 v3, 0x2

    const-string v4, "AES/CBC/NoPadding"

    const/16 v6, 0x20

    const/16 v8, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1100
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v13, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v10, "AES_128_CCM_8"

    const/4 v11, 0x3

    const-string v12, "AES/CCM/NoPadding"

    const/4 v15, 0x4

    const/16 v16, 0x8

    const/16 v17, 0x8

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1101
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v2, "AES_256_CCM_8"

    const/4 v3, 0x4

    const-string v4, "AES/CCM/NoPadding"

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/16 v9, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1102
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v11, "AES_128_CCM"

    const/4 v12, 0x5

    const-string v13, "AES/CCM/NoPadding"

    const/16 v15, 0x10

    const/16 v16, 0x4

    const/16 v18, 0x10

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1103
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v2, "AES_256_CCM"

    const/4 v3, 0x6

    const-string v4, "AES/CCM/NoPadding"

    const/16 v9, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1104
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v14, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v11, "AES_128_GCM"

    const/4 v12, 0x7

    const-string v13, "AES/GCM/NoPadding"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1105
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const-string v2, "AES_256_GCM"

    const/16 v3, 0x8

    const-string v4, "AES/GCM/NoPadding"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    .line 1094
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CBC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM_8:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_CCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_128_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->AES_256_GCM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;",
            "III)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 1122
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;",
            "IIII)V"
        }
    .end annotation

    .line 1126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1127
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->transformation:Ljava/lang/String;

    .line 1128
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->type:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    .line 1129
    iput p5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->keyLength:I

    .line 1130
    iput p6, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->fixedIvLength:I

    .line 1131
    iput p7, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->recordIvLength:I

    .line 1132
    iput p8, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->macLength:I

    .line 1134
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    if-eq p4, p1, :cond_1

    sget-object p1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->BLOCK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    .line 1135
    :cond_1
    :goto_0
    invoke-static {p3, p5}, Lorg/eclipse/californium/scandium/dtls/cipher/AeadBlockCipher;->isSupported(Ljava/lang/String;I)Z

    move-result p1

    :goto_1
    const-string p2, "AES/CCM/NoPadding"

    .line 1137
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 1138
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    .line 1139
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->supported:Z

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 1141
    new-instance p4, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    invoke-direct {p4, p3}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;-><init>(Ljava/lang/String;)V

    :cond_3
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    .line 1142
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;->isSupported()Z

    move-result p1

    :goto_2
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->supported:Z

    :goto_3
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->getType()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->getRecordIvLength()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->getMacLength()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Ljava/lang/String;
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->getTransformation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Ljavax/crypto/Cipher;
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)Z
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->isSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->getFixedIvLength()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;)I
    .locals 0

    .line 1094
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->getKeyLength()I

    move-result p0

    return p0
.end method

.method private getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 1201
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->cipher:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;->current()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    :goto_0
    return-object v0
.end method

.method private getFixedIvLength()I
    .locals 1

    .line 1170
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->fixedIvLength:I

    return v0
.end method

.method private getKeyLength()I
    .locals 1

    .line 1166
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->keyLength:I

    return v0
.end method

.method private getMacLength()I
    .locals 1

    .line 1187
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->macLength:I

    return v0
.end method

.method private getRecordIvLength()I
    .locals 1

    .line 1183
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->recordIvLength:I

    return v0
.end method

.method private getTransformation()Ljava/lang/String;
    .locals 1

    .line 1158
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method private getType()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;
    .locals 1

    .line 1162
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->type:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    return-object v0
.end method

.method private isSupported()Z
    .locals 1

    .line 1191
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->supported:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;
    .locals 1

    .line 1094
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;
    .locals 1

    .line 1094
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherSpec;

    return-object v0
.end method
