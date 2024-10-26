.class public final enum Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;
.super Ljava/lang/Enum;
.source "MaxFragmentLengthExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Length"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

.field public static final enum BYTES_1024:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

.field public static final enum BYTES_2048:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

.field public static final enum BYTES_4096:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

.field public static final enum BYTES_512:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;


# instance fields
.field private final code:I

.field private final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 101
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BYTES_512"

    const/16 v4, 0x200

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_512:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    const/4 v3, 0x2

    const-string v4, "BYTES_1024"

    const/16 v5, 0x400

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_1024:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    const/4 v4, 0x3

    const-string v5, "BYTES_2048"

    const/16 v6, 0x800

    invoke-direct {v0, v5, v3, v4, v6}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_2048:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    const/4 v5, 0x4

    const-string v6, "BYTES_4096"

    const/16 v7, 0x1000

    invoke-direct {v0, v6, v4, v5, v7}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_4096:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    new-array v0, v5, [Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    .line 99
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_512:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    aput-object v5, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_1024:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_2048:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_4096:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->code:I

    .line 108
    iput p4, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->length:I

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->code:I

    return p0
.end method

.method public static fromCode(I)Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_4096:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object p0

    .line 138
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_2048:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object p0

    .line 136
    :cond_2
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_1024:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object p0

    .line 134
    :cond_3
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->BYTES_512:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;
    .locals 1

    .line 99
    const-class v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;
    .locals 1

    .line 99
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->code:I

    return v0
.end method

.method public length()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->length:I

    return v0
.end method
