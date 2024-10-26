.class public Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;
.super Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.source "SupportedPointFormatsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;
    }
.end annotation


# static fields
.field public static final DEFAULT_POINT_FORMATS_EXTENSION:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

.field private static final EC_POINT_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_LENGTH_BITS:I = 0x8

.field private static final POINT_FORMAT_BITS:I = 0x8


# instance fields
.field private final ecPointFormatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->EC_POINT_FORMATS:Ljava/util/List;

    .line 51
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->EC_POINT_FORMATS:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;-><init>(Ljava/util/List;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->DEFAULT_POINT_FORMATS_EXTENSION:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;",
            ">;)V"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EC_POINT_FORMATS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    .line 62
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->ecPointFormatList:Ljava/util/List;

    return-void
.end method

.method public static fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;
    .locals 3

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    .line 103
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v2

    .line 104
    invoke-virtual {p0, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v2

    invoke-static {v2}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->getECPointFormatById(I)Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 112
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->DEFAULT_POINT_FORMATS_EXTENSION:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    return-object p0

    .line 114
    :cond_2
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public contains(Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->ecPointFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getExtensionLength()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->ecPointFormatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    .line 72
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x2

    .line 73
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Elliptic Curves Point Formats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->ecPointFormatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " formats):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->ecPointFormatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "EC point format: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->ecPointFormatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 95
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->ecPointFormatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    .line 96
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->getId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
