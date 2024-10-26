.class public final enum Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;
.super Ljava/lang/Enum;
.source "AlertMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/AlertMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

.field public static final enum FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

.field public static final enum WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;


# instance fields
.field private code:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "WARNING"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    const/4 v3, 0x2

    const-string v4, "FATAL"

    invoke-direct {v0, v4, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    new-array v0, v3, [Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    .line 100
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    aput-object v3, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 107
    iput-byte p1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->code:B

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;)B
    .locals 0

    .line 100
    iget-byte p0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->code:B

    return p0
.end method

.method public static getLevelByCode(I)Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    return-object p0

    .line 124
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;
    .locals 1

    .line 100
    const-class v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;
    .locals 1

    .line 100
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 111
    iget-byte v0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->code:B

    return v0
.end method
