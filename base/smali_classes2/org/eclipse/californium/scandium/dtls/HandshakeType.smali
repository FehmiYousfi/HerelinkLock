.class public final enum Lorg/eclipse/californium/scandium/dtls/HandshakeType;
.super Ljava/lang/Enum;
.source "HandshakeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/HandshakeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum CERTIFICATE_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum CERTIFICATE_VERIFY:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum CLIENT_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum HELLO_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum SERVER_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum SERVER_HELLO_DONE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field public static final enum SERVER_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 25
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v1, 0x0

    const-string v2, "HELLO_REQUEST"

    invoke-direct {v0, v2, v1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 26
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v2, 0x1

    const-string v3, "CLIENT_HELLO"

    invoke-direct {v0, v3, v2, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 27
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v3, 0x2

    const-string v4, "SERVER_HELLO"

    invoke-direct {v0, v4, v3, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 28
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v4, 0x3

    const-string v5, "HELLO_VERIFY_REQUEST"

    invoke-direct {v0, v5, v4, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 29
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/16 v5, 0xb

    const/4 v6, 0x4

    const-string v7, "CERTIFICATE"

    invoke-direct {v0, v7, v6, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 30
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v7, 0x5

    const-string v8, "SERVER_KEY_EXCHANGE"

    const/16 v9, 0xc

    invoke-direct {v0, v8, v7, v9}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 31
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v8, 0x6

    const-string v9, "CERTIFICATE_REQUEST"

    const/16 v10, 0xd

    invoke-direct {v0, v9, v8, v10}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 32
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v9, 0x7

    const-string v10, "SERVER_HELLO_DONE"

    const/16 v11, 0xe

    invoke-direct {v0, v10, v9, v11}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO_DONE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 33
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/16 v10, 0x8

    const-string v11, "CERTIFICATE_VERIFY"

    const/16 v12, 0xf

    invoke-direct {v0, v11, v10, v12}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_VERIFY:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 34
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/16 v11, 0x9

    const-string v12, "CLIENT_KEY_EXCHANGE"

    const/16 v13, 0x10

    invoke-direct {v0, v12, v11, v13}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 35
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/16 v12, 0xa

    const-string v13, "FINISHED"

    const/16 v14, 0x14

    invoke-direct {v0, v13, v12, v14}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    new-array v0, v5, [Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 24
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v5, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO_DONE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_VERIFY:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    aput-object v1, v0, v12

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->code:I

    return-void
.end method

.method public static getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 5

    .line 48
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->values()[Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    iget v4, v3, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 24
    const-class v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 24
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/HandshakeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
