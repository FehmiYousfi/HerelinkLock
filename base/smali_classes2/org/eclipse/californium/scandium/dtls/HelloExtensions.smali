.class public final Lorg/eclipse/californium/scandium/dtls/HelloExtensions;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# static fields
.field public static final OVERALL_LENGTH_BITS:I = 0x10


# instance fields
.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/HelloExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HelloExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 235
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;-><init>()V

    .line 236
    invoke-virtual {v0, p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->readFrom(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0
.end method


# virtual methods
.method public addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hello Extension of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/eclipse/californium/scandium/dtls/HelloExtension;",
            ">(",
            "Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    .line 137
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 139
    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getReplacementType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0

    .line 133
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Extension type must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/HelloExtension;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionsLength()I
    .locals 3

    .line 95
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    .line 96
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getLength()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtensionsLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public readFrom(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    .line 204
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    .line 205
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p1

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->readFrom(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v1

    if-nez v1, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    goto :goto_0

    .line 212
    :cond_1
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hello message contains extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " more than once!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 219
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hello message contained malformed extensions, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Extensions Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtensionsLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    add-int/lit8 v3, p1, 0x1

    .line 168
    invoke-virtual {v2, v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtensionsLength()I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 187
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    .line 188
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method
