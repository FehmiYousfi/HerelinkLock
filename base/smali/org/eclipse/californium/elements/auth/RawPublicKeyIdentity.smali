.class public Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;
.super Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;
.source "RawPublicKeyIdentity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal<",
        "Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_64_ENCODING_OPTIONS:I = 0x51


# instance fields
.field private niUri:Ljava/lang/String;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>(Ljava/security/PublicKey;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-void
.end method

.method private constructor <init>(Ljava/security/PublicKey;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p2}, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;-><init>(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    .line 66
    iget-object p1, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->createNamedInformationUri([B)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Public key must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0, v0}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>([BLjava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>([BLjava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-void
.end method

.method private constructor <init>([BLjava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p3}, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;-><init>(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    if-eqz p1, :cond_4

    .line 118
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readSubjectPublicKeyAlgorithm([B)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-static {p3, p2}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->equalKeyAlgorithmSynonyms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "Provided key algorithm %s doesn\'t match %s!"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p3, :cond_3

    :goto_0
    move-object p2, p3

    .line 134
    :goto_1
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 136
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->createNamedInformationUri([B)V

    return-void

    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 132
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Key algorithm could not be determined!"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 120
    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 114
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "SubjectPublicKeyInfo must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createNamedInformationUri([B)V
    .locals 2

    :try_start_0
    const-string v0, "SHA-256"

    .line 154
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 156
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 v0, 0x51

    .line 157
    invoke-static {p1, v0}, Lorg/eclipse/californium/elements/util/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ni:///sha-256;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->niUri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public bridge synthetic amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Ljava/security/Principal;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    move-result-object p1

    return-object p1
.end method

.method public amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;
    .locals 2

    .line 149
    new-instance v0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    iget-object v1, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>(Ljava/security/PublicKey;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 233
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 236
    :cond_2
    check-cast p1, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    .line 237
    iget-object v2, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    if-nez v2, :cond_4

    .line 238
    iget-object p1, p1, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 240
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->getSubjectInfo()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->getSubjectInfo()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final getKey()Ljava/security/PublicKey;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->niUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectInfo()[B
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->getSubjectInfo()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RawPublicKey Identity ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->niUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
