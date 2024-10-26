.class public final Lorg/eclipse/californium/scandium/util/ServerNames;
.super Ljava/lang/Object;
.source "ServerNames.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/eclipse/californium/scandium/util/ServerName;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIST_LENGTH_BITS:I = 0x10

.field public static final NAME_LENGTH_BITS:I = 0x10


# instance fields
.field private final names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/californium/scandium/util/ServerName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/util/ServerName;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/util/ServerNames;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/util/ServerNames;->add(Lorg/eclipse/californium/scandium/util/ServerName;)Lorg/eclipse/californium/scandium/util/ServerNames;

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newInstance()Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 1

    .line 53
    new-instance v0, Lorg/eclipse/californium/scandium/util/ServerNames;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/util/ServerNames;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 3

    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Lorg/eclipse/californium/scandium/util/ServerNames;

    sget-object v1, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    sget-object v2, Lorg/eclipse/californium/scandium/util/ServerName;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {v1, p0}, Lorg/eclipse/californium/scandium/util/ServerName;->from(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/util/ServerNames;-><init>(Lorg/eclipse/californium/scandium/util/ServerName;)V

    return-object v0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "host name must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newInstance(Lorg/eclipse/californium/scandium/util/ServerName;)Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 1

    if-eqz p0, :cond_0

    .line 66
    new-instance v0, Lorg/eclipse/californium/scandium/util/ServerNames;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/util/ServerNames;-><init>(Lorg/eclipse/californium/scandium/util/ServerName;)V

    return-object v0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "server name must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lorg/eclipse/californium/scandium/util/ServerName;)Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/util/ServerName;->getType()Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerName(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "there is already a name of the given type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "server name must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decode(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 4

    const/16 v0, 0x10

    .line 166
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 167
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p1

    .line 168
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v1

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->fromCode(B)Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    move-result-object v1

    .line 170
    sget-object v2, Lorg/eclipse/californium/scandium/util/ServerNames$1;->$SwitchMap$org$eclipse$californium$scandium$util$ServerName$NameType:[I

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 172
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v2

    .line 173
    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/util/ServerName;->from(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/californium/scandium/util/ServerNames;->add(Lorg/eclipse/californium/scandium/util/ServerName;)Lorg/eclipse/californium/scandium/util/ServerNames;

    goto :goto_0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v1, "ServerNames: unknown name_type!"

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-void
.end method

.method public encode(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerNamesLength()I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 159
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/util/ServerName;

    .line 160
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/util/ServerName;->getType()Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->getCode()B

    move-result v3

    invoke-virtual {p1, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 161
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/util/ServerName;->getName()[B

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 237
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/util/ServerNames;

    .line 238
    iget-object v1, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p1, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    .line 241
    :cond_3
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)[B
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerName(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/util/ServerName;->getName()[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLength()I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerNamesLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getServerName(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)Lorg/eclipse/californium/scandium/util/ServerName;
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/util/ServerName;

    .line 191
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/util/ServerName;->getType()Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getServerNamesLength()I
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/util/ServerName;

    add-int/lit8 v1, v1, 0x3

    .line 130
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/util/ServerName;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/util/ServerName;

    mul-int/lit8 v1, v1, 0x1f

    .line 224
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/util/ServerName;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/californium/scandium/util/ServerName;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerNames;->names:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/util/ServerNames;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 205
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Server Names["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/util/ServerNames;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " entries"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/util/ServerNames;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/util/ServerName;

    const-string v2, ", \'"

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/util/ServerName;->getNameAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/util/ServerName;->getType()Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "]"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
