.class public final enum Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;",
        "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 679
    new-instance v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    .line 674
    sget-object v2, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 674
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;
    .locals 1

    .line 674
    const-class v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;
    .locals 1

    .line 674
    sget-object v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    return-object v0
.end method


# virtual methods
.method public bindEntry(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 0

    return-object p0
.end method

.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 0

    return-object p0
.end method

.method public compoundLocalVariableLength(I)I
    .locals 0

    const/16 p1, 0x7fff

    return p1
.end method

.method public compoundStackSize(I)I
    .locals 0

    const/16 p1, 0x7fff

    return p1
.end method

.method public recordMaxima(II)V
    .locals 0

    return-void
.end method

.method public recordPadding(I)V
    .locals 0

    return-void
.end method

.method public requireLocalVariableLength(I)V
    .locals 0

    return-void
.end method

.method public requireStackSize(I)V
    .locals 0

    return-void
.end method
