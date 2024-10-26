.class public abstract enum Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;
.super Ljava/lang/Enum;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "TranslationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

.field public static final enum COPY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

.field public static final enum ENTRY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

.field public static final enum EXIT:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1293
    new-instance v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode$1;

    const/4 v1, 0x0

    const-string v2, "COPY"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->COPY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    .line 1309
    new-instance v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode$2;

    const/4 v2, 0x1

    const-string v3, "ENTRY"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->ENTRY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    .line 1333
    new-instance v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode$3;

    const/4 v3, 0x2

    const-string v4, "EXIT"

    invoke-direct {v0, v4, v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->EXIT:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    .line 1288
    sget-object v4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->COPY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    aput-object v4, v0, v1

    sget-object v1, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->ENTRY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->EXIT:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->$VALUES:[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;
    .locals 1

    .line 1288
    const-class v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;
    .locals 1

    .line 1288
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->$VALUES:[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    return-object v0
.end method


# virtual methods
.method protected abstract copy(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;[Ljava/lang/Object;[Ljava/lang/Object;)I
.end method
