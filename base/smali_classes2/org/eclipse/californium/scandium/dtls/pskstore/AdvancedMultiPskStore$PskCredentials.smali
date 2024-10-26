.class Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;
.super Ljava/lang/Object;
.source "AdvancedMultiPskStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PskCredentials"
.end annotation


# instance fields
.field private final identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

.field private final key:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    const-string p1, "PSK"

    .line 150
    invoke-static {p2, p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->key:Ljavax/crypto/SecretKey;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[BLorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 0

    .line 143
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 143
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->getKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 143
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->key:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private getKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedMultiPskStore$PskCredentials;->key:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
