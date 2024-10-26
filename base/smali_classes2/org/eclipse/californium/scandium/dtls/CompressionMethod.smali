.class public final enum Lorg/eclipse/californium/scandium/dtls/CompressionMethod;
.super Ljava/lang/Enum;
.source "CompressionMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/CompressionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

.field public static final COMPRESSION_METHOD_BITS:I = 0x8

.field public static final enum DEFLATE:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final enum NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    const/4 v1, 0x0

    const-string v2, "NULL"

    invoke-direct {v0, v2, v1, v1}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 42
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    const/4 v2, 0x1

    const-string v3, "DEFLATE"

    invoke-direct {v0, v3, v2, v2}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->DEFLATE:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 40
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    aput-object v3, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->DEFLATE:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 46
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->code:I

    return-void
.end method

.method public static getMethodByCode(I)Lorg/eclipse/californium/scandium/dtls/CompressionMethod;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 66
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Unknown compression method code: {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->DEFLATE:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-object p0

    .line 61
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-object p0
.end method

.method public static listFromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/DatagramReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CompressionMethod;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 95
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 96
    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->getMethodByCode(I)Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static listToWriter(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/DatagramWriter;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CompressionMethod;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    .line 80
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->getCode()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/CompressionMethod;
    .locals 1

    .line 40
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/CompressionMethod;
    .locals 1

    .line 40
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->code:I

    return v0
.end method
