.class public final enum Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;
.super Ljava/lang/Enum;
.source "ChangeCipherSpecMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CCSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

.field public static final enum CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CHANGE_CIPHER_SPEC"

    invoke-direct {v0, v3, v2, v1}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    new-array v0, v1, [Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    .line 50
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;
    .locals 1

    .line 50
    const-class v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;
    .locals 1

    .line 50
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->code:I

    return v0
.end method
