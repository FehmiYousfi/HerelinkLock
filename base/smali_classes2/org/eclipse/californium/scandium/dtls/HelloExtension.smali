.class public abstract Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.super Ljava/lang/Object;
.source "HelloExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
    }
.end annotation


# static fields
.field public static final LENGTH_BITS:I = 0x10

.field protected static final LOGGER:Lorg/slf4j/Logger;

.field public static final TYPE_BITS:I = 0x10


# instance fields
.field private final type:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->type:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "extension type must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readFrom(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 165
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 166
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    .line 167
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 168
    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getExtensionTypeById(I)Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HelloExtension$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HelloExtension$ExtensionType:[I

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 204
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->access$000(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v2

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    if-ne v2, v3, :cond_0

    .line 205
    invoke-static {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_0
    invoke-static {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_2
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_4
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_5
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_6
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_7
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_8
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_9
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;->fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytesLeft()[B

    move-result-object p0

    .line 213
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p0

    const-string p0, "Too many bytes, %d left, hello extension not completely parsed! hello extension type %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->close()V

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract getExtensionLength()I
.end method

.method public getLength()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getExtensionLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method final getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->type:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Extension: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->type:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->type:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getExtensionLength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getId()I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 137
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getExtensionLength()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 138
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    return-void
.end method
