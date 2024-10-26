.class public final Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;,
        Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTRINSIC_WITH_ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field public static final INTRINSIC_WITH_ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field public static final SHA1_WITH_ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field public static final SHA256_WITH_ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field public static final SHA256_WITH_RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

.field public static final SHA384_WITH_ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;


# instance fields
.field private final hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

.field private final hashAlgorithmCode:I

.field private final jcaName:Ljava/lang/String;

.field private final signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field private final signatureAlgorithmCode:I

.field private final supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->init()V

    .line 327
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->SHA1_WITH_ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 334
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->SHA256_WITH_ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 341
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->SHA384_WITH_ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 348
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->SHA256_WITH_RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 355
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->INTRINSIC_WITH_ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 362
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->INTRINSIC_WITH_ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 370
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->SHA256_WITH_ECDSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->SHA256_WITH_RSA:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->DEFAULT:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hashAlgorithmCode:I

    .line 739
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signatureAlgorithmCode:I

    .line 740
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->getAlgorithmByCode(I)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 741
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->getAlgorithmByCode(I)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    .line 742
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->buildJcaName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->jcaName:Ljava/lang/String;

    .line 743
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->jcaName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->supported:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V
    .locals 0

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 723
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    .line 724
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    .line 725
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->getCode()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hashAlgorithmCode:I

    .line 726
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->getCode()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signatureAlgorithmCode:I

    .line 727
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->buildJcaName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->jcaName:Ljava/lang/String;

    .line 728
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->jcaName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->supported:Z

    return-void

    .line 721
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Signature Algorithm must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 718
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Hash Algorithm must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildJcaName()Ljava/lang/String;
    .locals 3

    .line 747
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    if-eqz v0, :cond_1

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    if-eq v1, v2, :cond_0

    .line 750
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "with"

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ensureSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/security/PublicKey;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 479
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->DEFAULT:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {p0, v0}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    return-void

    :cond_0
    if-eqz p0, :cond_8

    .line 487
    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 491
    :cond_1
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->values()[Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v5, v0, v3

    .line 492
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 494
    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isIntrinsic()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    new-instance v4, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    invoke-direct {v4, v6, v5}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    .line 496
    invoke-virtual {v4, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported(Ljava/security/PublicKey;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 497
    invoke-static {p0, v4}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    return-void

    .line 501
    :cond_2
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->values()[Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v4

    array-length v6, v4

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    .line 502
    sget-object v9, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    if-eq v8, v9, :cond_3

    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->isRecommended()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 503
    new-instance v9, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-direct {v9, v8, v5}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    .line 504
    invoke-virtual {v9, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported(Ljava/security/PublicKey;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 505
    invoke-static {p0, v9}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    return-void

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 514
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " public key is not supported!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 485
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The defaults list must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Public key must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCommonSignatureAlgorithms(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 539
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCompatibleSignatureAlgorithms(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 585
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 586
    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getSignatureAlgorithms(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 446
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 448
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    invoke-static {v0, v2}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_0

    .line 451
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported by JCE!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/security/PublicKey;",
            ")",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 564
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 565
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 562
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Public key must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getThreadLocalSignature(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "UNKNOWN"

    .line 384
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->SIGNATURES:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->get(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    return-object p0
.end method

.method public static isSignedWithSupportedAlgorithm(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")Z"
        }
    .end annotation

    .line 679
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 680
    invoke-static {p1, v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 682
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 683
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->INTRINSIC_WITH_ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 684
    :cond_0
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 685
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->INTRINSIC_WITH_ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    .line 689
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 694
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static isSignedWithSupportedAlgorithms(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 657
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 658
    invoke-static {p0, v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSignedWithSupportedAlgorithm(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportedAlgorithm(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 635
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 636
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedAlgorithm(Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ")Z"
        }
    .end annotation

    .line 611
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 612
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;
    .locals 4

    const-string v0, "with"

    .line 399
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "WITH"

    .line 401
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string v1, " is unknown!"

    if-lez v0, :cond_5

    const/4 v2, 0x0

    .line 406
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x4

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 409
    :try_start_0
    invoke-static {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v3

    .line 413
    :goto_0
    :try_start_1
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    .line 421
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " uses a unknown signature-algorithm!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " uses a unknown hash-algorithm!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_5
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->INTRINSIC:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    .line 426
    :try_start_2
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->intrinsicValueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 431
    :goto_2
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-direct {p0, v2, v3}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;)V

    return-object p0

    .line 428
    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 911
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 914
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 915
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signatureAlgorithmCode:I

    iget v3, p1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signatureAlgorithmCode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hashAlgorithmCode:I

    iget p1, p1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hashAlgorithmCode:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getHash()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    return-object v0
.end method

.method public getJcaName()Ljava/lang/String;
    .locals 1

    .line 797
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->jcaName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    .line 765
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object v0
.end method

.method public getThreadLocalSignature()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;
    .locals 1

    .line 936
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 926
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hashAlgorithmCode:I

    mul-int/lit16 v0, v0, 0x100

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signatureAlgorithmCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isRecommended()Z
    .locals 1

    .line 807
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->isRecommended()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 817
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->supported:Z

    return v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1

    .line 829
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->supported:Z

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSupported(Ljava/security/PublicKey;)Z
    .locals 2

    .line 859
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->supported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getThreadLocalSignature()Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalSignature;->current()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    .line 863
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSupported(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z
    .locals 1

    .line 844
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->supported:Z

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->isSupported(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 881
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->jcaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 884
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hash:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "0x%02x"

    if-eqz v1, :cond_1

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    .line 888
    iget v5, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->hashAlgorithmCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "with"

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signature:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    if-eqz v1, :cond_2

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 894
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->signatureAlgorithmCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
