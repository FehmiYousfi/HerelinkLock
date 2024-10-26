.class public final enum Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForTypeName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

.field public static final SYMBOL:C = 't'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3049
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    .line 3044
    sget-object v2, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3044
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;
    .locals 1

    .line 3044
    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;
    .locals 1

    .line 3044
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 0

    .line 3058
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
