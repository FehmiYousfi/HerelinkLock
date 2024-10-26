.class public abstract Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;
.super Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.source "CertificateTypeExtension.java"


# static fields
.field public static final DEFAULT_X509:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field protected static final EXTENSION_TYPE_BITS:I = 0x8

.field protected static final LIST_FIELD_LENGTH_BITS:I = 0x8

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field protected final certificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field private final isClientExtension:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->LOG:Lorg/slf4j/Logger;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->EMPTY:Ljava/util/List;

    .line 57
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->asList(Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->DEFAULT_X509:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    if-eqz p2, :cond_1

    .line 150
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension:Z

    .line 154
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "certificate types data must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "certificate types must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 7

    .line 88
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    if-eqz p2, :cond_9

    .line 91
    invoke-virtual {p2}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 96
    invoke-virtual {p2}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension:Z

    .line 98
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension:Z

    const-string v1, "client"

    const-string v2, "server"

    if-eqz p1, :cond_5

    .line 101
    invoke-virtual {p2, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result p1

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p1

    .line 104
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 105
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result p2

    .line 106
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getTypeFromCode(I)Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_1
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v5

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v5, v6}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v6, "Client indicated preference for unknown {} certificate type code [{}]"

    invoke-interface {v4, v6, v5, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 116
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 117
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empyt client certificate types!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_5
    invoke-virtual {p2, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result p1

    .line 123
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getTypeFromCode(I)Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 125
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->asList(Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;

    move-result-object v3

    .line 134
    :goto_3
    invoke-static {v3}, Lorg/eclipse/californium/scandium/util/ListUtils;->init(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    return-void

    .line 129
    :cond_6
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Server selected an unknown {} certificate type code [{}]"

    invoke-interface {p2, v2, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown certificate type code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "extension data must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "extension data must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension:Z

    .line 171
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->asList(Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "certificate type must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static asList(Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public contains(Lorg/eclipse/californium/scandium/dtls/CertificateType;)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 2

    .line 196
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object v0
.end method

.method public getCertificateTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCommonCertificateTypes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 222
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getExtensionLength()I
    .locals 2

    .line 250
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public isClientExtension()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension:Z

    return v0
.end method

.method public toString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    .line 231
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension()Z

    move-result v2

    const-string v3, " certificate type: "

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " certificate types: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getCertificateTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " types)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    .line 235
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getCertificateTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 3

    .line 262
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->isClientExtension:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 266
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 267
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getCode()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->certificateTypes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->getCode()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    :cond_1
    return-void
.end method
