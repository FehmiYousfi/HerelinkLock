.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;
.super Ljava/lang/Enum;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Expanding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3223
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    .line 3218
    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;
    .locals 1

    .line 3218
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;
    .locals 1

    .line 3218
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    return-object v0
.end method


# virtual methods
.method public emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    .line 3232
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->EMPTY:[Ljava/lang/Object;

    array-length v3, v0

    sget-object v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->EMPTY:[Ljava/lang/Object;

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->EMPTY:[Ljava/lang/Object;

    array-length v5, v0

    sget-object v6, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->EMPTY:[Ljava/lang/Object;

    const/4 v2, -0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onFrame(II)V
    .locals 0

    return-void
.end method
