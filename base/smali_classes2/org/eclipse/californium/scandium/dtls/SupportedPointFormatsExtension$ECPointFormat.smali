.class public final enum Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;
.super Ljava/lang/Enum;
.source "SupportedPointFormatsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECPointFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

.field public static final enum ANSIX962_COMPRESSED_CHAR2:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

.field public static final enum ANSIX962_COMPRESSED_PRIME:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

.field public static final enum UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 124
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    const/4 v1, 0x0

    const-string v2, "UNCOMPRESSED"

    invoke-direct {v0, v2, v1, v1}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    const/4 v2, 0x1

    const-string v3, "ANSIX962_COMPRESSED_PRIME"

    invoke-direct {v0, v3, v2, v2}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_PRIME:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    const/4 v3, 0x2

    const-string v4, "ANSIX962_COMPRESSED_CHAR2"

    invoke-direct {v0, v4, v3, v3}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_CHAR2:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    .line 122
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    aput-object v4, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_PRIME:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_CHAR2:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->id:I

    return-void
.end method

.method public static getECPointFormatById(I)Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_CHAR2:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object p0

    .line 155
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_PRIME:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object p0

    .line 153
    :cond_2
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;
    .locals 1

    .line 122
    const-class v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;
    .locals 1

    .line 122
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 138
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->id:I

    const-string v1, ")"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ansiX962_compressed_char2 ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ansiX962_compressed_prime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncompressed ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
