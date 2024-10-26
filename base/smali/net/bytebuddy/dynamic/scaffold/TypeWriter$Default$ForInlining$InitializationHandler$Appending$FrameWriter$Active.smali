.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;
.super Ljava/lang/Object;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Active"
.end annotation


# instance fields
.field private currentLocalVariableLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 9

    .line 3269
    iget v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->currentLocalVariableLength:I

    if-nez v2, :cond_0

    const/4 v4, 0x3

    .line 3270
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    array-length v5, v0

    sget-object v6, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    array-length v7, v0

    sget-object v8, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-le v2, v0, :cond_1

    const/4 v4, 0x0

    .line 3272
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    array-length v5, v0

    sget-object v6, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    array-length v7, v0

    sget-object v8, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 3274
    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    array-length v4, v0

    sget-object v5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->EMPTY:[Ljava/lang/Object;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 3276
    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->currentLocalVariableLength:I

    return-void
.end method

.method public onFrame(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 3263
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected frame type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3256
    :cond_1
    iget p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->currentLocalVariableLength:I

    sub-int/2addr p1, p2

    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->currentLocalVariableLength:I

    goto :goto_0

    .line 3253
    :cond_2
    iget p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->currentLocalVariableLength:I

    add-int/2addr p1, p2

    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->currentLocalVariableLength:I

    goto :goto_0

    .line 3260
    :cond_3
    iput p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;->currentLocalVariableLength:I

    :cond_4
    :goto_0
    return-void
.end method
