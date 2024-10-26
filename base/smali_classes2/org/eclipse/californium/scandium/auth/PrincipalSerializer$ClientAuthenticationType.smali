.class final enum Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;
.super Ljava/lang/Enum;
.source "PrincipalSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClientAuthenticationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

.field public static final enum ANONYMOUS:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

.field public static final enum CERT:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

.field public static final enum PSK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

.field public static final enum RPK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;


# instance fields
.field private code:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 174
    new-instance v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    const/4 v1, 0x0

    const-string v2, "ANONYMOUS"

    invoke-direct {v0, v2, v1, v1}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->ANONYMOUS:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    .line 175
    new-instance v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    const/4 v2, 0x1

    const-string v3, "CERT"

    invoke-direct {v0, v3, v2, v2}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->CERT:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    .line 176
    new-instance v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    const/4 v3, 0x2

    const-string v4, "PSK"

    invoke-direct {v0, v4, v3, v3}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->PSK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    .line 177
    new-instance v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    const/4 v4, 0x3

    const-string v5, "RPK"

    const/4 v6, -0x1

    invoke-direct {v0, v5, v4, v6}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->RPK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    .line 172
    sget-object v5, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->ANONYMOUS:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    aput-object v5, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->CERT:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->PSK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->RPK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->$VALUES:[Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput-byte p3, p0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->code:B

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;)B
    .locals 0

    .line 172
    iget-byte p0, p0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->code:B

    return p0
.end method

.method static fromCode(B)Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;
    .locals 5

    .line 186
    invoke-static {}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->values()[Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 187
    iget-byte v4, v3, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->code:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ClientAuthenticationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;
    .locals 1

    .line 172
    const-class v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;
    .locals 1

    .line 172
    sget-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->$VALUES:[Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    return-object v0
.end method
