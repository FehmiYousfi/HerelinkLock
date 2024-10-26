.class public Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;
.super Ljava/lang/Object;
.source "Asn1DerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/Asn1DerDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# instance fields
.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->privateKey:Ljava/security/PrivateKey;

    .line 1059
    iput-object p2, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method static synthetic access$002(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0

    .line 1031
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->privateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static synthetic access$102(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 0

    .line 1031
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->publicKey:Ljava/security/PublicKey;

    return-object p1
.end method


# virtual methods
.method public add(Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;)V
    .locals 1

    .line 1071
    iget-object v0, p1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->privateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 1072
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->privateKey:Ljava/security/PrivateKey;

    .line 1074
    :cond_0
    iget-object p1, p1, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->publicKey:Ljava/security/PublicKey;

    if-eqz p1, :cond_1

    .line 1075
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->publicKey:Ljava/security/PublicKey;

    :cond_1
    return-void
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1085
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 1103
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->privateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$Keys;->publicKey:Ljava/security/PublicKey;

    return-void
.end method
