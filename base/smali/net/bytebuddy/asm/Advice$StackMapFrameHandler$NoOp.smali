.class public final enum Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;
.implements Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;",
        "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 964
    new-instance v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    .line 959
    sget-object v2, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 959
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;
    .locals 1

    .line 959
    const-class v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;
    .locals 1

    .line 959
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    return-object v0
.end method


# virtual methods
.method public bindEntry(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
    .locals 0

    return-object p0
.end method

.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
    .locals 0

    return-object p0
.end method

.method public getReaderHint()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V
    .locals 0

    return-void
.end method

.method public injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    return-void
.end method

.method public injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    return-void
.end method

.method public translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
