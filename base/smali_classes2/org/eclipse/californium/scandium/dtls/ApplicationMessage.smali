.class public final Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;
.super Ljava/lang/Object;
.source "ApplicationMessage.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/DTLSMessage;


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->data:[B

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "data must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;
    .locals 1

    .line 91
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 53
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->data:[B

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->data:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Application Data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
