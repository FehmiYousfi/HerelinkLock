.class public abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;
.implements Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Appending"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithDrain;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithoutDrain;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;
    }
.end annotation


# instance fields
.field protected final annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

.field protected final frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;

.field protected final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field protected localVariableLength:I

.field protected final record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

.field protected stackSize:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V
    .locals 1

    const/high16 v0, 0x50000

    .line 3030
    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 3031
    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3032
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    .line 3033
    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    if-nez p5, :cond_0

    .line 3035
    sget-object p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$NoOp;

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 3037
    sget-object p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Expanding;

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;

    goto :goto_0

    .line 3039
    :cond_1
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;

    invoke-direct {p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter$Active;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;

    :goto_0
    return-void
.end method

.method protected static of(ZLnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler;
    .locals 0

    if-eqz p0, :cond_0

    .line 3063
    invoke-static/range {p1 .. p6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->withDrain(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithDrain;

    move-result-object p0

    goto :goto_0

    .line 3064
    :cond_0
    invoke-static/range {p1 .. p6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->withoutDrain(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithoutDrain;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static withDrain(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithDrain;
    .locals 8

    .line 3084
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {p2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v4

    .line 3085
    invoke-interface {v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isImplemented()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithDrain$WithActiveRecord;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithDrain$WithActiveRecord;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithDrain$WithoutActiveRecord;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithDrain$WithoutActiveRecord;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V

    :goto_0
    return-object p2
.end method

.method private static withoutDrain(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithoutDrain;
    .locals 8

    .line 3107
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {p2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v4

    .line 3108
    invoke-interface {v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isImplemented()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithoutDrain$WithoutActiveRecord;

    invoke-direct {p2, p0, p1, v4, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$WithoutDrain$WithoutActiveRecord;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    :goto_0
    return-object p2
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 2

    .line 3149
    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {p2, p1, p3, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    .line 3150
    iget p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->stackSize:I

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->stackSize:I

    .line 3151
    iget p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->localVariableLength:I

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->localVariableLength:I

    .line 3152
    invoke-virtual {p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->onComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V

    return-void
.end method

.method public complete(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V
    .locals 1

    .line 3164
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {p2, p0, p1, v0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->drain(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 3165
    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->stackSize:I

    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->localVariableLength:I

    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 3166
    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method protected abstract onComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V
.end method

.method protected abstract onEnd()V
.end method

.method protected abstract onStart()V
.end method

.method public visitCode()V
    .locals 3

    .line 3115
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyAttributes(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 3116
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 3117
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->onStart()V

    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 3139
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->onEnd()V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0

    .line 3127
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 3128
    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;

    invoke-interface {p3, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending$FrameWriter;->onFrame(II)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 0

    .line 3133
    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->stackSize:I

    .line 3134
    iput p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$InitializationHandler$Appending;->localVariableLength:I

    return-void
.end method
