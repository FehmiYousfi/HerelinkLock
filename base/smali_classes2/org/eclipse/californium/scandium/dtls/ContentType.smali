.class public final enum Lorg/eclipse/californium/scandium/dtls/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/ContentType;

.field public static final enum ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

.field public static final enum APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

.field public static final enum CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

.field public static final enum HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

.field public static final enum TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v1, 0x0

    const-string v2, "CHANGE_CIPHER_SPEC"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v1, v3}, Lorg/eclipse/californium/scandium/dtls/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v2, 0x1

    const-string v3, "ALERT"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v2, v4}, Lorg/eclipse/californium/scandium/dtls/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v3, 0x2

    const-string v4, "HANDSHAKE"

    const/16 v5, 0x16

    invoke-direct {v0, v4, v3, v5}, Lorg/eclipse/californium/scandium/dtls/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v4, 0x3

    const-string v5, "APPLICATION_DATA"

    const/16 v6, 0x17

    invoke-direct {v0, v5, v4, v6}, Lorg/eclipse/californium/scandium/dtls/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v5, 0x4

    const-string v6, "TLS12_CID"

    const/16 v7, 0x19

    invoke-direct {v0, v6, v5, v7}, Lorg/eclipse/californium/scandium/dtls/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/ContentType;

    .line 25
    sget-object v6, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    aput-object v6, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->code:I

    return-void
.end method

.method public static getTypeByValue(I)Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 61
    :pswitch_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object p0

    .line 57
    :pswitch_2
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object p0

    .line 55
    :pswitch_3
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object p0

    .line 53
    :pswitch_4
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object p0

    .line 51
    :pswitch_5
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 25
    const-class v0, Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 25
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ContentType;->code:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown Content Type"

    return-object v0

    :pswitch_1
    const-string v0, "TLS CID (25)"

    return-object v0

    :pswitch_2
    const-string v0, "Application Data (23)"

    return-object v0

    :pswitch_3
    const-string v0, "Handshake (22)"

    return-object v0

    :pswitch_4
    const-string v0, "Alert (21)"

    return-object v0

    :pswitch_5
    const-string v0, "Change Cipher Spec (20)"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
