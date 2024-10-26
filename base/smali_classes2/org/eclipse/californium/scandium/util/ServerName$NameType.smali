.class public final enum Lorg/eclipse/californium/scandium/util/ServerName$NameType;
.super Ljava/lang/Enum;
.source "ServerName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/util/ServerName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/util/ServerName$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/util/ServerName$NameType;

.field public static final enum HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

.field public static final enum UNDEFINED:Lorg/eclipse/californium/scandium/util/ServerName$NameType;


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 165
    new-instance v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    const/4 v1, 0x0

    const-string v2, "HOST_NAME"

    invoke-direct {v0, v2, v1, v1}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    .line 169
    new-instance v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    const/4 v2, 0x1

    const-string v3, "UNDEFINED"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->UNDEFINED:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    .line 160
    sget-object v3, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    aput-object v3, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->UNDEFINED:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->$VALUES:[Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 174
    iput-byte p3, p0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->code:B

    return-void
.end method

.method public static fromCode(B)Lorg/eclipse/californium/scandium/util/ServerName$NameType;
    .locals 5

    .line 193
    invoke-static {}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->values()[Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 194
    iget-byte v4, v3, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->code:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->UNDEFINED:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName$NameType;
    .locals 1

    .line 160
    const-class v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/util/ServerName$NameType;
    .locals 1

    .line 160
    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->$VALUES:[Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/util/ServerName$NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 183
    iget-byte v0, p0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->code:B

    return v0
.end method
