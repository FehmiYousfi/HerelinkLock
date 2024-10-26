.class public Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;
.super Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.source "MaxFragmentLengthExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;
    }
.end annotation


# static fields
.field public static final CODE_BITS:I = 0x8


# instance fields
.field private final fragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;)V
    .locals 1

    .line 39
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->fragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Length must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 83
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result p0

    .line 84
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->fromCode(I)Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;)V

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Peer uses unknown code [%d] in %s extension"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
.end method


# virtual methods
.method protected getExtensionLength()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->fragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 53
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->fragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->fragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->fragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->access$000(Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    return-void
.end method
