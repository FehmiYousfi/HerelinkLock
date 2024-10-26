.class public Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;
.super Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.source "SignatureAlgorithmsExtension.java"


# static fields
.field private static final HASH_BITS:I = 0x8

.field private static final LIST_LENGTH_BITS:I = 0x10

.field private static final SIGNATURE_ALGORITHM_BITS:I = 0x10

.field private static final SIGNATURE_BITS:I = 0x8


# instance fields
.field private final signatureAndHashAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    .line 54
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->signatureAndHashAlgorithms:Ljava/util/List;

    return-void
.end method

.method public static fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;
    .locals 4

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x10

    .line 99
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 100
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 101
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 102
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v2

    .line 103
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 105
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-direct {v3, v2, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 108
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method protected getExtensionLength()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->signatureAndHashAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSupportedSignatureAndHashAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->signatureAndHashAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    .line 64
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x2

    .line 65
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Signature Algorithms ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->signatureAndHashAlgorithms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " algorithms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->signatureAndHashAlgorithms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Signature and Hash Algorithm: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->signatureAndHashAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    .line 88
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 90
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->signatureAndHashAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 91
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getHash()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$HashAlgorithm;->getCode()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 92
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm$SignatureAlgorithm;->getCode()I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
