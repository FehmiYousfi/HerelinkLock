.class Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;
.super Ljava/lang/Object;
.source "ReassemblingHandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentRange"
.end annotation


# instance fields
.field private end:I

.field private length:I

.field private offset:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    .line 51
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->length:I

    add-int/2addr p1, p2

    .line 52
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    return-void
.end method

.method synthetic constructor <init>(IILorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;-><init>(II)V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I
    .locals 0

    .line 43
    iget p0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    return p0
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I
    .locals 0

    .line 43
    iget p0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    return p0
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->reduceEnd(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;I)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->skipToOffset(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I
    .locals 0

    .line 43
    iget p0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->length:I

    return p0
.end method

.method static synthetic access$600(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->amendEnd(I)V

    return-void
.end method

.method private amendEnd(I)V
    .locals 1

    .line 77
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    if-ge v0, p1, :cond_0

    .line 78
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    .line 79
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->length:I

    :cond_0
    return-void
.end method

.method private reduceEnd(I)V
    .locals 1

    .line 62
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    if-le v0, p1, :cond_1

    .line 63
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    if-lt p1, v0, :cond_0

    .line 66
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    .line 67
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->length:I

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjusted end before offset!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private skipToOffset(I)I
    .locals 3

    .line 91
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    .line 92
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    if-gt v2, p1, :cond_0

    .line 94
    iput v1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->length:I

    .line 95
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    .line 96
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    goto :goto_0

    :cond_0
    sub-int v1, p1, v0

    .line 99
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    .line 100
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->length:I

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "range[%d:%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
